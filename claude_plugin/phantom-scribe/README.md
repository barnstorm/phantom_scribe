# Phantom Scribe (Claude Code Plugin)

This is a Claude Code plugin that adds:
- Namespaced slash commands (e.g., `/phantom-scribe:kickoff`)
- A project Skill (`phantom-scribe`) for story planning + pacing
- A set of reusable agents (canon/timeline/rules/dialogue/character)

## Test Locally

From this repo root:
- `claude --plugin-dir ./phantom_scribe/claude_plugin/phantom-scribe`

Then run:
- `/phantom-scribe:kickoff <your thumbnail>`

## Install (Plugin Manager)

If you publish this plugin via a marketplace, users can install it with Claude Code’s plugin tools. (Exact steps depend on your marketplace setup.)

## Seed a New Story Workspace

Use:
- `/phantom-scribe:new-project 24`
or run the script directly:
- `phantom_scribe/scripts/new_project.sh stories/my_story 24 --with-agents`

## What’s Included

- `commands/` — slash commands
- `agents/` — specialized agents (canon/timeline/rules/dialogue/character)
- `skills/` — project Skill that triggers on “help me write a story”
- `assets/` — templates copied into new projects

