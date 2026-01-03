# Workspace Layout (Phantom Scribe)

This is the default folder layout created by `new_project.sh` and how each piece is used.

## Top-level files
- `START_HERE.md` — project snapshot + phase order.
- `TODO_INDEX.md` — what’s next; act/chapter progress.
- `BEAT_TRACKING.md` — beat coverage table (prevents gaps/skips).
- `OPEN_QUESTIONS.md` — parking lot for unresolved decisions and risks.
- `CHAPTER_DONE_CHECKLIST.md` — run after drafting/revising a chapter.
- `END_OF_SESSION_CHECKLIST.md` — run before stopping work.
- `WORLD_BIBLE_SYNC_CHECKLIST.md` — run at act breaks/midpoint to sync canon.

## `chapters/`
Draft manuscript files.
- Naming: `chapter_01.md`, `chapter_02.md`, … (or your preferred convention).
- Each chapter should clearly list beats covered and end with motion (hook).

## `world/`
Canon and planning artifacts that describe the “rules of the plane”.
- `WORLD_BIBLE.md` — rules, constraints/costs, glossary, factions, locations, artifacts.
- `BEAT_SHEET.md` — macro structure (acts/turns).
- `HARMON_STORY_CIRCLE.md` — 8-beat macro loop.
- `PACING_SHEET.md` — chapter-level momentum grid (question→answer→constraint→cost).
- `HARMON_CROUCH_CHAPTER_GRIDS.md` — mapping helpers for 24/30 chapter plans.
- `STRUCTURAL_AUDIT.md` — structural audit guide.
- Optional: `CLUE_LEDGER.md` — clue economy tracking for mystery/thriller.

## `characters/`
Character baseline + canon references.
- `CHARACTER_REFERENCE.md` — what’s true (facts, knowledge gating, relationships).
- `*_sketch.md` — write-safe baseline sketches (pre-draft).

## `logs/`
Editing-pass logs and review artifacts.
- `IMPROVEMENTS_LOG.md` — dated change log.
- `CONTINUITY_REPORT.md` — continuity review notes + required fixes.
- Optional: per-pass logs (character/line/copy).

## `notes/`
Scratchpad area for alternatives and non-canon explorations.
- Roleplay takeaways
- Alternate endings
- Unused scenes

## Recommended Cadence
- After each chapter: run `CHAPTER_DONE_CHECKLIST.md` (and optionally `chapter-checker`).
- At act break/midpoint: run `WORLD_BIBLE_SYNC_CHECKLIST.md` (and optionally `worldbible-sync`).
- End of session: run `END_OF_SESSION_CHECKLIST.md`.

