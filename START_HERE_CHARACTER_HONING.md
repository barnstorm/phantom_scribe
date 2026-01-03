# 🎭 CHARACTER & PLACE HONING - START HERE

**Phase:** Character/Place Consistency Pass
**Purpose:** Ensure all character details, physical descriptions, and place details are consistent throughout the 46,000-word novel
**Status:** Ready to begin

---

## 🔄 WORKFLOW INTEGRATION

**This is Phase 2 of the editing workflow:**
1. ✅ **Structural Audit** (START_HERE_STRUCTURAL_AUDIT.md) - Verify beat alignment and causality
2. **→ YOU ARE HERE:** Character Honing - Lock character/place consistency
3. **Line Editing** (START_HERE_LINE_EDITING.md) - Polish prose quality
4. **Copy Editing** (START_HERE_COPY_EDITING.md) - Fix mechanical errors

**BEFORE YOU START:**
- Review `START_HERE_STRUCTURAL_AUDIT.md` changelog to ensure structure is sound
- Check for `.suggestion.md` files from character-profiler or narrative-structure-architect
- If structure issues are found during character work, STOP and flag for structural audit

**CROSS-PHASE COMMUNICATION:**
- If beat misalignment discovered → Create `.suggestion.md` for structural audit review
- If dialogue needs refinement → Create `.suggestion.md` for dialogue-editor agent
- If character knowledge violations found → Flag for both character consistency AND structural audit
- Use character-profiler agent to generate profiles, review before implementing changes

**AGENTS AVAILABLE:**
- `character-profiler`: Creates detailed character profile documents from story text
- `character-roleplay`: Tests character authenticity and voice consistency
- `narrative-structure-architect`: Can verify if character changes affect story structure

---

## ⚠️ CRITICAL: TOKEN MANAGEMENT

**Your token budget is precious. Follow these rules:**

1. **Work ONE chapter at a time** - Complete, document, move on
2. **At 100k tokens (50%):** Stop, update tracking, recommend new session
3. **Don't re-read unnecessarily** - Use your notes, trust the system
4. **Batch similar checks** - Do all character checks in one pass per chapter

---

## 🎯 YOUR TASK

Review each chapter for **character and place consistency**. The story structure and beats are **LOCKED** - do not change plot, pacing, or continuity.

### What You're Checking:

**CHARACTER DETAILS:**
- Physical descriptions (age, appearance, mannerisms)
- Names and titles (Dr. Webb vs Marcus Webb, etc.)
- Relationships (family connections, professional titles)
- Character knowledge at each point (what they know when)
- Behavioral consistency (speech patterns, reactions)
- Temporal accuracy (ages must match timeline)

**PLACE DETAILS:**
- Location descriptions (PSU campus, Dammasch, archive, etc.)
- Geography consistency (distances, directions, Portland references)
- Building/room descriptions (concrete room dimensions, workshop details)
- Atmospheric details (weather, lighting, sounds)
- Temporal markers (1980 vs 2017, season consistency)

---

## 📋 BEFORE YOU START

