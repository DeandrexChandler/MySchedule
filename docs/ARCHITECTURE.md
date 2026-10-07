# Architecture

This is the technical approach as currently understood. Anything marked **open** waits on my answers in [OPEN_QUESTIONS.md](OPEN_QUESTIONS.md).

## Current baseline (from the Xcode template)

| Thing | Value |
|---|---|
| UI | SwiftUI |
| Language | Swift (project is set to Swift 5 mode) |
| Minimum OS | iOS / iPadOS / macOS / visionOS 26.5 |
| Platforms targeted | iPhone, iPad, Mac, Vision Pro (template default). **iPhone is the focus**; whether to keep the others is open |
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

## Data model (first sketch, will change)

| Model | Purpose |
|---|---|
| `Item` | Anything on the schedule or in the inbox. Has a **kind**: `block` (start + end), `deadline` (a line at a moment), `startBy` (a soft line), `task` (no time), `reminder` |
| `Recurrence` | Repeat rules (e.g. Mon/Wed/Fri 9:00–9:50 until Dec 12) |
| `Tracker` | Something I track: type (`streak`, `daysSince`, `weeklyCount`), optional weekly target |
| `TrackerEntry` | One check-in for a tracker, on a date |
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
