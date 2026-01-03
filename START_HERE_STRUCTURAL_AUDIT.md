# 🔍 START HERE - STRUCTURAL AUDIT SESSION

**Last Updated:** 2025-11-03
**Purpose:** Iterative structural review workflow for beat alignment and narrative consistency
**Session Type:** Non-destructive analysis with suggestion-based workflow

---

## 🎯 OVERVIEW

This document guides structural audits of the Polybius novella using the **narrative-structure-architect** agent. The workflow is designed to be:

- **Non-destructive**: Agent creates `.suggestion.md` files for review
- **Iterative**: Review suggestions → decide → implement → repeat
- **Comprehensive**: Checks beat coverage, causality, character knowledge, and continuity
- **Documented**: Maintains changelog of all fixes applied

---

## 🔄 WORKFLOW INTEGRATION

**This is Phase 1 (FOUNDATION) of the editing workflow:**
1. **→ YOU ARE HERE:** Structural Audit - Verify beat alignment and causality
2. **Character Honing** (START_HERE_CHARACTER_HONING.md) - Lock character/place consistency
3. **Line Editing** (START_HERE_LINE_EDITING.md) - Polish prose quality
4. **Copy Editing** (START_HERE_COPY_EDITING.md) - Fix mechanical errors

**WHY THIS COMES FIRST:**
- Structure must be sound before polishing prose
- Avoid wasting tokens editing scenes that need structural rewrites
- Beat alignment issues can cascade across multiple chapters
- Character knowledge violations are structural problems

**BEFORE YOU START:**
- Check for existing `.suggestion.md` files from previous structural audits
- Review the changelog below to see what's already been fixed
- Coordinate with other phases if issues span multiple concerns

