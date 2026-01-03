---
description: Sync WORLD_BIBLE.md, CHARACTER_REFERENCE.md, and OPEN_QUESTIONS.md from recent chapter changes
---

Use the `worldbible-sync` agent.

Ask for:
1) Which chapter files changed
2) Paths to canon docs (defaults):
   - `world/WORLD_BIBLE.md`
   - `characters/CHARACTER_REFERENCE.md`
   - `OPEN_QUESTIONS.md`
3) Any “flex zones” (what may remain ambiguous)

Output:
- Proposed updates (WORLD_BIBLE, CHARACTER_REFERENCE, OPEN_QUESTIONS)
- Apply updates if file editing is allowed
- Recommend `canon-keeper` / `timeline-keeper` follow-ups if needed

