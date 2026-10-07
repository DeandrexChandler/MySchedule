# Features

Every feature I've described so far. **Seg** is the segment it's planned for (see [ROADMAP.md](ROADMAP.md)). **Offline** confirms it must work without internet.

## Calendar

| Feature | Seg | Offline | Notes |
|---|---|---|---|
| Time **blocks** (classes, gym, BJJ, anything with start + end) | 1 | ✅ | |
| **Recurring** blocks (class schedule for a semester) | 1 | ✅ | Semester start/end dates? See open questions |
| **Due-date lines**: a line at a moment, not a block | 1 | ✅ | e.g. "Essay due 11:59 PM" |
| **Start-by lines**: "should start around here" with no fixed duration | 1 | ✅ | |
| Day / 2-day / week views | 1 | ✅ | Reminders might live in a calendar view instead of a separate tab |

## Inbox, tasks and reminders

| Feature | Seg | Offline | Notes |
|---|---|---|---|
| Quick-capture **inbox** button in the bottom-middle | 2 | ✅ | |
| To-dos (with or without a date or time) | 2 | ✅ | |
| Reminders with notifications | 2 | ✅ | Local notifications need no internet |
| Moving an inbox item onto the schedule | 2 | ✅ | |

## Planning loop

| Feature | Seg | Offline | Notes |
|---|---|---|---|
| Nightly "plan tomorrow" notification | 3 | ✅ | |
| Detecting whether tomorrow got planned | 3 | ✅ | What counts as "planned" is an open question |
| Morning follow-up if I didn't plan | 3 | ✅ | |
| History of planned vs. unplanned days | 3 | ✅ | Could feed the trackers |

## Trackers

| Feature | Seg | Offline | Notes |
|---|---|---|---|
| **Days since** I last did X | 4 | ✅ | |
| **Streaks**: days in a row doing X | 4 | ✅ | |
| **Weekly counts**: gym, BJJ, protein shake, Bible reading | 4 | ✅ | Weekly targets? |
| Auto-logging from completed calendar blocks | 4 | ✅ | e.g. a finished "Gym" block counts as a gym day |

## Smart defaults (no AI)

| Feature | Seg | Offline | Notes |
|---|---|---|---|
| Predict **duration** when I type a known activity ("gym") | 5 | ✅ | Learned from my history |
| Predict **time of day** per weekday | 5 | ✅ | |
| Get better as I correct it | 5 | ✅ | |

## Free time and filler tasks

| Feature | Seg | Offline | Notes |
|---|---|---|---|
| Find **gaps** in my schedule | 6 | ✅ | |
| Suggest **filler tasks** that fit the gap | 6 | ✅ (rules) / 🌐 (AI) | Rule-based first, AI-enhanced later |

## AI assistant

| Feature | Seg | Offline | Notes |
|---|---|---|---|
| Personalized productivity coaching | 7 | ⚠️ | On-device AI might work offline; see ARCHITECTURE.md |
| Smarter filler suggestions | 7 | ⚠️ | |
| Natural-language scheduling ("gym after class tomorrow") | 7? | ⚠️ | Some of this might be doable without AI |

## Extras

| Feature | Seg | Offline | Notes |
|---|---|---|---|
| Quote of the day button | 8 | ✅ | Bundled quotes, no fetch needed |
| Subscription tracker (cost, renewal date, reminder) | 8 | ✅ | |
| Gym log notes | 8 | ✅ | Free text, or structured sets and reps? |

## Ideas parked for later

Possible additions I haven't committed to:
- Home and lock screen widgets
- Live Activity for the current block
- Siri / Shortcuts ("Hey Siri, add gym tomorrow")
- Apple Watch
- iCloud sync between iPhone, iPad and Mac (the project targets all three)
- Importing class schedules from Apple Calendar or school calendars
