#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  scripts/new_project.sh <project_dir> <chapters> [--with-agents]

Seeds a new story workspace from the Phantom Scribe skill assets.
EOF
}

if [[ $# -lt 2 ]]; then
  usage
  exit 1
fi

project_dir="$1"
chapters="$2"
with_agents="${3:-}"

if ! [[ "$chapters" =~ ^[0-9]+$ ]] || [[ "$chapters" -lt 1 ]]; then
  echo "Error: <chapters> must be a positive integer." >&2
  exit 1
fi

skill_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
assets="$skill_dir/assets"

mkdir -p "$project_dir"/{chapters,world,characters,logs,notes}

cp "$assets/templates/START_HERE_TEMPLATE.md" "$project_dir/START_HERE.md"
cp "$assets/templates/BEAT_SHEET_TEMPLATE.md" "$project_dir/world/BEAT_SHEET.md"
cp "$assets/templates/WORLD_BIBLE_TEMPLATE.md" "$project_dir/world/WORLD_BIBLE.md"
cp "$assets/templates/BEAT_TRACKING_TEMPLATE.md" "$project_dir/BEAT_TRACKING.md"
cp "$assets/templates/TODO_INDEX_TEMPLATE.md" "$project_dir/TODO_INDEX.md"
cp "$assets/templates/CROUCH_PACING_SHEET_TEMPLATE.md" "$project_dir/world/PACING_SHEET.md"
cp "$assets/templates/HARMON_STORY_CIRCLE_TEMPLATE.md" "$project_dir/world/HARMON_STORY_CIRCLE.md"
cp "$assets/templates/HARMON_CROUCH_CHAPTER_GRIDS.md" "$project_dir/world/HARMON_CROUCH_CHAPTER_GRIDS.md"
cp "$assets/templates/CONTINUITY_REPORT_TEMPLATE.md" "$project_dir/logs/CONTINUITY_REPORT.md"
cp "$assets/templates/PASS_LOG_TEMPLATES.md" "$project_dir/logs/PASS_LOG_TEMPLATES.md"
cp "$assets/templates/IMPROVEMENTS_LOG_TEMPLATE.md" "$project_dir/logs/IMPROVEMENTS_LOG.md"
cp "$assets/templates/STRUCTURAL_AUDIT_TEMPLATE.md" "$project_dir/world/STRUCTURAL_AUDIT.md"
cp "$assets/templates/AGENTS_USAGE.md" "$project_dir/AGENTS_USAGE.md"
cp "$assets/templates/CLAUDE.md" "$project_dir/CLAUDE.md"
cp "$assets/templates/END_OF_SESSION_CHECKLIST.md" "$project_dir/END_OF_SESSION_CHECKLIST.md"
cp "$assets/templates/CHAPTER_DONE_CHECKLIST.md" "$project_dir/CHAPTER_DONE_CHECKLIST.md"
cp "$assets/templates/WORLD_BIBLE_SYNC_CHECKLIST.md" "$project_dir/WORLD_BIBLE_SYNC_CHECKLIST.md"
cp "$assets/templates/OPEN_QUESTIONS_TEMPLATE.md" "$project_dir/OPEN_QUESTIONS.md"
cp "$assets/templates/WORKSPACE_LAYOUT.md" "$project_dir/WORKSPACE_LAYOUT.md"
cp "$assets/templates/CLUE_LEDGER_TEMPLATE.md" "$project_dir/world/CLUE_LEDGER.md"
cp "$assets/templates/CHARACTER_REFERENCE_TEMPLATE.md" "$project_dir/characters/CHARACTER_REFERENCE.md"
cp "$assets/templates/CHARACTER_SKETCH_TEMPLATE.md" "$project_dir/characters/CHARACTER_SKETCH_TEMPLATE.md"

for i in $(seq 1 "$chapters"); do
  printf -v n "%02d" "$i"
  cat >"$project_dir/chapters/chapter_${n}.md" <<EOF
# Chapter ${i}: <Title>

**Beats Covered:** <beats>
**Word Target:** <target>
**POV:** <pov>
**Tense:** <tense>

---

<draft>
EOF
done

if [[ "$with_agents" == "--with-agents" ]]; then
  mkdir -p "$project_dir/.claude"
  cp -r "$assets/claude/agents" "$project_dir/.claude/"
  if [[ -d "$assets/claude/skills" ]]; then
    cp -r "$assets/claude/skills" "$project_dir/.claude/"
  fi
fi

echo "Created project in: $project_dir"
