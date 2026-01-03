# ✍️ LINE EDITING - START HERE

**Phase:** Line-Level Polish Pass
**Purpose:** Improve prose quality, flow, clarity, and readability at the sentence level
**Status:** Ready to begin (after Character Honing complete)

---

## 🔄 WORKFLOW INTEGRATION

**This is Phase 3 of the editing workflow:**
1. ✅ **Structural Audit** (START_HERE_STRUCTURAL_AUDIT.md) - Verify beat alignment and causality
2. ✅ **Character Honing** (START_HERE_CHARACTER_HONING.md) - Lock character/place consistency
3. **→ YOU ARE HERE:** Line Editing - Polish prose quality
4. **Copy Editing** (START_HERE_COPY_EDITING.md) - Fix mechanical errors

**BEFORE YOU START:**
- Check for `.suggestion.md` files from previous agents (dialogue-editor, character-roleplay, narrative-structure-architect)
- Review `START_HERE_STRUCTURAL_AUDIT.md` changelog to see what structural fixes were applied
- If you discover structural issues, STOP and create a `.suggestion.md` file - don't fix directly

**CROSS-PHASE COMMUNICATION:**
- If dialogue feels off → Create `.suggestion.md` for dialogue-editor agent review
- If character inconsistency found → Note in CHARACTER_HONING_LOG.md
- If beat misalignment suspected → Flag for structural audit review
- All suggestion files should be reviewed by author before implementation

---

## ⚠️ CRITICAL: TOKEN MANAGEMENT

**Line editing is TOKEN-INTENSIVE. Be strategic:**

1. **Work ONE chapter at a time** - Edit, save, document, move on
2. **At 100k tokens (50%):** Stop immediately, update tracking, new session
3. **Don't re-read original multiple times** - Read once, edit, verify once
4. **Focus on high-impact changes** - Don't polish the same sentence 5 times
5. **Trust your instincts** - If it reads well, move on

**Line editing can EASILY consume 200k tokens if you're not careful. Stay disciplined.**

---

## ⚡ DIALOGUE WORKFLOW - MANDATORY AGENTS

**CRITICAL REQUIREMENT:**
Every piece of dialogue in every chapter MUST be processed through specialized agents. No exceptions.

### **Step 1: Character-Roleplay Agent (Optional but Recommended)**
**When to use:** Before editing dialogue, especially for key character scenes
**How to invoke:** Task tool, `subagent_type: "character-roleplay"`
**What it does:** Embodies the character and tests how they would authentically respond
**Use cases:**
- Testing if Alex's dialogue feels authentic in a scene
- Checking if Dad's voice is consistent with his character
- Verifying Webb maintains his professorial tone
- Exploring how a character would react to specific moments

### **Step 2: Dialogue-Editor Agent (MANDATORY)**
**When to use:** ANY time characters speak (even single lines)
**How to invoke:** Task tool, `subagent_type: "dialogue-editor"`
**What it does:** Refines subtext, character voice, natural flow, pacing
**Track it:** Log every dialogue scene processed in your tracking document

### **Workflow Example:**
```
1. Reach dialogue scene in Chapter 13 (Alex talking to Dad)
2. [Optional] Use character-roleplay to inhabit Dad and test responses
3. Use dialogue-editor to refine the actual dialogue exchange
4. Integrate improvements
5. Continue with chapter
```

**DO NOT manually edit dialogue. These agents are specialized and will produce better results.**

---

## 🎯 YOUR TASK

Polish the prose at the sentence level while **preserving all story elements**. The beats, continuity, and character details are **LOCKED**.

### What You're Improving:

**SENTENCE STRUCTURE:**
- Vary sentence length for rhythm
- Eliminate awkward phrasing
- Improve flow between sentences
- Fix run-on or choppy sentences

**WORD CHOICE:**
- Replace weak verbs with strong ones
- Eliminate redundant words
- Choose more precise vocabulary
- Remove unnecessary adverbs ("very," "really," "just")

**CLARITY:**
- Clarify ambiguous pronoun references
- Tighten wordy passages
- Ensure each sentence has clear purpose
- Fix confusing constructions

**VOICE & TONE:**
- Maintain consistent close-third POV
- Preserve the quantum horror atmosphere
- Keep character voice consistent
- Enhance emotional beats without melodrama

**DIALOGUE:**
- **⚡ MANDATORY: USE THE DIALOGUE-EDITOR AGENT FOR ALL DIALOGUE**
- Every scene with dialogue must be processed through the agent
- No exceptions - if characters are speaking, use the agent
- Agent specializes in: adding subtext, distinct character voices, natural flow
- Even brief exchanges benefit from agent refinement
- Process: Extract dialogue section → invoke agent → integrate improvements

**PACING:**
- Tighten slow passages
- Add beats to rushed sections (minimally)
- Balance description vs action
- Ensure chapter endings have proper impact