**CROSS-PHASE COMMUNICATION:**
- If character inconsistencies found → Also note in CHARACTER_HONING_LOG.md
- If dialogue needs work → Create `.suggestion.md` for dialogue-editor agent
- If prose quality issues found during audit → Note for line editing phase (don't fix here)
- Structure is LOCKED after this phase - later phases should not change beats

**AGENTS THAT CREATE STRUCTURAL SUGGESTIONS:**
- `narrative-structure-architect`: Comprehensive beat/causality/continuity audits
- `dialogue-editor`: May flag structural dialogue issues during line editing
- `character-profiler`: May identify character knowledge violations

---

## 📋 AUDIT WORKFLOW

### Phase 1: Review Existing Suggestions
**BEFORE running a new audit, check for existing `.suggestion.md` files:**

```bash
ls *.suggestion.md
```

These files contain previous agent recommendations that may not have been implemented yet. Review and decide:
- ✅ Implement the suggestion
- ❌ Reject the suggestion (document why)
- 🤔 Defer for later consideration

### Phase 2: Run Structural Audit
Invoke the narrative-structure-architect agent to analyze current state.

### Phase 3: Review Audit Output
Agent will create new `.suggestion.md` files for any issues found. Review each suggestion carefully before implementing.

### Phase 4: Implement Fixes
For approved suggestions:
1. Make the edit to the chapter file
2. Log the fix in the changelog below
3. Delete or archive the `.suggestion.md` file
4. Verify the fix didn't introduce new issues

### Phase 5: Re-audit (if needed)
If major changes were made, run another audit to verify integrity.

---

## ⚠️ CURRENT KNOWN ISSUES

**Check existing `.suggestion.md` files for unresolved issues.**

Example format:
- `CHAPTER_3_4_BEAT_ALIGNMENT.suggestion.md` - Status: ✅ Resolved (2025-11-03)
- `[filename].suggestion.md` - Status: 🔍 Under review

---

## 🔧 STRUCTURAL AUDIT CHECKLIST

When invoking the narrative-structure-architect agent, ensure it checks:

1. **Beat Coverage Mapping**
   - Does each chapter cover its assigned beats from the beat sheet?
   - Are any beats missing, duplicated, or out of order?
   - Do chapter transitions align with act breaks?

2. **Causal Information Flow**
   - Is knowledge revealed in the correct procedural order?
   - Can characters access information when they need it?
   - Are there "information cascade failures" (knowledge revealed too early)?

3. **Scene Redundancies**
   - Are there duplicate conversations/scenes across chapters?
   - Do multiple chapters cover the same content?

4. **Character Knowledge Consistency**
   - Does each character know only what they should at each point?
   - Are there impossible knowledge leaps?

5. **Plot Continuity**
   - Do events flow logically from chapter to chapter?
   - Are there contradictions or timeline issues?

---

## 📁 FILES TO ANALYZE

### Primary Documents (READ THESE FIRST):

1. **polybius_beat_sheet.md**
   - 47 beats across 6 acts
   - Detailed beat descriptions with what should happen when
   - Character knowledge states at each beat
   - THIS IS THE CANONICAL STRUCTURE

2. **BEAT_TRACKING.md**
   - Shows which chapters were supposed to cover which beats
   - Current completion status
   - Known issues already documented

3. **CONTINUITY_REPORT.md**
   - Previous continuity fixes applied
   - What's already been corrected
   - Areas already verified

4. **CHAPTER_3_4_BEAT_ALIGNMENT.suggestion.md**
   - Detailed analysis of discovered issue
   - Example of what to look for
   - Agent analysis methodology

### Chapter Files to Audit (23 files total):

**Act 1-3 (Chapters 1-12):**
- polybius_chapters/chapter_01_the_archive.md (Beats 1-2)
- polybius_chapters/chapter_02_the_flash.md (Beats 3-4)
- polybius_chapters/chapter_03_pattern_recognition.md (Beats 5-7)
- polybius_chapters/chapter_04_the_storage_unit.md (Beats 8-9)
- polybius_chapters/chapter_05_dads_notebooks.md (Beats 10-12)
- polybius_chapters/chapter_06_the_oeis_discovery.md (Beats 13-14)
- polybius_chapters/chapter_07_meeting_dr_webb.md (Beats 15-16)
- polybius_chapters/chapter_08_dr_klines_interview.md (Beats 17-18)
- polybius_chapters/chapter_09_symptoms_and_archive.md (Beats 19-20)
- polybius_chapters/chapter_10_1998_and_gresham.md (Beats 21-22)
- polybius_chapters/chapter_11_the_watcher.md (Beat 23)
- polybius_chapters/chapter_12_the_presence.md (Beat 24)

**Act 4 (Chapters 13-15):**
- polybius_chapters/chapter_13_dammasch.md (Beats 25-26)
- polybius_chapters/chapter_14_the_watching.md (Beats 27-29)
- polybius_chapters/chapter_15_the_location.md (Beat 30)

**Act 5-6 (Chapters 16-22 + Epilogue):**
- polybius_chapters/chapter_16_access.md (Beats 31-32)
- polybius_chapters/chapter_17_descent.md (Beats 33-35)
- polybius_chapters/chapter_18_interface.md (Beats 35-37)
- polybius_chapters/chapter_19_the_three_paths.md (Beats 38-39)
- polybius_chapters/chapter_20_the_collapse.md (Beats 40-41)
- polybius_chapters/chapter_21_the_workshop.md (Beats 42-44)
- polybius_chapters/epilogue_the_dream.md (Beats 45-47)

**Note:** Some chapter files are misnumbered (documented in BEAT_TRACKING.md) but contain correct content.

---

## 🤖 HOW TO INVOKE THE AGENT

Use the Task tool with `subagent_type: "narrative-structure-architect"` with a prompt like:

```
I need a comprehensive structural audit of the Polybius novella.

CONTEXT:
[Describe what prompted this audit - e.g., "Found a potential beat misalignment"
or "Before starting line editing" or "After making major structural changes"]

IMPORTANT - CHECK EXISTING SUGGESTIONS FIRST:
Before analyzing, scan for existing `.suggestion.md` files in the working directory.
Review their status and incorporate any implemented fixes into your analysis.

TASK:
Perform a beat-by-beat structural audit of all 23 chapters against the 47-beat
structure in polybius_beat_sheet.md.

FOR EACH CHAPTER, CHECK:
1. Beat coverage - does it cover assigned beats completely?
2. Information reveals - is knowledge given in correct causal order?
3. Character knowledge - do characters know only what they should?
4. Scene redundancy - any duplicate content with other chapters?
5. Procedural access - can characters learn what they need when they need it?

FILES TO ANALYZE:
- polybius_beat_sheet.md (canonical structure)
- BEAT_TRACKING.md (chapter-to-beat mapping)
- All 23 chapter files in polybius_chapters/
- Any existing *.suggestion.md files (check implementation status)
- CONTINUITY_REPORT.md (previous fixes)

OUTPUT:
Create a comprehensive structural audit report as POLYBIUS_STRUCTURAL_AUDIT.md:
1. Chapter-by-chapter beat coverage matrix
2. List of any misalignments found
3. Information flow analysis (who knows what when)
4. Recommended fixes for any issues
5. Verification that Acts 2-6 causal chain is intact

For any MAJOR issues requiring significant rewrites:
- Create a new `.suggestion.md` file with detailed analysis
- Do NOT implement changes directly
- Let the author review and approve before applying

For MINOR issues (typos, small continuity fixes):
- Include in the audit report
- These can be fixed during line editing
```

---

## 📊 AGENT OUTPUT EXPECTATIONS

The narrative-structure-architect should produce:

1. **Beat Coverage Matrix**
   - Table showing which chapters cover which beats
   - Gaps, overlaps, or misalignments highlighted

2. **Issue List**
   - Any chapters with beat misalignment
   - Information revealed too early/late
   - Character knowledge violations
   - Scene duplications

3. **Causal Chain Analysis**
   - Does the investigation flow logically?
   - Can the protagonist access information procedurally?
   - Are there shortcuts that break the mystery?

4. **Fix Recommendations**
   - Specific edits needed for each issue
   - Priority ranking (critical vs. minor)
   - Create `.suggestion.md` files for major structural changes

---

## 🔄 AFTER THE AUDIT

Once the agent completes the structural audit:

### If NO major issues found:
1. Review and approve the audit report
2. Continue with line editing or other work
3. Log completion in changelog below

### If issues found:
1. Review each `.suggestion.md` file created by the agent
2. For each suggestion, decide:
   - ✅ **Approve & Implement**: Make the changes, log in changelog, archive suggestion
   - ❌ **Reject**: Document reason in changelog, archive suggestion
   - 🤔 **Defer**: Leave suggestion file for later review
3. After implementing approved fixes, consider re-running audit to verify
4. Update changelog with all decisions and implementations

---

## 📝 CHANGELOG OF STRUCTURAL FIXES

**Format:** `[Date] - [Issue] - [Action Taken] - [Status]`

### 2025-11-03
- **Chapter 3 Beat Misalignment**: Mom's phone call revealed Beat 30 location information prematurely
  - **Suggestion**: `CHAPTER_3_4_BEAT_ALIGNMENT.suggestion.md`
  - **Action**: Deleted phone call (lines 146-210), replaced with internal monologue focusing on OEIS discovery and need for investigation
  - **Status**: ✅ Implemented and verified
  - **Files Changed**: `polybius_chapters/chapter_03_pattern_recognition.md`
  - **Verification**: Chapter 3-4 transition flows smoothly; Beat 30 reveal preserved

- **Duplicate Chapter 9 File**: Orphaned early draft with Beat 26 content
  - **Action**: Deleted `chapter_09_father_and_child.md` (duplicate/misnumbered file)
  - **Status**: ✅ Completed
  - **Note**: Correct Chapter 9 (`chapter_09_symptoms_and_archive.md`) remains intact

### Template for Future Entries:
```
### [Date]
- **[Issue Title]**: [Brief description]
  - **Suggestion**: [Link to .suggestion.md file if applicable]
  - **Action**: [What was done]
  - **Status**: [✅ Implemented | ❌ Rejected | 🤔 Deferred]
  - **Files Changed**: [List of files]
  - **Verification**: [How it was verified]
  - **Reason for Rejection**: [If rejected, why]
```

---

## 📈 AUDIT HISTORY

Track when structural audits were run and their outcomes:

| Date | Auditor | Scope | Issues Found | Status |
|------|---------|-------|--------------|--------|
| 2025-11-03 | narrative-structure-architect | All 23 chapters + epilogue | 2 issues (Ch 3 beat misalignment, duplicate file) | ✅ Resolved |

---

## 📝 NOTES FOR CLAUDE

**Key Principles:**
- The beat sheet (polybius_beat_sheet.md) is CANONICAL - structure must align with those 47 beats
- Focus on **causality**, not prose quality
- Think in terms of **procedural access** and information flow
- Be **non-destructive**: Create `.suggestion.md` files for major changes
- Be **thorough**: Better to catch issues early than during line editing

**Workflow Reminder:**
1. Check for existing `.suggestion.md` files FIRST
2. Review what's been implemented (check changelog above)
3. Run audit with current state
4. Create NEW `.suggestion.md` files for any issues found
5. Let the author decide what to implement

**Common Issues to Watch For:**
- Information revealed too early (breaks causal chain)
- Character knowledge violations (knows what they shouldn't)
- Beat coverage gaps or overlaps
- Scene redundancies across chapters
- Procedural access violations (can't legitimately obtain information)
