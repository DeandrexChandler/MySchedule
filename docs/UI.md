# UI

## What I know so far

- The **inbox / set reminder button** sits in the **bottom middle** of the tab bar.
- **Calendar** possibly on the right.
- **Reminders** might not need their own tab. They might live inside the calendar as a different view (1-day or 2-day).
- Classes show as **blocks**. Due dates and soft start times show as **lines** on the timeline.
- Everything else about layout is still open.

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
