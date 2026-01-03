# Agent Usage Guide (Phantom Scribe)

This folder includes `.claude/agents/*` agent prompts designed to be used during specific phases of the writing workflow. This guide explains when to use each one, what to provide, and what to save as output.

## Where Agents Fit in the Flow

- **Drafting / Structural:** Use agents sparingly (only when you need targeted help).
- **Worldbuilding/Canon:** Use `worldbible-builder`, `canon-keeper`, and `timeline-keeper` to keep high-concept rules stable.
- **Rules Design / Change Control:** Use `constraint-designer` to define limits and `retcon-manager` to propagate intentional canon changes safely.
- **Kickoff/Planning:** Use `story-orchestrator` to turn a thumbnail into a chapter-ready plan fast.
- **Character Baselines:** Use `character-sketcher` to create a write-safe sketch + labeled headcanon hooks before drafting.
- **Canon Adoption:** Use `accept-headcanon` to promote selected headcanon hooks into `WORLD_BIBLE.md` / character references explicitly.
- **Character Honing:** Use `character-profiler` to lock characterization and catch drift.
- **Thriller Pacing:** Use `reversal-ladder` to build scene-level reversals and cliff buttons when chapters feel flat.
- **Horror Escalation:** Use `horror-escalation` + `DREAD_LADDER_TEMPLATE.md` to make dread compound by reducing options while revealing rules/costs.
- **Post-Chapter QA:** Use `chapter-checker` after drafting/revising a chapter to confirm beats, momentum, and what trackers to update.
- **Canon Sync:** Use `worldbible-sync` after several chapters to update `WORLD_BIBLE.md` and park unknowns in `OPEN_QUESTIONS.md`.
- **Reverse Engineering:** Use `reverser` when you already have a draft and need a 1–2 page thumbnail + canon extraction plan to start improving it.
- **Line Editing:** Use `dialogue-editor` for any dialogue you touch; use `character-roleplay` to test voice in hard scenes.
- **Copy Editing:** Usually no agents; keep changes mechanical.

## `character-sketcher`

**Use when**
- Starting a new story and you want a stable voice baseline before chapter 1.
- Adding a new POV character mid-project.
- You want “headcanon” options clearly labeled as non-canon until accepted.

**Provide**
- Thumbnail + genre/tone, character role, setting basics, any must/avoid constraints.

**Save outputs**
- Store sketches in `characters/` (e.g., `characters/<name>_sketch.md`).
- Promote adopted headcanon into your world bible / character references explicitly.

## `accept-headcanon`

**Use when**
- You’ve selected specific headcanon hooks and want them to become explicit canon.
- You want adoption recorded with “effective chapter/beat” so reveals stay controlled.

**Provide**
- The exact hook bullets to adopt, plus whether they are canon now or still candidates.

**Save outputs**
- Updates `world/WORLD_BIBLE.md` and/or `characters/CHARACTER_REFERENCE.md` (creates if missing).
- Follow with `canon-keeper`/`timeline-keeper` checks if the hook touches rules or chronology.

## `reversal-ladder`

**Use when**
- A chapter outline feels like “stuff happens” rather than “therefore / but”.
- You want Dan Brown–style scene reversals and page-turn hooks.
- You’re revising a slow middle and need momentum without changing the macro beats.

**Provide**
- Chapter purpose, POV(s), draft/outline, and any canon/timeline constraints.

**Save outputs**
- Paste the scene ladder into your chapter notes or `world/` folder alongside pacing sheets.

## `horror-escalation`

**Use when**
- Outlining or revising horror (including cosmic horror) and you want escalation that feels inevitable, not random.
- You need a threat rule card, dread stages, and set-piece seeds.

**Provide**
- Thumbnail + tone, target length, threat concept, and any content limits.

**Save outputs**
- Store the dread ladder in `world/` and update `WORLD_BIBLE.md` with confirmed rules/costs.

## `chapter-checker`

**Use when**
- Immediately after drafting or heavily revising a chapter.
- You want to catch beat drift, timeline/knowledge leaks, and weak hooks.

**Provide**
- The chapter text (or path), intended beats, and prior chapter state (summary ok).

**Save outputs**
- Update trackers: `BEAT_TRACKING.md`, `TODO_INDEX.md`, and your improvements log.

## `worldbible-sync`

**Use when**
- End of Act 1, at midpoint, or before line edits.
- You added new rules/terms/factions/locations and want canon docs to catch up.

**Provide**
- List of changed chapters and current canon docs (`WORLD_BIBLE.md`, `CHARACTER_REFERENCE.md`, `OPEN_QUESTIONS.md`).

**Save outputs**
- Updated canon docs + an updated open-questions/risk list.

## `reverser`

**Use when**
- You have an existing draft and want to rebuild planning artifacts (thumbnail, vibe read, canon docs) before revising.

**Provide**
- The story text (or chapters), target vibe, and any existing canon docs.

**Save outputs**
- A 1–2 page synopsis + “changes to apply” list for `WORLD_BIBLE.md`, `CHARACTER_REFERENCE.md`, `OPEN_QUESTIONS.md`, and `CLUE_LEDGER.md`.

## `story-orchestrator`

**Use when**
- Starting a new project from a thumbnail.
- You want a quick Harmon macro + Crouch chapter grid with strong momentum.
- You’re rebooting a stalled outline and need a concrete next-steps plan.

