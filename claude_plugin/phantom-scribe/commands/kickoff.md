---
description: Turn a thumbnail into a Harmon macro + Crouch-paced chapter plan
---

Use the `story-orchestrator` agent to turn this thumbnail into a chapter-ready plan:

- Thumbnail: "$ARGUMENTS"

Requirements:
- Ask for missing essentials (genre/tone, target length 24/30 or audio hours, POV/tense, rule hardness), but proceed with sensible defaults if the user is unsure.
- Output:
  - Harmon Story Circle (8 beats)
  - Chapter grid (question → answer → new constraint → cost)
  - Beat-to-chapter mapping (1–3 beats per chapter)
- End by recommending `phantom_scribe/scripts/new_project.sh` (or this plugin’s `/phantom-scribe:new-project`) to create a workspace.

