#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Phantom Scribe installer (macOS/Linux)

Installs:
  1) Codex CLI skill -> $CODEX_HOME/skills/phantom-scribe (default $HOME/.codex/skills/phantom-scribe)
  2) (Optional) Claude Code agents + project Skill into a repo's .claude/

Usage:
  ./phantom_scribe/install.sh
  ./phantom_scribe/install.sh --force
  ./phantom_scribe/install.sh --claude
  ./phantom_scribe/install.sh --claude --claude-dir /path/to/repo

Notes:
  - Restart Codex after installing the skill.
  - Run this from the repository root if you use --claude without --claude-dir.
EOF
}

force=0
install_claude=0
claude_dir=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    -h|--help) usage; exit 0 ;;
    --force) force=1; shift ;;
    --claude) install_claude=1; shift ;;
    --claude-dir)
      claude_dir="${2:-}"
      if [[ -z "$claude_dir" ]]; then
        echo "Error: --claude-dir requires a path." >&2
        exit 2
      fi
      shift 2
      ;;
    *)
      echo "Unknown arg: $1" >&2
      usage
      exit 2
      ;;
  esac
done

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "$script_dir/.." && pwd)"

codex_home="${CODEX_HOME:-$HOME/.codex}"
dest="$codex_home/skills/phantom-scribe"
src="$repo_root/phantom_scribe/codex_skill/phantom-scribe"

if [[ ! -d "$src" ]]; then
  echo "Error: expected skill source at: $src" >&2
  exit 1
fi

if [[ -e "$dest" && "$force" -ne 1 ]]; then
  echo "Error: destination exists: $dest" >&2
  echo "Re-run with --force to overwrite." >&2
  exit 1
fi

mkdir -p "$codex_home/skills"
rm -rf "$dest"

if command -v rsync >/dev/null 2>&1; then
  rsync -a --delete "$src/" "$dest/"
else
  cp -R "$src" "$dest"
fi

chmod +x "$dest/scripts/new_project.sh" 2>/dev/null || true

echo "Installed Codex skill to: $dest"
echo "Restart Codex to pick up new skills."

if [[ "$install_claude" -eq 1 ]]; then
  if [[ -z "$claude_dir" ]]; then
    claude_dir="$repo_root"
  fi

  claude_agents_src="$repo_root/phantom_scribe/.claude/agents"
  claude_agents_dest="$claude_dir/.claude/agents"
  claude_skills_src="$repo_root/phantom_scribe/.claude/skills"
  claude_skills_dest="$claude_dir/.claude/skills"

  if [[ ! -d "$claude_agents_src" ]]; then
    echo "Error: expected Claude agents at: $claude_agents_src" >&2
    exit 1
  fi

  mkdir -p "$claude_agents_dest"

  if command -v rsync >/dev/null 2>&1; then
    rsync -a --delete "$claude_agents_src/" "$claude_agents_dest/"
  else
    rm -rf "$claude_agents_dest"
    mkdir -p "$claude_agents_dest"
    cp -R "$claude_agents_src/"* "$claude_agents_dest/"
  fi

  echo "Installed Claude agents to: $claude_agents_dest"

  if [[ -d "$claude_skills_src" ]]; then
    mkdir -p "$claude_skills_dest"
    if command -v rsync >/dev/null 2>&1; then
      rsync -a --delete "$claude_skills_src/" "$claude_skills_dest/"
    else
      rm -rf "$claude_skills_dest"
      mkdir -p "$claude_skills_dest"
      cp -R "$claude_skills_src/"* "$claude_skills_dest/"
    fi
    echo "Installed Claude project skills to: $claude_skills_dest"
  fi

  echo "Restart Claude Code (or reload agents) to pick them up."
fi
