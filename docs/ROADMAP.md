# Roadmap

The app is built in **segments**. Each segment:
1. starts by answering its section in [OPEN_QUESTIONS.md](OPEN_QUESTIONS.md),
2. gets its own branch,
3. ends usable on the simulator (and my phone), then merges to `main`.

The order isn't final. Moving segments around is fine.

| # | Segment | Branch | Done when… |
|---|---|---|---|
| 0 | **Scope and setup** | `docs/project-scope`, `chore/foundation` | Docs agreed, tooling set up, folder structure and data layer skeleton in place |
| 1 | **Calendar core** | `feature/calendar` | Classes imported from .ics (or entered once) as weekly blocks until semester end; "start this" items; 1-day / 3-day / week / month views; custom colors on the sky background |
| 2 | **Inbox and tasks** | `feature/inbox-tasks` | Center button captures anything in seconds; to-dos and reminders notify me offline |
| 3 | **Planning loop** | `feature/planning-loop` | Night nudge, "did I plan?" detection, morning follow-up all work |
| 4 | **Trackers** | `feature/trackers` | Days since, streaks, and weekly counts for gym / BJJ / protein / Bible |
| 5 | **Smart defaults** | `feature/smart-defaults` | Typing "gym" pre-fills duration and a suggested time from my history |
| 6 | **Gaps and filler tasks** | `feature/filler-tasks` | App spots free time and suggests realistic filler (rule-based) |
| 7 | **AI assistant** | `feature/ai-assistant` | Personal AI layer on top of my data |
| 8 | **Extras** | `feature/quote-of-day`, `feature/subscriptions`, `feature/gym-log` | Each one shipped independently |
| 9 | **Polish** | various | Widgets, Shortcuts, weather, more backgrounds (city mode), etc. Only what I still want by then |

## Segment 0 checklist

- [x] Vision, features, roadmap, architecture, UI, tooling docs
- [x] Open questions written down
- [ ] Answer the Segment 0 questions (most answered 2026-10-06)
- [ ] Install Ponytail plugin
- [ ] `CLAUDE.md` and Claude Code settings (token optimization)
- [ ] `.gitignore` for Xcode (user data and DerivedData are currently tracked)
- [x] Device setup: paid Apple Developer Program, iPhone 11 as main device
- [ ] Enroll in Apple Developer Program, run app on the iPhone 11
- [ ] Mood board from Dribbble / Mobbin, then pick the "pop"
- [ ] Folder structure and data model skeleton
- [ ] Design basics: colors, fonts, spacing, app icon direction
- [ ] Settings screen with dark (default) / light mode

## Branching

| Prefix | Use |
|---|---|
| `docs/` | Documentation only |
| `chore/` | Setup, tooling, config, refactors with no behavior change |
| `feature/` | New functionality |
| `fix/` | Bug fixes |

Rules:
- `main` must always build and run.
- Branch from `main`; keep branches focused on one segment or feature.
- Commit messages say *what* and *why* in plain words.
- Merge with a PR on GitHub, even solo. The PR description doubles as a changelog.
