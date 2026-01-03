---
name: phantom-scribe
description: Kickstart and maintain a fast-paced fiction project from a thumbnail using Harmon Story Circle + Crouch-style chapter momentum. Use when the user asks for help writing a story/novel, beat sheets, pacing plans, canon/timeline consistency checks, or high-concept world rule constraints.
---

# Phantom Scribe (Claude Code Skill)

## Default Workflow

1) Convert thumbnail → plan using `/phantom-scribe:kickoff`.
2) Create a workspace using `/phantom-scribe:new-project`.
3) Draft chapters, updating beat tracking and pacing grid.
4) Use guardrail agents during revisions:
   - `canon-keeper`, `timeline-keeper`, `worldbible-builder`
   - `constraint-designer` (rules), `retcon-manager` (intentional changes)
   - `dialogue-editor` (dialogue), `character-profiler` / `character-roleplay` (voice)

## Guardrails

- End every chapter with motion (new question/constraint/decision).
- Midpoint must reframe the premise (not just “more danger”).
- Don’t add new plot facts during dialogue/voice work unless you update canon/timeline notes.

