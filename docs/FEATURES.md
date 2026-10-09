# Features

Every feature I've described so far. **Seg** is the segment it's planned for (see [ROADMAP.md](ROADMAP.md)). **Offline** confirms it must work without internet.

## App basics

| Feature | Seg | Offline | Notes |
|---|---|---|---|
| **Settings** screen | 0 | ✅ | City, notification timing, and other preferences as they come up |
| **Sky scene background**: ground (green) at the bottom, sky gradient at the top that follows the time of day | 0–1 | ✅ | The only theme; no dark/light modes. Sunrise/sunset computed on-device from my city |
| Weather in the sky: blurred grey clouds, animated rain | 9 | 🌐 | Needs internet for weather; falls back to last known, then time-of-day |
| More background options in Settings, starting with **city mode** (soft blurred skyline) | 9 | ✅ | |
| Feels like Apple Reminders | all | ✅ | Familiar list feel, native controls |
| Small, useful details most apps skip (the "pop") | all | ✅ | Collected as I think of them |

## Calendar

| Feature | Seg | Offline | Notes |
|---|---|---|---|
| Time **blocks** (classes, gym, BJJ, anything with start + end) | 1 | ✅ | |
| **Weekly recurring** blocks with an **end date** (classes until semester ends) | 1 | ✅ | Enter once, never per day (D37, D38) |
| **Import from Apple Calendar** with review, then **keep pulling changes** | 1 | ✅ | D55, D60 |
| **Fast manual entry** of weekly classes (enter once), modeled on Apple Calendar's new-event screen | 1 | ✅ | D43, D55 |
| Import classes from .ics, with a review/confirm screen | 1 | ✅ | Secondary path (D37, D43) |
| **Past schedules stay viewable** after a series ends | 1 | ✅ | D38 |
| **Assignments**: placed at the time I plan to start, with a **real deadline**; done when finished | 1 | ✅ | Replaces due-date lines (D39, D44, D45) |
| Deadline warnings **2h and 1h before** if not done, plus **custom reminders per item** | 2 | ✅ | D44, D53 |
| **"Now" indicator** on the block the current-time line is in | 1 | ✅ | D56 |
| **Edited marker + growing friction** when moving an item's date | 2 | ✅ | D62 |
| **Views**: 1-day (main), 3-day, week, month; all open on today; swipe left/right (month scrolls vertically); more compressed at each level | 1 | ✅ | D40, D48 |
| Month view: dates + thin colored bars, no words | 1 | ✅ | D49 |
| **Colors per category**, overridable on anything; a bit heavier than the background | 1 | ✅ | D42, D47 |

## Inbox, tasks and reminders

| Feature | Seg | Offline | Notes |
|---|---|---|---|
| Quick-capture **inbox** button in the bottom-middle | 2 | ✅ | |
| To-dos (with or without a date or time) | 2 | ✅ | |
| Reminders with notifications | 2 | ✅ | Local notifications need no internet |
| **Informational vs. actionable** items (classes just show; to-dos can be missed) | 1–2 | ✅ | D27 |
| **Missed-item stack**: missed actionable items pin to the top of the schedule, all the same size, overlap it, and pile up (up to the whole screen) until completed or moved | 2 | ✅ | See UI.md, "Deadlines that are hard to ignore" |
| Escalating repeat notifications for missed items | 2 | ✅ | Faster the longer it's ignored |
| Alarm-style alert (rings through silent) for the worst cases | 2 | ✅ | AlarmKit, iOS 26 |
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
| Tracker rows: rectangular, number on the right | 4 | ✅ | D51 |
| **Days since** I last did X | 4 | ✅ | |
| **Streaks**: days in a row, a big number that grows | 4 | ✅ | |
| **Weekly counts**: a filling bar with "3/5", gym, BJJ, protein shake, Bible reading | 4 | ✅ | Weekly targets? |
| **Full history forever**: every check-in kept; look back across years | 4 | ✅ | D58. How to browse it is open |
| **Fire streaks**: numbers glow hotter and more colorful as they grow | 4 | ✅ | D59 |
| Auto-logging from completed calendar blocks | 4 | ✅ | e.g. a finished "Gym" block counts as a gym day |

## Smart defaults (no AI)

| Feature | Seg | Offline | Notes |
|---|---|---|---|
| Predict **duration** when I type a known activity ("gym") | 5 | ✅ | Learned from my history |
| Predict **time of day** per weekday | 5 | ✅ | |
| Suggest **block colors** from my habits | 5 | ✅ | D42 |
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
- **Connections to other apps**, e.g. a 7shifts work schedule via its calendar link if it offers one (D41)
- **Birthdays from Contacts** (works offline; Contacts is on the phone) (D41)
