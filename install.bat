@echo off
setlocal EnableExtensions EnableDelayedExpansion

REM Phantom Scribe installer (Windows)
REM Installs Codex CLI skill to %CODEX_HOME%\skills\phantom-scribe (default %USERPROFILE%\.codex\skills\phantom-scribe)
REM Optional: copies Claude agents + project skills into a repo's .claude\

if "%~1"=="/?" goto :usage
if "%~1"=="-h" goto :usage
if "%~1"=="--help" goto :usage

set FORCE=0
set INSTALL_CLAUDE=0
set CLAUDE_DIR=

:parse
if "%~1"=="" goto :done_parse
if "%~1"=="--force" (set FORCE=1& shift& goto :parse)
if "%~1"=="--claude" (set INSTALL_CLAUDE=1& shift& goto :parse)
if "%~1"=="--claude-dir" (
  if "%~2"=="" (echo Error: --claude-dir requires a path.& exit /b 2)
  set "CLAUDE_DIR=%~2"
  shift
  shift
  goto :parse
)
echo Unknown arg: %~1
goto :usage

:done_parse
set "SCRIPT_DIR=%~dp0"
REM Remove trailing backslash
if "%SCRIPT_DIR:~-1%"=="\" set "SCRIPT_DIR=%SCRIPT_DIR:~0,-1%"
for %%I in ("%SCRIPT_DIR%\..") do set "REPO_ROOT=%%~fI"

if defined CODEX_HOME (
  set "CODEX_HOME_DIR=%CODEX_HOME%"
) else (
  set "CODEX_HOME_DIR=%USERPROFILE%\.codex"
)

set "SRC=%REPO_ROOT%\phantom_scribe\codex_skill\phantom-scribe"
set "DEST=%CODEX_HOME_DIR%\skills\phantom-scribe"

if not exist "%SRC%\SKILL.md" (
  echo Error: expected skill source at: %SRC%
  exit /b 1
)

if exist "%DEST%" (
  if "%FORCE%"=="1" (
    rmdir /S /Q "%DEST%"
  ) else (
    echo Error: destination exists: %DEST%
    echo Re-run with --force to overwrite.
    exit /b 1
  )
)

if not exist "%CODEX_HOME_DIR%\skills" mkdir "%CODEX_HOME_DIR%\skills" >nul 2>&1

REM xcopy prompts unless we use /I and ensure destination exists
mkdir "%DEST%" >nul 2>&1
xcopy "%SRC%\*" "%DEST%\" /E /I /Y >nul

echo Installed Codex skill to: %DEST%
echo Restart Codex to pick up new skills.

if "%INSTALL_CLAUDE%"=="1" (
  if not defined CLAUDE_DIR (
    set "CLAUDE_DIR=%REPO_ROOT%"
  )

  set "CLAUDE_SRC=%REPO_ROOT%\phantom_scribe\.claude\agents"
  set "CLAUDE_DEST=%CLAUDE_DIR%\.claude\agents"
  set "CLAUDE_SKILLS_SRC=%REPO_ROOT%\phantom_scribe\.claude\skills"
  set "CLAUDE_SKILLS_DEST=%CLAUDE_DIR%\.claude\skills"

  if not exist "%CLAUDE_SRC%" (
    echo Error: expected Claude agents at: %CLAUDE_SRC%
    exit /b 1
  )

  if exist "%CLAUDE_DEST%" rmdir /S /Q "%CLAUDE_DEST%"
  mkdir "%CLAUDE_DEST%" >nul 2>&1
  xcopy "%CLAUDE_SRC%\*" "%CLAUDE_DEST%\" /E /I /Y >nul

  echo Installed Claude agents to: %CLAUDE_DEST%

  if exist "%CLAUDE_SKILLS_SRC%" (
    if exist "%CLAUDE_SKILLS_DEST%" rmdir /S /Q "%CLAUDE_SKILLS_DEST%"
    mkdir "%CLAUDE_SKILLS_DEST%" >nul 2>&1
    xcopy "%CLAUDE_SKILLS_SRC%\*" "%CLAUDE_SKILLS_DEST%\" /E /I /Y >nul
    echo Installed Claude project skills to: %CLAUDE_SKILLS_DEST%
  )

  echo Restart Claude Code ^(or reload agents^) to pick them up.
)

exit /b 0

:usage
echo Phantom Scribe installer (Windows)
echo.
echo Usage:
echo   phantom_scribe\install.bat [--force] [--claude] [--claude-dir C:\path\to\repo]
echo.
echo Notes:
echo   - Restart Codex after installing the skill.
echo   - Run from repository root if using --claude without --claude-dir.
exit /b 0
