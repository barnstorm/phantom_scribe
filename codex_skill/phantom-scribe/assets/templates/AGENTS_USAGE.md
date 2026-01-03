# Agent Usage Guide (Phantom Scribe)

Use agent prompts in `assets/claude/agents/` during specific phases.

## Where Agents Fit in the Flow
- **Kickoff/Planning:** `story-orchestrator`
- **Character Baselines:** `character-sketcher` (write-safe sketch + labeled headcanon hooks)
- **Canon Adoption:** `accept-headcanon` (promote selected hooks into `WORLD_BIBLE.md` / character references)
- **Worldbuilding/Canon:** `worldbible-builder`, `canon-keeper`, `timeline-keeper`
- **Rules Design / Change Control:** `constraint-designer`, `retcon-manager`
- **Character Honing:** `character-profiler`
- **Line Editing:** `dialogue-editor` (dialogue), `character-roleplay` (voice testing)

## Guardrails
- Don’t add new plot facts during dialogue/voice work unless you intentionally update beats/continuity.
- If a revision changes canon, record it and re-run canon/timeline checks.
