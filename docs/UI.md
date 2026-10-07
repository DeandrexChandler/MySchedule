# UI

## What I know so far

- **Feel:** like Apple's native **Reminders** app: familiar, list-based, native controls.
- **The difference:** a much better way to see **time** and **hard deadlines**. Not just "the reminder turns red when it's late".
- **Style:** basic, **with a pop**. "Pop" means **small, useful details most apps skip**: conveniences that keep my attention. Not flashy visuals.
- **Look:** no dark/light modes. The background is a **sky scene**: green ground at the bottom, sky at the top, gradient between. It changes gradually with the time of day and weather.
- **Platform:** iPhone only.

## Sky scene (D18, D19, D20)

The whole app sits on one background: **ground at the bottom, sky at the top**, blended with a gradient. It's the app's only theme. Colors are **pastel, calm, low opacity**; they set the mood and never compete with content.

```
┌─────────────────────┐
│   sky (time/weather)│  ← changes through the day
│         ░░░         │
│     gradient blend  │
│         ▒▒▒         │
│   ground (green)    │  ← always green-ish
└─────────────────────┘
```

Sky colors by time and weather:

| Time / condition | Feel | Sky color direction |
|---|---|---|
| Sunrise / morning | Waking up | Soft orange → pale yellow |
| Midday | Clear, awake | Soft daylight blue |
| Sunset / evening | Winding down | Peach → dusty pink |
| Night | Calm | Muted blue → navy |
| Cloudy / rainy | Overcast | Grey → grey-blue |

Notes:
- The sky **reflects the real day** (midday = soft daylight blue). Green belongs to the **ground**, which **dims at night** along with the sky.
- Offline: last known weather, then plain time-of-day colors.
- Colors **blend gradually** between phases. No sudden jumps.
- Text and cards need to stay readable on every sky, from pale sunrise to navy night.
- Exact colors get picked during design basics in Segment 0.

### More backgrounds (later, D25)
A "Backgrounds" option in Settings. First idea: **city mode**, a soft-toned, blurred skyline in front of the same time-of-day sky. Unique enough to pop, never distracting. Not part of v1.

## Deadlines that are hard to ignore (D17, D22, D23)

### Decided behavior
- Anything I **miss stays pinned to the top of the schedule screen**. It doesn't scroll away: going from an 8am–2pm view to 4pm–12am, it's still there.
- It **overlaps** the schedule, so it's hard to ignore.
- The more I ignore, the more it **stacks up** and takes space from the schedule.
- It re-notifies **at least every 24 hours**, maybe more often.
- Only two ways out: **mark complete** or **move the date**.
- Applies to every **actionable** item (tasks, reminders, due-date lines, start-by lines, to-do blocks). **Informational** items like classes just show on the schedule. They're never marked complete and never "missed" (D27).
- In the stack, every item is **compressed to the same size** (D28).
- The stack **can grow to take over the whole screen** (D28).
- Notifications **speed up** the longer something is ignored, up to **3 a day**, and **pause overnight** (D29, D32, D33).
- Items I **set an alarm on** ring through silent mode (D30, D31).

### Background

Reminders' approach (red text plus one buzz) is easy to ignore. The goal: as a deadline nears or passes, the app **forces a decision: do it, or move it.**

What iOS makes possible (building blocks to choose from, nothing decided):

| Building block | What it does |
|---|---|
| **Actionable notifications** | Buttons right on the notification: "Done", "Move to tomorrow", "Snooze 1h" |
| **Time-sensitive notifications** | Break through Focus modes and stay on the lock screen longer |
| **AlarmKit** (iOS 26) | Full alarm-style alert that rings even on silent or in Focus. The most in-your-face option |
| **Live Activities** | A live countdown on the lock screen (iPhone 11 has no Dynamic Island, but the lock screen works) |
| **In-app triage screen** | When I open the app with overdue items, they're front and center until I decide on each |
| **Visual escalation on the timeline** | The deadline line gets thicker, pulses, or the block before it changes as time runs out |
- **Inspiration sources:** Dribbble and Mobbin (see below).
- The **inbox / set reminder button** sits in the **bottom middle** of the tab bar.
- **Calendar** possibly on the right.
- **Reminders** might not need their own tab. They might live inside the calendar as a different view (1-day or 2-day).
- Classes show as **blocks**. Due dates and soft start times show as **lines** on the timeline.
- Everything else about layout is still open.

