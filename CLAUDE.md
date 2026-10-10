# MySchedule

Personal iPhone planner for one user: calendar + to-dos + reminders + habit trackers, plus an optional AI assistant. SwiftUI + SwiftData, iOS 26.5+, iPhone only. Main test device: iPhone 11.

## Non-negotiables
- Everything works **offline** except AI (and live weather).
- **No accounts or sign-in.** Data lives on the device.
- Plain logic before AI (predictions, suggestions).
- Feels like Apple's **Reminders** app; native SwiftUI components first.
- Must stay smooth on an **iPhone 11** (A13). Watch heavy effects and animations.

## Asking questions
- Ask **open-ended** questions in plain text. **No multiple choice and no "(Recommended)"** options (don't use AskUserQuestion).
- Ask before building any feature or making a design choice. Explaining technical tradeoffs is fine; the decision is the user's.

## Commands
- Build (quiet output): `scripts/build.sh` (optionally pass a simulator name, e.g. `"iPhone 17e"`)
- Build + install + launch on simulator: `scripts/run.sh`
- Don't run raw `xcodebuild` without filtering. Its output is huge.

## Docs (read only the one you need)
| Need | Read |
|---|---|
| Which segment we're on, branch names | `docs/ROADMAP.md` |
| What's decided | `docs/DECISIONS.md` |
| What still needs asking | `docs/OPEN_QUESTIONS.md` |
| Feature list | `docs/FEATURES.md` |
| Tech approach (offline, notifications, predictions, AI, sky theme) | `docs/ARCHITECTURE.md` |
| Look and feel, sky palette, deadline escalation | `docs/UI.md` |
| Tooling and token habits | `docs/TOOLING.md` |

When a question gets answered: add it to `DECISIONS.md` and remove it from `OPEN_QUESTIONS.md`.

## Git
- Branches: `docs/`, `chore/`, `feature/`, `fix/`. One segment or feature per branch. `main` always builds.
- Commit only what the task changed. Don't push or open PRs unless asked.
