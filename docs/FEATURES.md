# Features

Every feature I've described so far. **Seg** is the segment it's planned for (see [ROADMAP.md](ROADMAP.md)). **Offline** confirms it must work without internet.

## App basics

| Feature | Seg | Offline | Notes |
|---|---|---|---|
| **Settings** screen | 0 | ✅ | City, notification timing, and other preferences as they come up |
| **Sky scene background**: ground (green) at the bottom, sky gradient at the top that follows the time of day | 0–1 | ✅ | The only theme; no dark/light modes. Sunrise/sunset computed on-device from my city |
| Weather-aware sky colors (grey-blue when cloudy or rainy) | 9 | 🌐 | Needs internet for weather; falls back to time-of-day offline |
| Feels like Apple Reminders | all | ✅ | Familiar list feel, native controls |
| Small, useful details most apps skip (the "pop") | all | ✅ | Collected as I think of them |

## Calendar

| Feature | Seg | Offline | Notes |
|---|---|---|---|
| Time **blocks** (classes, gym, BJJ, anything with start + end) | 1 | ✅ | |
| **Recurring** blocks (class schedule for a semester) | 1 | ✅ | Semester start/end dates? See open questions |
| **Due-date lines**: a line at a moment, not a block | 1 | ✅ | e.g. "Essay due 11:59 PM". Should show urgency far better than Reminders turning red |
| **Start-by lines**: "should start around here" with no fixed duration | 1 | ✅ | |
| Day / 2-day / week views | 1 | ✅ | Reminders might live in a calendar view instead of a separate tab |

## Inbox, tasks and reminders

| Feature | Seg | Offline | Notes |
|---|---|---|---|
| Quick-capture **inbox** button in the bottom-middle | 2 | ✅ | |
| To-dos (with or without a date or time) | 2 | ✅ | |
| Reminders with notifications | 2 | ✅ | Local notifications need no internet |
| **Missed-item stack**: missed items pin to the top of the schedule, overlap it, and pile up until completed or moved | 2 | ✅ | See UI.md, "Deadlines that are hard to ignore" |
| Repeat notifications for missed items (at least every 24h) | 2 | ✅ | |
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
| Personalized productivity coaching | 7 | 🌐 | Needs internet on iPhone 11 (no on-device AI) |
| Smarter filler suggestions | 7 | 🌐 | |
| Natural-language scheduling ("gym after class tomorrow") | 7? | ✅ / 🌐 | Simple phrases can be parsed without AI; AI for messy ones |

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
