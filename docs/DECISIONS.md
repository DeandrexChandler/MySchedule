# Decisions

A running log. Newest at the bottom. Each entry: what was decided, why, and when.

| # | Date | Decision | Why |
|---|---|---|---|
| D1 | 2026-10-06 | Personal use only. No accounts or profiles. If it ever ships on the App Store, **users are never charged a subscription** | It's for me; I don't want people's money from a sub. (Paying Apple's developer fee myself is fine, see D8) |
| D2 | 2026-10-06 | Offline-first. Every feature works without internet except AI | I want it anytime, anywhere |
| D3 | 2026-10-06 | Inbox / set-reminder button lives in the bottom middle of the tab bar | How I want to capture things |
| D4 | 2026-10-06 | Predictions (duration, time of day) use plain logic before AI | Works offline, predictable, free |
| D5 | 2026-10-06 | Built in segments, one branch per segment, docs first | It's a lot; each piece should work on its own |
| D6 | 2026-10-06 | Questions about the app are open-ended, no multiple choice | So the app reflects my ideas, not defaults |
| D7 | 2026-10-06 | *(assumed, confirm)* Native SwiftUI app, data stored with SwiftData | Already set up by the Xcode template; best offline story on iOS |
| D8 | 2026-10-06 | Join the paid Apple Developer Program ($99/yr) | App stays installed for a year, TestFlight, iCloud sync possible |
| D9 | 2026-10-06 | Main device: **iPhone 11**. Should run smoothly on most iPhones | That's my phone. iOS 26 supports iPhone 11 / SE 2nd gen and newer, so the current iOS 26 minimum already covers it |
| D10 | 2026-10-06 | Feel: like Apple's native **Reminders** app, but with a much better way to see **time** and **hard deadlines** than "the reminder turns red" | Familiar and calm; the time visualization is the thing that sets it apart |
| D11 | 2026-10-06 | ~~Dark mode by default, with a light-mode switch~~ **Replaced by D20** | |
| D12 | 2026-10-06 | Visual style: **basic, with a pop**. Inspiration from Dribbble and Mobbin | Clean base, something distinctive on top |
| D13 | 2026-10-06 | Use the **Ponytail** Claude Code plugin | Less code, fewer tokens, prefers native solutions |
| D14 | 2026-10-06 | Apple's on-device AI is **not an option on iPhone 11** (needs iPhone 15 Pro or newer). AI on my phone will need internet | Hardware limit. Fits D2: AI is the one feature allowed to need internet |
| D15 | 2026-10-06 | **iPhone only.** No iPad, Mac or Vision Pro | That's where I'll use it; less to build and test |
| D16 | 2026-10-06 | "Pop" = **small, useful details most apps skip** that keep my attention. Not loud visuals | The difference is in convenience, not decoration |
| D17 | 2026-10-06 | Hard deadlines must be **hard to ignore**: in my face, pushing me to either **do it** or **move it**, not just red text and a buzz | Red text is too easy to ignore |
| D18 | 2026-10-06 | **Sky color palette**: sunrise orange/yellow → midday green → sunset orange/pink → night blue/navy; grey-blue when cloudy or rainy. **Pastel, calm, low opacity**; never steals the spotlight | Aesthetic without being an eyesore |
| D19 | 2026-10-06 | The app's look can **change through the day** (and with weather) | Example of the "pop" I want |
| D20 | 2026-10-07 | **No dark / light / system modes.** The only look is the **sky scene**: the background is **ground at the bottom (green)** and **sky at the top**, with a gradient between. The sky follows the time of day and weather and **shifts gradually** | One distinctive look instead of generic themes |
| D21 | 2026-10-07 | **City is set once** (no ongoing location tracking). Sunrise/sunset come from the city's coordinates | Simpler, no location permission, works offline |
| D22 | 2026-10-07 | **Missed items pin to the top of the schedule screen.** They stay there while scrolling, overlap the schedule, and **stack up**, taking more space the more I ignore. Only two ways out: **mark complete** or **move the date** | Makes ignoring things physically get in the way |
| D23 | 2026-10-07 | Missed items **re-notify at least every 24 hours** (possibly more often) until dealt with | Never silently forgotten |
| D24 | 2026-10-07 | Sky reflects the real day: midday is soft daylight blue. The **ground dims at night** with the sky | Background should mirror what it looks like outside |
| D25 | 2026-10-07 | **More background options later**, in Settings. First idea: a **city mode** with soft, blurred buildings | Unique enough to pop, not distracting; not needed for v1 |
| D26 | 2026-10-07 | Offline weather fallback = last known weather, then plain time-of-day colors | I'm rarely offline long enough for it to matter |
| D27 | 2026-10-07 | Two kinds of items: **informational** ("you have this", e.g. classes: never marked complete, never "missed") and **actionable** ("I put this here to get done"). **Every actionable item** can be missed: tasks, reminders, due-date lines, start-by lines, to-do blocks | Classes just show up; things I meant to do get held accountable |
| D28 | 2026-10-07 | In the missed stack, everything is **compressed to one consistent size**. The stack **can take over the whole screen** | A full screen is a clear sign I'm doing something wrong |
| D29 | 2026-10-07 | Missed-item notifications **get more frequent the longer they're ignored** | Escalation is the point; feasible with local notifications (see ARCHITECTURE.md) |
| D30 | 2026-10-07 | **Alarm-style alerts** that ring through silent mode and Focus are allowed for the worst cases | Hard to ignore is the goal |
| D31 | 2026-10-07 | **Alarm-level alerts are opt-in per item.** Only items I set an alarm on get the ring-through-silent alarm | I decide what's critical |
| D32 | 2026-10-07 | Missed-item escalation **pauses overnight** and resumes in the morning | Don't wreck sleep |
| D33 | 2026-10-07 | Escalation **caps at 3 notifications a day** | Frequent enough to be hard to ignore, not spam |
| D34 | 2026-10-07 | Informational vs. actionable: **each kind has a default** (classes informational, tasks actionable), **changeable per item** | Sensible default, full control |
| D35 | 2026-10-07 | Quiet hours (no missed-item pings): **1 AM – 7 AM, every day** | Sleep |
| D36 | 2026-10-07 | Missed-item pings land in **free gaps** in my schedule: gaps **longer than the missed item's duration**, or **over 1 hour** if it has no duration. If there aren't 3 such gaps, pings fall back to **11 AM, 5 PM, 10 PM** | Ping me when I can actually act on it |
| D37 | 2026-10-07 | Classes are **weekly recurring blocks until the semester end date**. Entered once, never per day. **Import from an .ics file** with a review/confirm step before anything is added | 5 classes a week; manual re-entry is a non-starter |
| D38 | 2026-10-07 | Recurring series have a **preset end date**. After it, they stop showing going forward, but **past occurrences stay** so I can look back at old schedules | History matters |
| D39 | 2026-10-07 | **No due-date lines on the schedule.** Instead, assignments get a **"start this" item**, with the **deadline in its details** | Starting is the actionable part; keeps the schedule clean |
| D40 | 2026-10-07 | Views: **1-day (primary)**, **3-day (yesterday / today / tomorrow)**, **week**, **month**. Each zoom level **compresses and simplifies** items | Less clutter, sleeker as I zoom out |
| D41 | 2026-10-07 | This app **replaces Apple Calendar**. Later extras: **connections to other apps** (e.g. 7shifts work schedule) and **birthdays from Contacts** | One place for everything. Extras aren't needed for v1 |
| D42 | 2026-10-07 | Block colors are **my choice**, rendered **slightly heavier than the background** so they stand out. The app may **learn my color habits and suggest** colors | Personal, readable, low effort |
| D43 | 2026-10-07 | My current school has **no .ics export**, so **fast manual entry** of weekly classes is the main path. .ics import stays as a secondary option | Must work with what I actually have |
| D44 | 2026-10-07 | Assignments have a **real deadline date**. If not complete as it gets close, the app warns me. Each item can have **custom reminders** (heavier assignments get earlier or more reminders) | Some work needs more lead time |
| D45 | 2026-10-07 | A "start this" item is just the **assignment itself** (e.g. "Assignment 2") placed at the time I plan to start. It's **done when the assignment is finished** | Simple mental model |
| D46 | 2026-10-07 | If a day has fewer than 3 good gaps, use the gaps there are and fill the rest with the **fallback times (11 AM / 5 PM / 10 PM) furthest from those gaps** | Spread pings out |
| D47 | 2026-10-07 | Colors default **per category**, and I can override any color on anything | Organized by default, fully custom |
| D48 | 2026-10-07 | Every view opens on **today** (3-day = yesterday/today/tomorrow). 1-day, 3-day and week **swipe left/right**; **month scrolls up/down** | Natural navigation |
| D49 | 2026-10-07 | Month view: **dates only, plus thin colored bars** for what's scheduled. **No words** | Overview at a glance, no clutter |
| D50 | 2026-10-09 | Mood board: liked **1–5, 7–10, 12**. Not 6 (prefer **7**'s blocks with a now-line), not 11 (**no dot grids**) | First visual reactions |
| D51 | 2026-10-09 | Trackers are **rectangular rows with the number on the right**. Daily streaks = **big number that grows**. Weekly counts = **a bar filling up with "3/5" on the right**. Past check-ins are kept (see D58) | I want real history, not a counter that wipes every Monday |
| D52 | 2026-10-09 | When something counts as **missed**: has a deadline → when the **deadline passes**; no deadline → when its **start time passes**; actionable **block** → when the **block ends** without being marked complete | Clear, predictable rules |
| D53 | 2026-10-09 | No default deadline (each assignment's is set by hand). **Always warn 2 hours and 1 hour before a deadline** if not complete | Last-chance nudges |
| D54 | 2026-10-09 | Categories, in build order: **School** first, then gym, BJJ, work, **personal last** | School is the most predictable; personal is messy without a frame |
| D55 | 2026-10-09 | My classes are already in **Apple Calendar**, so the plan is a **one-time import from Apple Calendar** with a review screen (on-device, offline). Manual class entry looks roughly like Apple Calendar's new-event screen, adjusted after I try it | Don't retype what's already entered |
| D56 | 2026-10-09 | When the current-time line is inside a block, the block shows a clear **"now, you should be doing this"** indicator | Keeps me honest in the moment |
| D57 | 2026-10-09 | Weather has to be **obvious**: soft **grey clouds** in the sky when cloudy, **animated rain** when raining. Still **blurred** and calm | It looked too much like a normal day |
| D58 | 2026-10-09 | **Every tracker check-in is kept forever** (unless I clear it), like calendar events, so I can look back **across years** and see consistency grow or drop. **No average, no "best week", no 8-week strip.** Keep the **horizontal bar filling up** for the current week | History is the point; averages and bests don't mean anything to me |
| D59 | 2026-10-09 | Streak numbers **light up with fire and get more colorful as they grow** (Duolingo-style) | Makes a long streak feel worth protecting |
| D60 | 2026-10-09 | Apple Calendar import **keeps pulling changes** (ongoing, not one-time) | Haven't decided yet if this fully replaces Apple Calendar |
| D61 | 2026-10-09 | Actionable by default: errands and to-dos I schedule (wash car, get gas, groceries, fix resume, apply to internships…) | The stuff I schedule and then don't commit to |
| D62 | 2026-10-09 | Moving an item's date is **marked as edited**, and **every move adds more friction** to moving it again | Makes putting things off progressively harder |
| D63 | 2026-10-09 | Rain falls **closer to straight down** (only a slight angle). **Cloudy and rainy skies are grey**: no sunrise/sunset orange or pink on those days | It should look like real overcast weather |
| D64 | 2026-10-09 | Habit history = a **year calendar** per habit: an **✕ on days I did it**, blank otherwise, years stacked in a **vertical scroll** | See consistency across years at a glance |
| D65 | 2026-10-09 | Apple Calendar sync is **read-only**. Nothing in MySchedule ever writes to Apple Calendar | Keep the two separate |
| D66 | 2026-10-09 | **Overdue strikes:** 1st time overdue → item shows **"Previously overdue"**. 2nd time → shows **"Will be deleted"**. 3rd time → it **deletes itself permanently** (no Recently Deleted, no history) | If I've let it slide three times, I didn't really care about it |
| D67 | 2026-10-09 | **Grace period:** an item on its final strike isn't deleted until the **end of the day** it went overdue, so I can still mark it complete | Wiggle room |
| D68 | 2026-10-09 | Streak flames are **animated**, **grow** as the streak grows, and **change color at milestones** (e.g. orange → blue → purple → something special) | Icons and animation are what motivate me |
| D69 | 2026-10-09 | Overdue strikes apply to **everything actionable, assignments included**. An assignment is scheduled at the time I plan to do it, with the due date in its **notes**. Three strikes and it's gone | I deserve that consequence; it discourages skipping |
| D70 | 2026-10-09 | Only **actually going overdue** is a strike. **Moving an item beforehand is free** | Moving early is just re-planning a realistic day |
| D71 | 2026-10-09 | ~~Flame milestones v1~~ **Replaced by D80** | More milestones, more to chase |
| D72 | 2026-10-09 | Year history view **keeps the yearly total** and must be laid out for a **phone screen** | It lives on my iPhone |
| D73 | 2026-10-09 | Assignments keep a **real due date** (so the 2h/1h warnings work, D53). Strikes count against the **scheduled work time**, never the due date. On the 3rd strike the assignment **and its due date** are deleted | The due date is fixed; my planning is what slips |
| D74 | 2026-10-09 | An assignment is **overdue when its scheduled work time ends** and it isn't marked complete (refines D52) | Matches how blocks work |
| D75 | 2026-10-09 | Big projects get **multiple scheduled sessions** of the same item, entered by me | Keeps the model simple |
| D76 | 2026-10-09 | ~~Weekly milestones v1~~ **Replaced by D80** | Matches the daily color order |
| D77 | 2026-10-09 | The 200/365 power-up is a **flame-shaped glowing aura** that pulses around the flame. No lightning (Super Saiyan spikes and lightning were tried and dropped) | Simple and clean |
| D78 | 2026-10-09 | Tapping the middle button **expands the bottom bar into a panel covering about 1/3 to 1/2 of the screen**: title first, everything else optional | Fast capture without leaving the screen |
| D79 | 2026-10-09 | The inbox holds **reminders, tasks, and ideas** (ideas sit **undated**). **Notes are mainly gym logs**: weights and reps per session, tracked over time | That's what I actually capture |
| D80 | 2026-10-09 | **No streak for the first 6 days / first week.** Flames: **7 days / 1 week orange · 30 days / 5 weeks red-orange · 50 / 20 blue · 100 / 30 purple · 200 / 40 black & white · 365 / 52 gold "(1 year)"**. Green removed. Aura at 200 and 365 | A streak should mean something before it shows |
| D81 | 2026-10-09 | Quick-add panel shows **all fields**, **scrolls** if they don't fit, the **Add button stays pinned** on screen over hidden fields, and the panel is **solid** (not see-through) | Everything in one place, nothing lost below |
| D82 | 2026-10-09 | **Dated = scheduled. Undated = inbox.** Undated tasks sit as to-dos; undated ideas become **suggestions** for free time | No date means I don't want to decide when yet |
| D83 | 2026-10-09 | Notifications: **tap to open the app**; **swipe for clear or options** (mark complete, mute 1 hour, etc.) | Handle it without opening the app |
| D84 | 2026-10-09 | **Gym log gets its own tab** in the bottom bar. Starts as **free-form notes**; progress views come later. **No BJJ notes** | Notes are mainly for lifting |
| D85 | 2026-10-09 | **Bottom bar, left to right:** Schedule/Calendar · Notes/Gym log · **Add** (center) · Streaks/Trackers · Settings | Everything I use daily, one tap away |
| D86 | 2026-10-09 | **Schedule screen header:** **Inbox** (undated items) button top-left, the date in the middle, **Search** and the **view switcher** top-right (view switcher right of search) | Inbox and views without a tab of their own |
| D87 | 2026-10-10 | **Apple's system font** throughout, same as Reminders | Native feel |
| D88 | 2026-10-10 | Sky colors from the mood board sketch are approved. **Sunset peaks around 6–7 PM** in the sketch; the real app follows the actual sunset time for my city (D21) | Matches what I see outside |