**Provide**
- A thumbnail (3–10 sentences), genre/tone, target length (24/30 or audio hours), POV/tense preference, and rule hardness.

**Save outputs**
- A filled chapter grid and beat mapping (then move them into your project’s tracking files).
## `constraint-designer`

**Use when**
- You have a cool system (magic/tech/cosmology) but it’s too powerful or vague.
- You want explicit costs and failure modes to create stakes.
- You need “rule cards” before drafting set pieces.

**Provide**
- The concept (1–3 paragraphs), tone, hardness level.
- What the system must enable and must not enable.

**Save outputs**
- A rule card section in your world bible (or `world/rules/`).
- Any new constraints should be validated later via `canon-keeper`.

## `retcon-manager`

**Use when**
- You intentionally change a fact/rule/relationship/timeline term and need to keep continuity coherent.
- You’re rewriting earlier chapters and want an impact checklist.

**Provide**
- Old → new statement, reason, and which chapters are “locked”.
- Current canon docs (world bible, timeline, character refs).

**Save outputs**
- A propagation checklist and list of chapters to revise (highest risk first).
- After applying, re-run `canon-keeper` and `timeline-keeper`.

## `worldbible-builder`

**Use when**
- You need a clean, searchable world bible extracted from drafts.
- You’re formalizing tech/magic rules, factions, locations, and terminology.
- You want to update canon after significant revisions without “making things up”.

**Provide**
- Chapters/scenes to extract from (or the whole draft if manageable).
- Any existing reference docs to merge with.
- Desired hardness level (hard rules vs soft ambiguity).

**Save outputs**
- `world/WORLD_BIBLE.md` (or similar).
- Keep an “Unconfirmed” section so ambiguity stays explicit.

## `canon-keeper`

**Use when**
- You’re drafting or revising scenes that touch core rules (magic/tech/cosmology).
- You want a compliance check to prevent “rule leaks”.
- You’re about to introduce an exception and want to confirm its cost/logic.

**Provide**
- The scene/chapter text plus relevant canon docs (world bible, references).
- Any declared flex zones (what is allowed to remain mysterious).

**Save outputs**
- A short compliance report in your continuity notes or `CONTINUITY_REPORT_TEMPLATE.md`.
- Apply minimal fixes, then re-check if the rule is foundational.

## `timeline-keeper`

**Use when**
- Writing out of order or doing major rearrangements.
- Tracking travel time, day counts, parallel timelines, or time skips.
- You suspect a knowledge/timing contradiction.

**Provide**
- The set of chapters/scenes affected (or changed excerpts).
- Any anchor dates and your intended travel realism.

**Save outputs**
- A timeline table (can be appended into your world bible or a separate `timeline/` doc).
- Fix list for quick edits.

## `character-profiler`

**Use when**
- You need stable character profiles derived from the manuscript.
- You suspect voice drift or inconsistent behavior across chapters.
- You’re preparing to outline future arcs and want “what the text proves” in one place.

**Provide**
- The chapter(s) or passages where the character appears (include surrounding context).
- The character name(s) to profile.
- Optional: what you’re worried about (voice drift, motivation, timeline knowledge, relationships).

**Save outputs**
- One file per character: `characters/<name>_profile.md` (or similar).
- Update any master reference docs you maintain (e.g., `CHARACTER_REFERENCE.md`), but keep profiles as the “evidence-based source”.

## `character-roleplay`

**Use when**
- You want to test a character’s voice under pressure (argument, confession, negotiation).
- You want to explore “what would they say/do here?” without committing it to canon yet.
- You’re validating dialogue authenticity before editing a key scene.

**Provide**
- The character profile or a brief voice spec (what they want, what they fear, how they speak).
- The scene context: where/when, what happened immediately before, what each party knows.
- The goal: voice test, conflict escalation, reconciliation attempt, etc.

**Save outputs**
- Treat roleplay as a scratchpad. Save only takeaways:
  - Voice markers that worked (rhythm, phrasing habits).
  - Any lines worth reusing (if they don’t add new plot facts).

## `dialogue-editor`

**Use when**
- Dialogue feels flat, on-the-nose, or exposition-heavy.
- Multiple characters sound the same.
- A scene needs stronger subtext, tension, or cleaner pacing.

**Provide (required)**
1. Character details: who they are, relationship dynamics, what each wants in this scene.
2. Scene context: setting, stakes, what happened right before, what must change by the end.
3. The raw dialogue draft (include surrounding action beats if present).

**Save outputs**
- Replace the scene in the chapter (or keep a “before” copy elsewhere if you want diff history).
- Update your line-edit log with what changed and why.

## Practical Guardrails (Avoid “Leaky” Revisions)

- **Don’t add new plot facts** during dialogue/voice work unless you intentionally update beats/continuity docs.
- **Keep knowledge boundaries**: roleplay and dialogue edits must respect what characters know at that point.
- If an agent suggestion implies a continuity change, record it in your continuity notes and re-check beat coverage.

## Suggested Folder Layout (Optional)

- `characters/` — character profiles (from `character-profiler`)
- `logs/` — pass logs (character/line/copy)
- `notes/` — scratchpad roleplay takeaways and scene alternatives
