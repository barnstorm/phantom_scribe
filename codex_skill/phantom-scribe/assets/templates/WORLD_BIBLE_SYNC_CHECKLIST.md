# World Bible Sync Checklist (Phantom Scribe)

Use this when you’ve drafted/edited multiple chapters and want canon to stay tight.

## When to Sync
- End of Act 1
- At midpoint (premise flip)
- After any new rule/cost/failure mode is introduced
- Before line editing begins

## Inputs
- Recent chapters changed (list them)
- Current `world/WORLD_BIBLE.md`
- `characters/CHARACTER_REFERENCE.md`
- `OPEN_QUESTIONS.md` (or similar)

## Sync Steps
- [ ] Extract new *confirmed* rules/costs/failure modes from recent chapters.
- [ ] Update `world/WORLD_BIBLE.md` (add to Rulebook/Glossary/Factions/Locations).
- [ ] Update `characters/CHARACTER_REFERENCE.md` (knowledge gating, relationships, new constraints).
- [ ] Move any “maybe” facts into:
  - `Headcanon Candidates` (in world/character refs) or
  - `OPEN_QUESTIONS.md` (if decision is pending)
- [ ] Run `canon-keeper` on at least one chapter that uses the new/changed rule.
- [ ] If time markers changed, run `timeline-keeper` for the affected segment.

## Output
- A short “Recent Changes” entry in `world/WORLD_BIBLE.md`
- 1–3 bullet summary in `logs/IMPROVEMENTS_LOG.md`

