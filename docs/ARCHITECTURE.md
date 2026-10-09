# Architecture

This is the technical approach as currently understood. Anything marked **open** waits on my answers in [OPEN_QUESTIONS.md](OPEN_QUESTIONS.md).

## Current baseline (from the Xcode template)

| Thing | Value |
|---|---|
| UI | SwiftUI |
| Language | Swift (project is set to Swift 5 mode) |
| Minimum OS | iOS / iPadOS / macOS / visionOS 26.5 |
| Platforms targeted | **iPhone only** (D15) |
| Bundle ID | `com.MySchedule` |

## Offline-first

**Everything is stored on the device.** No server, no account.

| Concern | Approach | Needs internet? |
|---|---|---|
| Storage | SwiftData (Apple's on-device database) | No |
| Notifications | Local notifications (`UserNotifications`) scheduled on the device | No |
| Quotes | Bundled in the app | No |
| Predictions | Plain statistics over my own history | No |
| AI | See [AI options](#ai-options) | Depends |
| Sync between devices | **Open.** iCloud sync via CloudKit uses my Apple ID, so there's still no new account | Only to sync. Works offline and catches up later |

### How the app gets onto my phone (important for "available anytime")

**Decided (D8): paid Apple Developer Program.** The app installs on my phone for a year at a time, and TestFlight and iCloud sync are available. (With a free Apple ID it would expire every 7 days.)

### Device support (D9)

- Main device: **iPhone 11** (A13 chip, iOS 26 supported).
- iOS 26 runs on iPhone 11 / SE (2nd gen) and newer, so the current minimum covers my phone and nearly every iPhone still in use.
- "Smooth on most iPhones" means **testing on the iPhone 11 itself**, not just a fast simulator: timeline scrolling, animations, launch time.
- iOS 26's Liquid Glass effects are heavier on older chips. The iPhone 11 is the performance benchmark.

## Sky theme (D18, D19)

| Input | Source | Needs internet? |
|---|---|---|
| Time of day | Device clock | No |
| Sunrise / sunset times | Calculated on-device from the city's coordinates (standard solar formula) | No. City set once in Settings (D21), no location permission |
| Weather (cloudy / rain) | WeatherKit (included with the developer program) | **Yes.** Cache the last forecast; fall back to time-of-day colors when offline |

The background is one view: a sky gradient on top blending into green ground at the bottom (D20). Sky colors interpolate between phases as time passes. There are no dark/light modes, so text and controls must pick contrast against the current sky. Keep it cheap on iPhone 11: plain gradients redrawn every few minutes, not a constantly animating scene.

## Deadline escalation (D17)

Decided (D22, D23): missed items pin to the top of the schedule screen as a growing stack until completed or rescheduled, and re-notify at least every 24h. In SwiftUI the stack is an overlay pinned above the scrolling timeline. Repeating notifications count against the 64-pending limit, so many missed items may need to share one notification.

**Escalating reminders (D29)** work with plain local notifications:
1. When something becomes missed, schedule a **series of one-time notifications** that gets denser over time: 1 a day, then 2 a day, then **3 a day max** (D33).
2. **No notifications overnight** (D32). The series skips quiet hours and picks back up in the morning.
3. At 3 a day, the series continues as **daily repeating** notifications at three fixed times, so it never stops even if I never open the app.
4. Every time the app opens or an item changes, **cancel and rebuild** the schedule. One combined "N things missed" series covers all missed items, which keeps it far under the 64 limit.
5. Completing or moving the last missed item cancels everything.
6. **Ping timing (D35, D36):** quiet hours are 1–7 AM. Pings go into free gaps longer than the missed item's duration (over 1 hour if it has none). If there are fewer than 3 such gaps, the gaps that exist are used and the rest are filled with whichever of 11 AM / 5 PM / 10 PM are furthest from them (D46). Since the schedule is known ahead of time, the gaps get computed when the series is rebuilt. Any schedule edit triggers a rebuild.
7. Items **I've set an alarm on** (D31) also get an **AlarmKit** alarm, which rings through silent mode and Focus (D30). It needs a one-time permission prompt.

Other building blocks: actionable notifications ("Done" / "Move" / "Snooze"), time-sensitive interruption level (needs the Time Sensitive Notifications capability), optionally **AlarmKit** (iOS 26) for the hardest cases, Live Activities for countdowns, and an in-app triage screen for overdue items. All of these are local and work offline. The escalation steps themselves are an open question.

## Importing from Apple Calendar (D55)

EventKit reads Apple Calendar on the device (offline) after a one-time calendar permission prompt. Flow: pick which calendars and events → **review screen** (rename, set category and color, confirm semester end) → saved as MySchedule recurring series. Recurrence rules come across from Apple Calendar. The same access can later read the **Birthdays** calendar (D41).

## Importing .ics (D37)

iOS has no built-in .ics parser that hands back events without adding them to Apple Calendar. A small parser for what class schedules use (`VEVENT`, `DTSTART`/`DTEND`, `RRULE` weekly with `UNTIL`, `SUMMARY`, `LOCATION`) is enough. Flow: pick file (Files app / share sheet) → parse → **review screen** (edit, uncheck, set colors and semester end) → confirm → saved as recurring series. Works offline. The same parser could later handle subscribed calendar links (e.g. a work schedule), which need internet only to refresh.

## Data model (first sketch, will change)

| Model | Purpose |
|---|---|
| `Item` | Anything on the schedule or in the inbox. **Missed** when (D52): deadline passes; else start time passes; for an actionable block, when it ends incomplete. Has a **kind**: `block` (start + end), `assignment` (planned start time + real **deadline**, done when finished, D44, D45), `task` (no time), `reminder`. Optional **custom reminders** list. Belongs to a **category** (default color, D47). Has a **role**: `informational` or `actionable` (default per kind, overridable, D34). Optional **color** and **alarm** flag |
| `Recurrence` | Repeat rules (e.g. Mon/Wed/Fri 9:00–9:50) with an **end date**. Past occurrences are kept (D38) |
| `Tracker` | Something I track: type (`streak`, `daysSince`, `weeklyCount`), optional weekly target |
| `TrackerEntry` | One check-in for a tracker, on a date. Weekly totals and history are computed from entries, so nothing is ever reset (D51) |
| `DayPlan` | Whether a given day was "planned", and when |
| `ActivityStats` | Learned duration and time-of-day patterns per activity name |
| Later: `Subscription`, `GymLogEntry`, `Quote` | |

## Planning loop: notification strategy

iOS doesn't reliably let apps wake up at an exact time to check something. So the logic works backwards:

1. Every night at **planning time** (open), a "Plan tomorrow" notification fires.
2. A **morning follow-up** notification is *also scheduled in advance* for tomorrow morning.
3. When I finish planning (definition is **open**), the app **cancels** the morning follow-up.
4. If I never plan, the follow-up was never cancelled, so it fires.

This works completely offline and doesn't depend on background execution.

Limit to remember: iOS keeps at most **64 pending local notifications** per app. Recurring reminders have to be scheduled on a rolling basis.

## Smart defaults without AI

When I type an activity name (e.g. "gym"):

1. **Normalize** the name ("Gym", "gym session", "lift" might map to one activity; **open:** how much fuzzy matching).
2. **Duration** = median of my past durations for that activity, so it isn't skewed by one odd day.
3. **Time of day** = most common start window *for that weekday*, falling back to all days if there isn't enough data.
4. Only suggest once there's enough history (e.g. 3+ occurrences). Before that, ask.
5. My edits feed back in automatically. Recent history counts more than old history.

None of this needs AI or internet.

## Gaps and filler tasks (rule-based first)

1. Free time = waking hours (**open**) minus blocks, minus buffers.
2. A gap qualifies if it's at least N minutes (**open**).
3. Suggest from a **filler list**: tasks with an estimated duration that fits, plus context tags (**open**: location, energy level, tools needed).
4. Trackers below their weekly target get priority (e.g. Bible reading at 1/5 this week).

## AI options

What the AI *does* is an open question. *Where it runs* has real tradeoffs:

| Option | Offline? | Cost | Notes |
|---|---|---|---|
| **Apple on-device model** (Foundation Models framework, iOS 26) | ✅ Works offline | Free | **Not available on my iPhone 11 (D14).** Needs iPhone 15 Pro or newer with Apple Intelligence. Could light up automatically if I upgrade |
| **Cloud model with my own API key** (e.g. Claude) | ❌ Needs internet | Pay per use, no subscription | The realistic option on iPhone 11. Much more capable; my data goes to the provider when I use it |
| **Both** | Partial | — | Cloud now; on-device as a bonus on newer phones |

**Still open:** which provider, how the API key is stored (Keychain, never in the repo), and what the AI actually does.

Whatever runs, the AI reads my local data (schedule, trackers, history). It never becomes the source of truth.

## Suggested folder structure (for Segment 0)

```
MySchedule/
  App/            app entry, root tab view
  Models/         SwiftData models
  Features/
    Calendar/
    Inbox/
    Planning/
    Trackers/
    ...
  Services/       notifications, predictions, AI
  DesignSystem/   colors, fonts, reusable components
  Resources/      quotes, assets
```