---

## 📋 BEFORE YOU START

### 1. Prerequisites (MUST be complete):
- ✅ Character Honing Phase complete (`CHARACTER_HONING_LOG.md` shows all chapters done)
- ✅ You've read `BEAT_TRACKING.md` (know what's locked)
- ✅ You've read `CONTINUITY_REPORT.md` (understand fixed issues)

### 2. Create Your Tracking:
**Create `LINE_EDITING_LOG.md`** to track:
- Which chapters are edited
- Types of changes made
- Token usage per chapter
- Estimated completion rate

---

## 🔄 WORKFLOW: ONE CHAPTER AT A TIME

### For Each Chapter:

**1. INITIAL READ (Don't edit yet!):**
- Read the chapter once through
- Note overall pacing/flow issues
- Flag obvious problem sentences
- Get a feel for the chapter's rhythm
- **Time limit: 5-10 minutes max**

**2. LINE EDIT PASS:**
- Work paragraph by paragraph
- Focus on high-impact changes first:
  - Awkward sentences that jar the reader
  - Weak verbs that need strengthening
  - Confusing constructions
  - Overly long or choppy passages
- **⚡ MANDATORY DIALOGUE STEP:**
  - **STOP when you reach ANY dialogue (even 1-2 lines)**
  - **[Optional]** Use character-roleplay agent to test character authenticity first
  - **[Required]** Invoke dialogue-editor agent for every dialogue exchange
  - Use Task tool with `subagent_type: "dialogue-editor"` (or "character-roleplay")
  - Provide: scene context + the dialogue exchange
  - Agents refine: subtext, character voice, natural flow, pacing, authenticity
  - Integrate agent improvements into chapter
  - **DO NOT skip dialogue-editor - all dialogue must be agent-processed**
- Don't obsess over perfection (except dialogue - use the agent!)
- **Move steadily forward, don't loop back**

**3. VERIFICATION READ:**
- Read edited version once
- Check flow still works
- Ensure you didn't change meaning
- Verify voice is consistent
- **Time limit: 5 minutes max**

**4. DOCUMENT:**
- Note key changes in `LINE_EDITING_LOG.md`
- Mark chapter as ✅ EDITED
- Record token usage
- **Move on immediately**

---

## ✅ EXAMPLE EDITS (What to do)

**BEFORE:** "Alex walked very slowly down the stairs because they were nervous about what they would find."
**AFTER:** "Alex descended the stairs slowly, nerves tightening with each step."
*Changes: Removed "very," stronger verb, more active, shows don't tell*

**BEFORE:** "The room was filled with darkness and shadows everywhere."
**AFTER:** "Darkness filled the room."
*Changes: Eliminated redundancy, tightened*

**BEFORE:** "Dad had been watching the machine for a really long time, like thirty-seven years."
**AFTER:** "Dad had watched the machine for thirty-seven years."
*Changes: Removed filler words, cleaner*

**BEFORE:** "The pattern on the screen rotated and turned and moved in ways that seemed impossible."
**AFTER:** "The pattern rotated through impossible geometries."
*Changes: Eliminated repetition, more precise*

---

## ❌ WHAT NOT TO DO

**DO NOT:**
- ❌ Change plot points or story beats (LOCKED)
- ❌ Add or remove scenes (structure is LOCKED)
- ❌ Change character names, ages, or key details (HONED already)
- ❌ Alter the continuity fixes (already applied)
- ❌ Rewrite entire paragraphs unless truly necessary
- ❌ Change POV or tense (present tense only in Ch 21, Epilogue)
- ❌ Re-read chapters multiple times (token waste!)
- ❌ Edit the same sentence more than twice (diminishing returns)
- ❌ Add significant new content (that's expansion, not editing)
- ❌ Work on multiple chapters in parallel (finish one first)
- ❌ **EDIT DIALOGUE MANUALLY** - MUST use the dialogue-editor agent

**DO:**
- ✅ **Use dialogue-editor agent for ALL dialogue** (mandatory!)
- ✅ Improve sentence flow and clarity
- ✅ Strengthen weak verbs
- ✅ Eliminate redundant words
- ✅ Vary sentence structure for rhythm
- ✅ Enhance emotional beats subtly
- ✅ Tighten wordy passages
- ✅ Fix awkward constructions
- ✅ Work efficiently chapter by chapter
- ✅ Trust "good enough" and move forward
- ✅ Create Plot/Beat/Character/Chapter .suggestion.md files if making prohibited changes would improve story flow/structure/depth. 
---

## 📊 CHAPTER LIST (Reading Order)

Work through in this order (same as character honing):

**Act 1-3 (Chapters 1-12):**
1. chapter_01_the_archive.md
2. chapter_02_the_flash.md
3. chapter_03_pattern_recognition.md
4. chapter_04_the_storage_unit.md
5. chapter_05_dads_notebooks.md
6. chapter_06_the_oeis_discovery.md
7. chapter_07_meeting_dr_webb.md
8. chapter_08_dr_klines_interview.md
9. chapter_09_symptoms_and_archive.md
10. chapter_10_1998_and_gresham.md
11. chapter_11_the_watcher.md
12. chapter_12_the_presence.md

**Act 4 (Chapters 13-15):**
13. chapter_13_dammasch.md
14. chapter_14_the_watching.md
15. chapter_15_the_location.md

**Act 5-6 (Chapters 16-22):**
16. chapter_16_access.md (Ch 16)
17. chapter_17_descent.md (Ch 17)
18. chapter_18_interface.md (Ch 18)
19. chapter_19_the_three_paths.md (Ch 19)
20. chapter_20_the_collapse.md (Ch 20)
21. chapter_21_the_workshop.md (Ch 21)
22. epilogue_the_dream.md

---

## 🎯 QUALITY TARGETS

**Focus on chapters that need it most:**
- Early chapters (1-3): First impression matters
- Act breaks (Ch 12→13, Ch 15→16): Smooth transitions
- Climax chapters (18-21): Maximum emotional impact
- Epilogue: Strong final impression

**Good enough is good enough:**
- Not every sentence needs to be perfect
- Polished prose > perfect prose
- Keep moving forward

---

## 📝 TRACKING YOUR WORK

Update `LINE_EDITING_LOG.md` after each chapter:

```markdown
## Chapter X: [Title]
**Status:** ✅ Edited
**Word Count:** [original count]
**Dialogue Scenes:** [number processed]
**Agents Used:**
- Character-roleplay: [number of scenes, optional]
- Dialogue-editor: [number of scenes, MANDATORY - should match dialogue count]
**Key Changes:**
- Tightened opening paragraph (removed 3 filler words)
- Strengthened verbs in action sequence
- Clarified ambiguous pronoun (line 45)
- ⚡ Dialogue refined: [list scenes processed]
**Pass Quality:** [Strong/Good/Adequate]
**Tokens Used:** ~X,XXX
**Cumulative Tokens:** XX,XXX / 200,000
```

---

## 🔋 TOKEN CHECKPOINTS

**Your most dangerous enemy: TOKEN CREEP**

Line editing can easily consume 5-10k tokens PER CHAPTER.

**At 50k tokens (~5 chapters):**
- Check your pace: Can you finish all 22 chapters?
- If not, prioritize high-impact chapters

**At 75k tokens (~10 chapters):**
- Decide: Speed up or plan second session?
- Consider skipping minor polish on later chapters

**At 100k tokens (~15 chapters):**
- STOP editing
- Document remaining chapters
- New session required

**Strategy suggestion:**
- Session 1: Chapters 1-12 (Acts 1-3)
- Session 2: Chapters 13-22 (Acts 4-6)

---

## 🎨 STYLE GUIDELINES

**Quantum Horror Tone:**
- Clinical but unsettling
- Precise technical language mixed with emotional weight
- Short sentences for tension, longer for reflection
- Present tense in final chapters amplifies immediacy

**POV Consistency:**
- Close third-person, Alex's POV
- Limited omniscience (Alex's knowledge only)
- Epilogue shifts to other POVs (intentional)

**Technical Language:**
- Keep quantum mechanics accessible
- Don't oversimplify to the point of inaccuracy
- Balance technical precision with readability

**Emotional Beats:**
- Subtle > melodramatic
- Show through physical details and action
- Avoid telling emotions explicitly when possible

---

## 📚 REFERENCE TO LOCKED ELEMENTS

**These are FIXED - do not change:**
- All 47 beats (BEAT_TRACKING.md)
- Story structure and timeline
- Continuity fixes (CONTINUITY_REPORT.md)
- Character details (CHARACTER_REFERENCE.md)
- Place descriptions (PLACE_REFERENCE.md)
- Plot points and character arcs
- Chapter transitions

**You're only polishing:**
- Sentence structure and flow
- Word choice and precision
- Clarity and readability
- Rhythm and pacing

---

## 🚀 START SEQUENCE

1. Verify Character Honing is complete
2. Read this document completely
3. Create `LINE_EDITING_LOG.md`
4. Begin with Chapter 1
5. Work methodically through all chapters
6. Stop at 100k tokens if needed (new session)
7. Mark complete when all chapters are ✅ EDITED

---

## ✅ COMPLETION

When all chapters are edited:
- Update this file with completion date
- Finalize `LINE_EDITING_LOG.md`
- Move to `START_HERE_COPY_EDITING.md`

---

**REMEMBER: Line editing is a TOKEN BLACK HOLE. Work efficiently, don't over-polish, keep moving forward.**

**"Done is better than perfect."**
