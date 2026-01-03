#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage:
  phantom_scribe/scripts/new_project.sh <project_dir> <chapters> [--with-agents]

Creates a new story workspace seeded from phantom_scribe templates.

Examples:
  phantom_scribe/scripts/new_project.sh stories/my_novel 24 --with-agents
  phantom_scribe/scripts/new_project.sh stories/my_thriller 30
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

root_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

mkdir -p "$project_dir"/{chapters,world,logs,notes}

cp "$root_dir/START_HERE_TEMPLATE.md" "$project_dir/START_HERE.md"
cp "$root_dir/BEAT_SHEET_TEMPLATE.md" "$project_dir/world/BEAT_SHEET.md"
cp "$root_dir/BEAT_TRACKING_TEMPLATE.md" "$project_dir/BEAT_TRACKING.md"
cp "$root_dir/TODO_INDEX_TEMPLATE.md" "$project_dir/TODO_INDEX.md"
cp "$root_dir/CROUCH_PACING_SHEET_TEMPLATE.md" "$project_dir/world/PACING_SHEET.md"
cp "$root_dir/HARMON_STORY_CIRCLE_TEMPLATE.md" "$project_dir/world/HARMON_STORY_CIRCLE.md"
cp "$root_dir/HARMON_CROUCH_CHAPTER_GRIDS.md" "$project_dir/world/HARMON_CROUCH_CHAPTER_GRIDS.md"
cp "$root_dir/CONTINUITY_REPORT_TEMPLATE.md" "$project_dir/logs/CONTINUITY_REPORT.md"
cp "$root_dir/PASS_LOG_TEMPLATES.md" "$project_dir/logs/PASS_LOG_TEMPLATES.md"
cp "$root_dir/IMPROVEMENTS_LOG_TEMPLATE.md" "$project_dir/logs/IMPROVEMENTS_LOG.md"
cp "$root_dir/STRUCTURAL_AUDIT_TEMPLATE.md" "$project_dir/world/STRUCTURAL_AUDIT.md"
cp "$root_dir/AGENTS_USAGE.md" "$project_dir/AGENTS_USAGE.md"
cp "$root_dir/CLAUDE.md" "$project_dir/CLAUDE.md"

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
  cp -r "$root_dir/.claude/agents" "$project_dir/.claude/"
fi

echo "Created project in: $project_dir"