### 1. Read These First (5 minutes):
- `CHARACTER_REFERENCE.md` - Master character list (you'll create this first)
- `PLACE_REFERENCE.md` - Master location list (you'll create this first)
- `BEAT_TRACKING.md` - The locked structure (DO NOT CHANGE)
- `CONTINUITY_REPORT.md` - Issues already fixed

### 2. Your First Task:
**Create master reference documents** using the character-profiler agent:

**⚡ USE CHARACTER-PROFILER AGENT to create `CHARACTER_REFERENCE.md`:**
- Invoke with Task tool, `subagent_type: "character-profiler"`
- Process major characters from the story chapters
- Agent will create detailed markdown profiles for:
  - Alex Reeves (age, appearance, job, key traits)
  - James "Dad" Reeves (physical details, timeline)
  - Ellen (Mom) Reeves (mentioned details)
  - Dr. Marcus Webb (age, appearance, role)
  - Dr. Sarah Kline (details from Ch 8)
  - Catherine Torres (age, appearance, history)
  - Tom Briggs (facility manager details)
  - Timothy Marsh & Aiden Reeves (the missing children)
  - The 1998 cohort (43 people - general details)
  - The 2017 research team (5 people including Kline)
- Agent creates structured profiles based on text evidence
- Much faster and more thorough than manual extraction

**Create `PLACE_REFERENCE.md`** with:
- Portland Herald archive (basement, Alex's workspace)
- PSU campus (Cramer Hall, old physics building)
- Sub-basement (dimensions, door markings, room details)
- Dammasch Psychiatric Hospital (1960s architecture)
- Dad's workshop (1980 setting, spring light)
- Storage unit (Canyon Road, Beaverton)
- Gresham locations (arcade, Catherine's residence)

---

## 🔄 WORKFLOW: ONE CHAPTER AT A TIME

### For Each Chapter:

**1. SCAN (Quick Read):**
- Note all character mentions
- Note all place descriptions
- Flag anything that seems off

**2. VERIFY (Check References):**
- Cross-check against `CHARACTER_REFERENCE.md`
- Cross-check against `PLACE_REFERENCE.md`
- Check character ages against timeline (1980 vs 2017)

**3. FIX (If Needed):**
- Inconsistent physical descriptions
- Wrong ages or titles
- Contradictory place details
- Out-of-character dialogue/behavior

**4. DOCUMENT:**
- Note what you fixed in `CHARACTER_HONING_LOG.md`
- Update references if you discover new canonical details
- Mark chapter as ✅ HONED in tracking

**5. MOVE ON:**
- Don't linger, don't perfect prose (that's line editing)
- Token budget is limited!

---

## ❌ WHAT NOT TO DO

**DO NOT:**
- ❌ Change plot points or story beats (LOCKED)
- ❌ Rewrite sentences for style (that's line editing)
- ❌ Fix typos or grammar (that's copy editing)
- ❌ Add new scenes or content
- ❌ Change character motivations or arcs
- ❌ Alter the continuity fixes already applied
- ❌ Re-read chapters multiple times (trust your notes)
- ❌ Work on multiple chapters simultaneously (finish one first)

**DO:**
- ✅ Fix character detail contradictions
- ✅ Ensure names/titles are consistent
- ✅ Verify ages match the timeline
- ✅ Make place descriptions consistent
- ✅ Ensure character knowledge is appropriate to scene timing
- ✅ Work efficiently chapter by chapter
- ✅ Track your progress meticulously

---

## 📊 CHAPTER LIST (Reading Order)

Work through in this order:

**Act 1-3 (Chapters 1-12):**
- chapter_01_the_archive.md
- chapter_02_the_flash.md
- chapter_03_pattern_recognition.md
- chapter_04_the_storage_unit.md
- chapter_05_dads_notebooks.md
- chapter_06_the_oeis_discovery.md
- chapter_07_meeting_dr_webb.md
- chapter_08_dr_klines_interview.md
- chapter_09_symptoms_and_archive.md
- chapter_10_1998_and_gresham.md
- chapter_11_the_watcher.md
- chapter_12_the_presence.md

**Act 4 (Chapters 13-15):**
- chapter_13_dammasch.md
- chapter_14_the_watching.md
- chapter_15_the_location.md

**Act 5-6 (Chapters 16-22):**
- chapter_16_access.md (Ch 16)
- chapter_17_descent.md (Ch 17)
- chapter_18_interface.md (Ch 18)
- chapter_19_the_three_paths.md (Ch 19)
- chapter_20_the_collapse.md (Ch 20)
- chapter_21_the_workshop.md (Ch 21)
- epilogue_the_dream.md

---

## 🎯 SUCCESS CRITERIA

**Chapter is ✅ HONED when:**
- All character details match reference document
- All place descriptions are consistent
- Character ages accurate for timeline
- No contradictory physical descriptions
- Names/titles used consistently
- Character knowledge appropriate to scene
- Documented in tracking log

---

## 📝 TRACKING YOUR WORK

Update `CHARACTER_HONING_LOG.md` after each chapter:

```markdown
## Chapter X: [Title]
**Status:** ✅ Honed
**Issues Found:** 2
**Fixes Applied:**
1. Fixed Alex's age (was 43, should be 42 in 2017)
2. Standardized Webb's title (now consistently "Dr. Webb")
**Notes:** Character details all consistent with references
**Tokens Used:** ~X,XXX
```

---

## 🔋 TOKEN CHECKPOINTS

**At 50k tokens:** Take stock. How many chapters done? Estimate if you can finish in this session.

**At 75k tokens:** You should be in final chapters. If not, stop and document.

**At 100k tokens:** STOP. Update all logs. New session recommended.

**Don't exceed 120k tokens** - Leave buffer for documentation.

---

## 📚 REFERENCE TO LOCKED ELEMENTS

**These are FIXED - do not change:**
- All 47 beats (see BEAT_TRACKING.md)
- Story structure and timeline
- Continuity fixes already applied (see CONTINUITY_REPORT.md)
- Plot points and character arcs
- Chapter transitions
- Network of 14 entangled minds

**You're only checking:**
- Physical/descriptive consistency
- Name/title usage
- Age/timeline accuracy
- Place description consistency

---

## 🚀 START SEQUENCE

1. Read this document completely
2. **⚡ Use character-profiler agent** to create `CHARACTER_REFERENCE.md`
   - Invoke with Task tool, `subagent_type: "character-profiler"`
   - Agent analyzes chapters and creates detailed character profiles
3. Create `PLACE_REFERENCE.md` manually (extract from existing chapters)
4. Create `CHARACTER_HONING_LOG.md` (empty template ready)
5. Begin with Chapter 1
6. Work methodically through all 22 chapters + epilogue
7. Mark complete when all chapters are ✅ HONED

---

## ✅ COMPLETION

When all chapters are honed:
- Update this file with completion date
- Finalize `CHARACTER_HONING_LOG.md`
- Move to `START_HERE_LINE_EDITING.md`

---

**Ready? Start by creating the reference documents, then work through chapters one by one.**

**Remember: Token management is KEY. Work efficiently, document thoroughly, move forward.**
