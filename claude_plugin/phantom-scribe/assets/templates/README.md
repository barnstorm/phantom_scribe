# Phantom Scribe

Templates + agents for kicking off and maintaining fast-paced fiction projects (Harmon Story Circle + “Crouch-style” chapter momentum), plus canon/timeline guardrails for high-concept worlds.

## Quick Start

### macOS / Linux
Install the Codex skill (and optionally project-local Claude agents):
- `./phantom_scribe/install.sh`
- `./phantom_scribe/install.sh --claude`
- `./phantom_scribe/install.sh --force --claude`

Restart Codex after installing.

### Windows (PowerShell)
- `.\phantom_scribe\install.ps1`
- `.\phantom_scribe\install.ps1 -Claude`
- `.\phantom_scribe\install.ps1 -Force -Claude`

Restart Codex after installing.

## Claude Code

For Claude Code (project-local agents), run the installer with `--claude` and then restart/reload Claude Code:
- macOS/Linux: `./phantom_scribe/install.sh --claude`
- Windows: `.\phantom_scribe\install.ps1 -Claude`

Then start with `story-orchestrator`. See `phantom_scribe/CLAUDE.md`.

## Creating a New Story Workspace

From this repo:
- `phantom_scribe/scripts/new_project.sh stories/my_story 24 --with-agents`

From the installed Codex skill (after install):
- `~/.codex/skills/phantom-scribe/scripts/new_project.sh stories/my_story 24 --with-agents`

This creates:
- `START_HERE.md`, beat/pacing sheets, trackers, logs
- `chapters/chapter_01.md` … stubs
- Optional `.claude/agents/` copied in (for Claude Code–style discovery)

## What’s Included

### Templates
- `BEAT_SHEET_TEMPLATE.md`, `HARMON_STORY_CIRCLE_TEMPLATE.md`
- `CROUCH_PACING_SHEET_TEMPLATE.md`, `HARMON_CROUCH_CHAPTER_GRIDS.md`
- `BEAT_TRACKING_TEMPLATE.md`, `TODO_INDEX_TEMPLATE.md`
- `CONTINUITY_REPORT_TEMPLATE.md`, `STRUCTURAL_AUDIT_TEMPLATE.md`
- `PASS_LOG_TEMPLATES.md`, `IMPROVEMENTS_LOG_TEMPLATE.md`

### Agents (Claude-style prompts)
Located in `phantom_scribe/.claude/agents/` and mirrored into the Codex skill assets:
- `story-orchestrator` (thumbnail → full plan)
- `worldbible-builder`, `canon-keeper`, `timeline-keeper`
- `constraint-designer`, `retcon-manager`
- `character-profiler`, `character-roleplay`, `dialogue-editor`

See `phantom_scribe/AGENTS_USAGE.md` for when/how to use each.
