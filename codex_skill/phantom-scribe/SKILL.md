---
name: phantom-scribe
description: Kickstart and maintain a fast-paced fiction project from a thumbnail using Harmon Story Circle + Crouch-style chapter pacing. Use this when the user says they need help writing a story/novel, wants a beat sheet, wants Blake Crouch pacing, wants a chapter-by-chapter plan, or wants help enforcing canon/timeline rules in high-concept sci-fi/fantasy.
---

# Phantom Scribe

## Kickoff (from a thumbnail)

Ask for (then proceed with defaults if missing):
1. Thumbnail (3–10 sentences)
2. Genre + tone
3. Target length (24 or 30 chapters, or target audio hours)
4. POV/tense preference
5. Rule hardness (hard rules vs soft ambiguity)
6. Romance intensity (optional): none / low subplot / medium / high

Then produce:
- Harmon Story Circle (8 beats)
- Chapter grid: per chapter **question → answer → new constraint → cost**
- Beat-to-chapter mapping (1–3 beats per chapter)

## Create a new project workspace

Run:
- `scripts/new_project.sh <project_dir> <chapters> --with-agents`

This creates a ready-to-fill scaffold with:
- Beat sheet + pacing sheet + trackers
- Chapter stubs
- Optional `.claude/agents/` for Claude Code–style agent runners

## When working on high-concept worlds

Use these agents (in `assets/claude/agents/`) as needed:
- `canon-keeper`: check a scene against rules/canon; propose minimal fixes
- `worldbible-builder`: extract a world bible from text; mark unknowns
- `timeline-keeper`: chronology/causality/knowledge gating
- `constraint-designer`: turn a cool system into constraints/costs/failure modes
- `retcon-manager`: propagate intentional canon changes safely

Keep changes “non-leaky”:
- Beats lock plot before polishing.
- If a twist changes canon, log it and re-run canon/timeline checks.
