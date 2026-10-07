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