## Dribbble and Mobbin

They're useful in different ways:

| Site | What it is | Good for | Watch out for |
|---|---|---|---|
| **Mobbin** | Screenshots of **real, shipped apps**, searchable by screen type and flow | Realistic patterns: how real apps do timelines, quick-add sheets, streak screens, settings | Needs a (free) account; the free plan limits browsing |
| **Dribbble** | Designers' **concept shots** | The "pop": color, type, playful details | Many shots are pretty but impractical or un-native; take ideas, not layouts |

Search terms worth trying:
- Mobbin: "Reminders", "Structured", "Things", "Streaks", "calendar day view", "timeline", "add task sheet", "habit tracker", "settings"
- Dribbble: "sky gradient app", "calendar app", "daily planner iOS", "timeline schedule app", "habit tracker dark", "deadline countdown UI", "todo app minimal"

What to note for each screenshot I like: **what exactly** I like about it (the colors? how time is shown? the button?).

## Inspiration to look at

These are apps worth opening and screenshotting, with the specific idea each one is known for. Nothing here is a decision. It's a reference list for figuring out what I like.

### Calendar and day planning
| App | Known for |
|---|---|
| **Structured** | Vertical timeline of the day; inbox for unscheduled tasks; drag items onto the timeline |
| **Fantastical** | Natural-language entry ("gym tomorrow 6pm"); compact list + calendar combo |
| **Timepage** | Minimal, color-heavy, very calm calendar |
| **Apple Calendar** | Familiar baseline; multi-day views |
| **Notion Calendar / Amie** | Calendar and tasks blended in one view |
| **Tiimo** | Highly visual day timeline, built for staying on track |

### Tasks and capture
| App | Known for |
|---|---|
| **Things 3** | Calm design; "Today" vs "This Evening"; very fast quick-entry |
| **Todoist** | Natural-language quick add; inbox-first workflow |
| **Apple Reminders** | Smart lists, location reminders |

### Planning rituals
| App | Known for |
|---|---|
| **Sunsama** | Guided daily planning ritual, close to my nightly "plan tomorrow" idea |

### Habits and streaks
| App | Known for |
|---|---|
| **Streaks** | Small grid of habits, tap to complete |
| **(Not Boring) Habits** | Playful, satisfying check-ins |
| **Apple Fitness rings** | Weekly progress at a glance |

### Gym logging and subscriptions
| App | Known for |
|---|---|
| **Strong / Hevy** | Fast set/rep logging during a workout |
| **Bobby** | Simple subscription list with renewal dates |

### Platform look
- iOS 26 **Liquid Glass**: translucent tab bars and controls. Using the native components gets this for free.

## Tab bar: open questions

- What do I want to see the moment I open the app?
- Besides inbox (middle) and calendar (right?), what else deserves a tab: trackers, AI, the planning ritual?
- Does the middle button open a full screen, a sheet, or something quick like a text field over the current screen?
- Where do the extras live (quotes, subscriptions, gym log)?

Technical note: the native iOS tab bar doesn't have a built-in "big center action button". A raised center button can be built as a custom tab bar. That trades the automatic Liquid Glass styling for full control. This doesn't need deciding until Segment 1–2.

## How to collect inspiration

Drop screenshots into `docs/inspiration/` (create when needed) with a one-line note on what I like about each. Claude can read images, so these can be referenced directly when designing screens.
