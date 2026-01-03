# Phantom Scribe

Templates + agents for kicking off and maintaining fast-paced fiction projects (Harmon Story Circle + “Crouch-style” chapter momentum), plus canon/timeline guardrails for high-concept worlds.

## Quick Start

### macOS / Linux
Install the Codex skill (and optionally project-local Claude agents):
- `./phantom_scribe/install.sh`
- `./phantom_scribe/install.sh --claude`
- `./phantom_scribe/install.sh --force --claude`

Restart Codex after installing.

### Windows
- `phantom_scribe\\install.bat`
- `phantom_scribe\\install.bat --claude`
- `phantom_scribe\\install.bat --force --claude`

Restart Codex after installing.

## Codex CLI Usage

- After install + restart, ask something like: “Help me write a story from this thumbnail…” to trigger the `phantom-scribe` Skill.
- Create a workspace with `~/.codex/skills/phantom-scribe/scripts/new_project.sh stories/my_story 24 --with-agents` (or run the repo script below).

## Claude Code

For Claude Code (project-local agents), run the installer with `--claude` and then restart/reload Claude Code:
- macOS/Linux: `./phantom_scribe/install.sh --claude`
- Windows: `phantom_scribe\\install.bat --claude`

This installs:
- `.claude/agents/` (agents)
- `.claude/skills/phantom-scribe/` (project Skill)

Then ask “Help me write a story…” to trigger the Skill, or start explicitly with `story-orchestrator`. See `phantom_scribe/CLAUDE.md`.

## Claude Code Plugin

This repo also includes a Claude Code plugin (namespaced slash commands like `/phantom-scribe:kickoff`).

Local test:
- `claude --plugin-dir ./phantom_scribe/claude_plugin/phantom-scribe`

See `phantom_scribe/claude_plugin/phantom-scribe/README.md`.

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
- `character-sketcher` (write-safe sketch + labeled headcanon hooks)
- `worldbible-builder`, `canon-keeper`, `timeline-keeper`
- `constraint-designer`, `retcon-manager`
- `character-profiler`, `character-roleplay`, `dialogue-editor`

See `phantom_scribe/AGENTS_USAGE.md` for when/how to use each.
