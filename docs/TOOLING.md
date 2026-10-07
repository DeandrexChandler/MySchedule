# Tooling

How this project is built with Claude Code while keeping token use (and cost / usage limits) low.

## Why tokens matter

Every message carries the whole conversation plus whatever Claude reads: files, build logs, docs. Long sessions, huge build output and reading files that aren't needed all burn tokens and make answers worse. Most of this setup is about **putting less, but better, stuff in context**.

## Planned setup (Segment 0, waiting on my OK)

### 1. `CLAUDE.md` (project memory)
A short file at the repo root that Claude loads at the start of every session:
- one-paragraph project summary and the non-negotiables
- the build/run command
- code conventions
- "read only the doc you need": a pointer map into `docs/`
- how I want questions asked (open-ended, no multiple choice)

Keep it **short** (under ~100 lines). It's loaded every time, so every line costs tokens in every session.

### 2. Quiet build script
`xcodebuild` prints thousands of lines. A `scripts/build.sh` that prints only errors, warnings and the final result saves a lot per build. Same idea for a `scripts/run.sh` that builds, installs and launches on the simulator.

### 3. Permissions allowlist
`.claude/settings.json` can pre-approve safe, read-only, or build commands (`xcodebuild`, `xcrun simctl`, `git status`, etc.). That means fewer permission prompts and less back-and-forth. The `/fewer-permission-prompts` command can generate this from past sessions.

### 4. `.gitignore`
Stop tracking `xcuserdata/`, `DerivedData/`, `.DS_Store`. This keeps diffs (and what Claude reads in reviews) clean.

## Plugins and MCP servers to consider

Each MCP server or plugin adds tool descriptions to context. Only add what earns its place.

| Option | What it gives | Token note |
|---|---|---|
| **XcodeBuildMCP** (third-party MCP server) | Structured build, run, test, simulator control, screenshots | Saves tokens on build output; adds some tool overhead |
| **Xcode's built-in agent / MCP integration** | Newer Xcode versions expose Xcode actions to coding agents; worth checking what Xcode 26.6 offers | Same tradeoff |
| **superpowers** plugin (already installed in another project) | Workflow skills: brainstorming, writing plans, TDD | Skills load only when used |
| **code-review** (built-in `/code-review`) | Review a branch before merging | Run per PR, not per change |
| Plain scripts (above) | Most of the build/run benefit with zero overhead | Cheapest option |

## Session habits

| Habit | Why |
|---|---|
| **One segment or task per session**; `/rename` it after the segment | Short, focused context |
| `/clear` when switching topics | Drops old context entirely |
| `/compact` when a session gets long but I want to keep going | Summarizes instead of carrying everything |
| `claude -c` to resume yesterday's unfinished work | Only when it's the *same* task |
| Point Claude at specific files/docs | Avoids exploratory reads |
| Screenshots in `docs/inspiration/` | Images are cheaper than describing a UI in paragraphs |
| Keep docs split by topic (as they are now) | Claude reads one 2 KB doc, not one giant 30 KB doc |
