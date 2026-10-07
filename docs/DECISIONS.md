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
| D11 | 2026-10-06 | **Dark mode by default**, with a light-mode switch in a **Settings** screen | My preference |
| D12 | 2026-10-06 | Visual style: **basic, with a pop**. Inspiration from Dribbble and Mobbin | Clean base, something distinctive on top |
| D13 | 2026-10-06 | Use the **Ponytail** Claude Code plugin | Less code, fewer tokens, prefers native solutions |
| D14 | 2026-10-06 | Apple's on-device AI is **not an option on iPhone 11** (needs iPhone 15 Pro or newer). AI on my phone will need internet | Hardware limit. Fits D2: AI is the one feature allowed to need internet |
| D15 | 2026-10-06 | **iPhone only.** No iPad, Mac or Vision Pro | That's where I'll use it; less to build and test |
| D16 | 2026-10-06 | "Pop" = **small, useful details most apps skip** that keep my attention. Not loud visuals | The difference is in convenience, not decoration |
| D17 | 2026-10-06 | Hard deadlines must be **hard to ignore**: in my face, pushing me to either **do it** or **move it**, not just red text and a buzz | Red text is too easy to ignore |
| D18 | 2026-10-06 | **Sky color palette**: sunrise orange/yellow → midday green → sunset orange/pink → night blue/navy; grey-blue when cloudy or rainy. **Pastel, calm, low opacity**; never steals the spotlight | Aesthetic without being an eyesore |
| D19 | 2026-10-06 | The app's look can **change through the day** (and with weather). Dark / light / match-system options still exist | Example of the "pop" I want |
