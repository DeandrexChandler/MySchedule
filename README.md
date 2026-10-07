# MySchedule

A personal planner for one person (me). It combines a **calendar**, **to-dos**, **reminders** and **habit trackers**, with an optional **personal AI assistant**.

> Status: **Segment 0, scoping.** Nothing is built yet beyond the Xcode template. See [docs/ROADMAP.md](docs/ROADMAP.md).

## Non-negotiables

1. **Works fully offline.** The only feature allowed to depend on internet is AI.
2. **No accounts, no sign-up.** It opens and works. If it ever ships publicly, users never pay a subscription.
3. **Built for me.** No onboarding for strangers, no growth features.

## What it will do (short version)

It should feel like Apple's **Reminders** app, but show **time and hard deadlines** far better than turning a reminder red. The background is a calm sky-and-ground scene that changes with the time of day and weather.

- Class schedule as **blocks**, plus **lines** for due dates and "start around here" markers
- A quick-capture **inbox** in the bottom-middle of the tab bar
- A **nightly "plan tomorrow" nudge**, with a **morning follow-up** if I skipped it
- **Trackers:** days since, streaks, and weekly counts (gym, BJJ, protein shake, Bible reading)
- **Smart defaults:** type "gym" and it already knows how long it takes and when I usually go, learned without AI where possible
- **Filler tasks** suggested for gaps in my day
- Later: quote of the day, subscription tracker, gym log notes

Full list: [docs/FEATURES.md](docs/FEATURES.md)

## Docs

| Doc | What's in it |
|---|---|
| [VISION.md](docs/VISION.md) | Why this exists, principles |
| [FEATURES.md](docs/FEATURES.md) | Every feature, with the segment it belongs to |
| [ROADMAP.md](docs/ROADMAP.md) | Build segments, in order, plus branch names |
| [ARCHITECTURE.md](docs/ARCHITECTURE.md) | Tech approach, offline strategy, notifications, predictions, AI options |
| [UI.md](docs/UI.md) | UI inspiration and open layout questions |
| [TOOLING.md](docs/TOOLING.md) | Claude Code setup, token optimization, build scripts |
| [OPEN_QUESTIONS.md](docs/OPEN_QUESTIONS.md) | Questions to answer before each segment |
| [DECISIONS.md](docs/DECISIONS.md) | Decisions made so far, and why |

## Running it

Requires Xcode 26.5+.

1. Open `MySchedule.xcodeproj`.
2. Pick an iPhone simulator (e.g. iPhone 17 Pro).
3. Press **⌘R**.

## Branching

- `main` is always buildable.
- One branch per segment or feature: `docs/…`, `chore/…`, `feature/…`, `fix/…`.
- Merge to `main` when a segment works on the simulator.

Details are in [docs/ROADMAP.md](docs/ROADMAP.md#branching).
