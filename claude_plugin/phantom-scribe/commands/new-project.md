---
description: Create a new story workspace from templates (argument: chapter count)
---

Create a new project workspace using Phantom Scribe templates.

1) Ask for a destination folder (default: `stories/my_story`) if the user didn’t provide one.
2) Use the chapter count from "$ARGUMENTS" (default to 24 if empty).
3) Preferred method:
   - Run `scripts/new_project.sh <project_dir> <chapters> --with-agents`
4) If running commands isn’t possible, create the same folder structure and files manually:
   - `chapters/`, `world/`, `logs/`, `notes/`
   - Copy templates from `assets/templates/` into the new workspace
   - Create chapter stubs `chapters/chapter_01.md`…`chapter_XX.md`

