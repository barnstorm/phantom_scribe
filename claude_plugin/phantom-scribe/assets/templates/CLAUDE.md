# Claude Code Setup (Phantom Scribe)

If you use Claude Code, this repo can provide project-local agents and a repeatable story workflow.

## Install Agents Into a Repo

From the repo root:
- macOS/Linux: `./phantom_scribe/install.sh --claude`
- Windows: `phantom_scribe\\install.bat --claude`

This copies agent prompts into `.claude/agents/` in the target repo.

## How To Start a New Story Session

1. Create a new workspace (recommended):
   - `phantom_scribe/scripts/new_project.sh stories/my_story 24 --with-agents`
2. In Claude Code, start in that new folder and ask:
   - “Help me write a story. Here’s my thumbnail: …”
3. Manually invoke `story-orchestrator` to generate:
   - Harmon Story Circle (8 beats)
   - Chapter grid (question → answer → constraint → cost)
   - Beat-to-chapter mapping

## Which Agent When

See `phantom_scribe/AGENTS_USAGE.md` for details. Common loop:
- Planning: `story-orchestrator`
- World rules: `constraint-designer` → `worldbible-builder` → `canon-keeper`
- Timeline sanity: `timeline-keeper`
- Dialogue polish: `dialogue-editor`
- Voice testing: `character-roleplay`
- Character consistency: `character-profiler`
- Retcons: `retcon-manager`

