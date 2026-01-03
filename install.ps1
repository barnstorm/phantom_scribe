<#
.SYNOPSIS
    Phantom Scribe installer (Windows PowerShell)

.DESCRIPTION
    Installs:
      1) Codex CLI skill -> $env:CODEX_HOME\skills\phantom-scribe (default $env:USERPROFILE\.codex\skills\phantom-scribe)
      2) (Optional) Claude Code agents + project Skill into a repo's .claude\

.PARAMETER Force
    Overwrite existing installation

.PARAMETER Claude
    Also install Claude Code agents and project skills

.PARAMETER ClaudeDir
    Target directory for Claude agents (defaults to repo root)

.EXAMPLE
    .\install.ps1
    .\install.ps1 -Force
    .\install.ps1 -Claude
    .\install.ps1 -Claude -ClaudeDir C:\path\to\repo
#>

[CmdletBinding()]
param(
    [switch]$Force,
    [switch]$Claude,
    [string]$ClaudeDir
)

$ErrorActionPreference = 'Stop'

# Resolve paths
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$RepoRoot = Split-Path -Parent $ScriptDir

$CodexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $env:USERPROFILE '.codex' }
$Src = Join-Path $RepoRoot 'phantom_scribe\codex_skill\phantom-scribe'
$Dest = Join-Path $CodexHome 'skills\phantom-scribe'

# Validate source
if (-not (Test-Path (Join-Path $Src 'SKILL.md'))) {
    Write-Error "Expected skill source at: $Src"
    exit 1
}

# Check destination
if ((Test-Path $Dest) -and -not $Force) {
    Write-Error "Destination exists: $Dest`nRe-run with -Force to overwrite."
    exit 1
}

# Create skills directory
$SkillsDir = Join-Path $CodexHome 'skills'
if (-not (Test-Path $SkillsDir)) {
    New-Item -ItemType Directory -Path $SkillsDir -Force | Out-Null
}

# Remove existing and copy
if (Test-Path $Dest) {
    Remove-Item -Recurse -Force $Dest
}
Copy-Item -Recurse -Force $Src $Dest

Write-Host "Installed Codex skill to: $Dest" -ForegroundColor Green
Write-Host "Restart Codex to pick up new skills."

# Claude agents installation
if ($Claude) {
    if (-not $ClaudeDir) {
        $ClaudeDir = $RepoRoot
    }

    $ClaudeAgentsSrc = Join-Path $RepoRoot 'phantom_scribe\.claude\agents'
    $ClaudeAgentsDest = Join-Path $ClaudeDir '.claude\agents'
    $ClaudeSkillsSrc = Join-Path $RepoRoot 'phantom_scribe\.claude\skills'
    $ClaudeSkillsDest = Join-Path $ClaudeDir '.claude\skills'

    if (-not (Test-Path $ClaudeAgentsSrc)) {
        Write-Error "Expected Claude agents at: $ClaudeAgentsSrc"
        exit 1
    }

    # Install agents
    if (Test-Path $ClaudeAgentsDest) {
        Remove-Item -Recurse -Force $ClaudeAgentsDest
    }
    New-Item -ItemType Directory -Path $ClaudeAgentsDest -Force | Out-Null
    Copy-Item -Recurse -Force (Join-Path $ClaudeAgentsSrc '*') $ClaudeAgentsDest

    Write-Host "Installed Claude agents to: $ClaudeAgentsDest" -ForegroundColor Green

    # Install skills if they exist
    if (Test-Path $ClaudeSkillsSrc) {
        if (Test-Path $ClaudeSkillsDest) {
            Remove-Item -Recurse -Force $ClaudeSkillsDest
        }
        New-Item -ItemType Directory -Path $ClaudeSkillsDest -Force | Out-Null
        Copy-Item -Recurse -Force (Join-Path $ClaudeSkillsSrc '*') $ClaudeSkillsDest

        Write-Host "Installed Claude project skills to: $ClaudeSkillsDest" -ForegroundColor Green
    }

    Write-Host "Restart Claude Code (or reload agents) to pick them up."
}
