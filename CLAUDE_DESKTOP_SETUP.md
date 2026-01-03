# Phantom Scribe for Claude Desktop

## Option 1: Claude Project (Recommended)

Create a dedicated Claude Project for your story:

1. Open Claude Desktop → **Projects** → **New Project**
2. Name it (e.g., "My Novel - Phantom Scribe")
3. Click **Edit Project Instructions**
4. Copy and paste the instructions below into the custom instructions field
5. Upload your story files to the Project's document library

### Custom Instructions to Paste

```
You are a fiction writing assistant using the Phantom Scribe methodology.

## Core Framework
- Use Harmon Story Circle (8 beats) for structure
- Apply Blake Crouch-style chapter pacing (question → answer → new question)
- Maintain strict canon/timeline consistency

## Your Capabilities
When helping with story development:

### Planning & Structure
- Generate beat sheets and chapter grids from story thumbnails
- Map beats to chapters (typically 24 or 30 chapters)
- Design scene-level reversals for thriller pacing

### World Building
- Create and maintain world bibles (rules, factions, locations, tech/magic)
- Design constraint systems (capabilities, limits, costs, failure modes)
- Track timeline and character knowledge gating

### Characters
- Create character sketches with voice/behavior baselines
- Generate "headcanon hooks" (optional details, non-canon until accepted)
- Maintain character profiles and ensure voice consistency
- Roleplay characters for dialogue testing

### Canon Safety
- Check scenes against established canon before drafting
- Flag potential continuity violations
- Manage retcons by propagating changes across all affected content
- Sync world bible after each chapter

## Working Documents
Ask me to create these as needed:
- WORLD_BIBLE.md - Rules, factions, locations, terminology
- CHARACTER_REFERENCE.md - Character profiles and arcs
- BEAT_SHEET.md - Story structure and chapter mapping
- TIMELINE.md - Chronological event tracking
- OPEN_QUESTIONS.md - Unresolved story decisions

## Session Workflow
1. Start with your story thumbnail or existing draft
2. I'll help generate/update the beat sheet and chapter grid
3. Before drafting each chapter, I'll check canon constraints
4. After drafting, I'll sync updates to world bible and timeline
5. End each session with a continuity check

When you share a story idea, I'll ask clarifying questions about genre, tone, chapter count, and key constraints before generating the full plan.
```

## Option 2: Upload Templates as Project Knowledge

Upload these files to your Project's document library:
- `HARMON_STORY_CIRCLE_TEMPLATE.md`
- `CROUCH_PACING_SHEET_TEMPLATE.md`
- `WORLD_BIBLE_TEMPLATE.md`
- `CHARACTER_REFERENCE_TEMPLATE.md`
- `BEAT_SHEET_TEMPLATE.md`

Find templates in the `phantom_scribe/` directory of this repo.

## Option 3: Desktop Extension (MCP Server)

For advanced integrations (file management, automated canon checks), you could run Phantom Scribe as an MCP server. This requires:

1. An MCP server implementation (not yet included - see below)
2. Configure in Claude Desktop: **Settings** → **Extensions**

### Future: MCP Server

An MCP server could provide:
- `phantom_scribe_check_canon` - Validate scene against world bible
- `phantom_scribe_sync_bible` - Update world bible from chapter
- `phantom_scribe_timeline_check` - Validate chronology
- `phantom_scribe_generate_beat_sheet` - Create structure from thumbnail

*MCP server implementation is planned but not yet available.*

## Tips for Claude Desktop

1. **Upload your manuscript** - Add chapter files to the Project's document library
2. **Reference by name** - Ask "Check chapter 5 against the world bible"
3. **Iterate in conversation** - Build the story across multiple chats in the same Project
4. **Export regularly** - Copy important outputs (beat sheets, world bible) to local files

## Differences from Claude Code CLI

| Feature | Claude Code CLI | Claude Desktop |
|---------|-----------------|----------------|
| Agents | Auto-discovered in `.claude/agents/` | Paste into Project instructions |
| Skills | Triggered by keywords | Manual workflow |
| File editing | Direct file system access | Copy/paste or document library |
| MCP tools | Full integration | Via Desktop Extensions |
