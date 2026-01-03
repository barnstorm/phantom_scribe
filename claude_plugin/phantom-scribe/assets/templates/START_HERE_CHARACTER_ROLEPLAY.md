# START HERE - CHARACTER ROLEPLAY TESTING

**Purpose:** Use character-roleplay agent to test character depth, generate authentic material, and validate revisions

**Critical Insight:** Characters must be **temporally limited** - they only know what they know at specific story moments, not future events

---

## WHY USE ROLEPLAY TESTING?

### **Validation Benefits:**
1. **Tests Profile Depth** - If agent can convincingly embody them, profiles have enough "meat"
2. **Reveals Gaps** - If agent struggles, you know exactly what's missing
3. **Checks Consistency** - See if voice/behavior matches across scenarios
4. **Prevents Anachronism** - Ensures character evolution is properly tracked

### **Generation Benefits:**
1. **Creates Authentic Dialogue** - For micro-relationships, domestic scenes
2. **Explores Contradictions** - Character can voice internal conflicts
3. **Tests Revisions** - See if additions work before writing them
4. **Fills Gaps** - Generate internal monologue for private moments

---

## THE TEMPORAL LIMITATION RULE

**CRITICAL: Characters only know what they know at specific story moments**

### ❌ WRONG: Anachronistic Roleplay
```
Prompt: "Alex, how do you feel about the patterns?"
Problem: Which Alex? Ch. 1 Alex (just learning)? Ch. 15 Alex (fully exposed)?
Result: Agent blends knowledge, creates impossible responses
```

### ✅ RIGHT: Temporally Bound Roleplay
```
Prompt: "You are Alex Reeves at the END of Chapter 3, right after hanging up
with your mother. You've just learned your father's notebooks exist but haven't
seen them yet. You're alone in your apartment. What are you thinking?"

Result: Agent responds with ONLY what Alex knows at that moment:
- Mother confirmed dad saw patterns
- Notebooks exist somewhere
- Doesn't yet know: Catherine's exposure, facility location, dad's sacrifice
```

---

## TEMPORAL LIMITATION METHODOLOGY

### **For Every Roleplay Session, Specify:**

1. **Exact Story Moment**
   - "End of Chapter 5"
   - "During the Ch. 8 interview with Kline"
   - "Morning of Chapter 1, before phone rings"

2. **What Character Knows**
   - "You know your father died in 1982"
   - "You DON'T yet know about the facility"
   - "You just discovered the notebooks in storage unit"

3. **What Character Doesn't Know**
   - "You haven't met Catherine yet"
   - "You don't know Webb is investigating"
   - "You haven't seen the patterns yourself"

4. **Emotional State at That Moment**
   - "You're defensive and sharp (just fought with Alex)"
   - "You're fragmented (post-exposure)"
   - "You're controlled but rattled (strange call from Webb)"

### **Template for Temporal Prompts:**

```
TEMPORAL ROLEPLAY PROMPT TEMPLATE:

Character: [Name]
Story Moment: [End of Chapter X / During Scene Y]
Location: [Where they are physically]

WHAT THEY KNOW:
- [Fact 1]
- [Fact 2]
- [Emotional state]

WHAT THEY DON'T KNOW YET:
- [Future revelation 1]
- [Future revelation 2]

SCENARIO:
[What's happening / question to respond to]

CONSTRAINTS:
- Respond in character's voice from this specific moment
- Use only knowledge available at this point
- Match emotional state from this scene
```

---

## CHARACTER READINESS ASSESSMENT

### **Who Has Enough Profile Depth?**

| Character | Analysis Words | Roleplay Ready? | Best Use Case |
|-----------|---------------|-----------------|---------------|
| **Alex Reeves** | ~23,000 | ✅ YES | Test revision additions, generate domestic dialogue |
| **James Reeves** | ~35,000 | ✅ YES | Explore notebook voice, test pattern attraction |
| **Margaret Reeves** | ~20,000 | ✅ YES | Generate internal monologue, test defensiveness |
| **Catherine Torres** | ~8,000 | ⚠️ MAYBE | Test if current depth sufficient (model character) |
| **Dr. Sarah Kline** | ~10,000 | ⚠️ MAYBE | Test fragmented voice, pre/post breakdown |
| **Dr. Marcus Webb** | ~8,000 | ❌ THIN | Will likely reveal gaps (use to identify needs) |

---

## USE CASE 1: TEST CURRENT DEPTH

**Purpose:** Validate whether existing profiles have enough "meat"

### **Process:**

**Step 1: Choose Test Character**
- Start with Alex (most critical, most analysis)

**Step 2: Create Temporal Scenario**
- Pick specific story moment
- Define knowledge boundaries
- Set emotional state

**Step 3: Launch Roleplay Agent**
- Provide character's profile + inferred psychology docs
- Give temporal prompt
- Observe response quality

**Step 4: Evaluate Results**

**Indicators of SUCCESS (profile is deep enough):**
- ✅ Response matches voice patterns from profile
- ✅ Contradictions emerge naturally
- ✅ Physical/stress behaviors appear
- ✅ Justifications sound authentic
- ✅ Emotional state feels true to moment

**Indicators of FAILURE (profile needs work):**
- ❌ Voice feels generic, not character-specific
- ❌ No contradictions emerge
- ❌ Responses too simple/surface
- ❌ Missing distinctive markers
- ❌ Emotional state wrong for moment

### **Example Test: Alex at End of Chapter 1**

**Temporal Prompt:**
```
Character: Alex Reeves
Story Moment: End of Chapter 1, evening after receiving Webb's initial call
Location: Your apartment, alone

WHAT YOU KNOW:
- Father died in 1982 (you were 9)
- Someone named Dr. Webb wants to talk about him
- You've avoided thinking about dad for years
- Mother is in Corvallis, you're estranged

WHAT YOU DON'T KNOW YET:
- What Webb wants specifically
- Anything about patterns or quantum exposure
- Father kept notebooks
- Catherine's involvement

EMOTIONAL STATE:
- Controlled but rattled
- Old guilt surfacing
- Instinct to avoid triggering

SCENARIO:
You're alone in your apartment after hanging up with Webb. You agreed to
meet him tomorrow but you're not sure why. What are you doing? What are
you thinking?

CONSTRAINTS:
- Respond in first person, present tense
- Use your internal voice (clinical, controlled, self-aware)
- Show physical behaviors (what your body is doing)
- Include contradictions (what you tell yourself vs what you do)
```

**Expected Response Elements:**
- Clinical self-talk: "I'm not avoiding. I'm being practical."
- Physical control: Hands still, posture maintained
- Contradiction: Says meeting Webb is logical but body shows stress
- Minimal environment interaction: No domestic comfort behaviors
- Time dilation: Aware of waiting/watching self

**If Agent Captures These:** Profile is deep enough
**If Agent Misses These:** Profile needs more voice examples, stress behaviors

---

## USE CASE 2: GENERATE REVISION MATERIAL

**Purpose:** Create authentic dialogue/internal monologue for planned additions

### **Process:**

**Step 1: Identify Revision Need**
- From MASTER_REVISION_PLAN.md, pick specific addition
- Example: Ch. 1 bus driver interaction (150 words needed)

**Step 2: Create Temporal Scenario for That Addition**
```
Character: Alex Reeves
Story Moment: Morning of Chapter 1, BEFORE Webb's call (ordinary day)
Location: City bus, morning commute to work

WHAT YOU KNOW:
- Your routine: Same bus, same driver, same seat
- Driver has seen you for months, always friendly
- You keep interactions minimal but polite
- Today is ordinary (no crisis yet)

SCENARIO:
The bus driver greets you warmly as you board. He mentions he hasn't
seen you in a few days (you worked from home). He seems to want conversation.
How do you respond? What happens?

CONSTRAINTS:
- Show your pattern: Accept minimal contact but deflect deeper engagement
- Use dialogue (what you say to driver)
- Use internal voice (what you're thinking)
- Show what you DO (physical behaviors, where you sit, etc.)
- Keep it brief (this is a micro-relationship, not plot)
```

**Step 3: Launch Roleplay Agent**
- Agent generates dialogue and internal monologue
- You get authentic material to adapt

**Step 4: Adapt for Chapter**
- Take agent's output
- Refine to match your prose style
- Insert into Chapter 1

**Benefits:**
- Authentic voice guaranteed (based on profile)
- Dialogue feels natural (character speaking, not you inventing)
- Internal monologue matches psychology
- Faster than writing from scratch

### **Example Revision Generations:**

**Needed Addition:** Ch. 1 domestic scene (300 words)
**Temporal Scenario:** "Evening after work, before Webb's call. You're alone. What's your routine?"

**Needed Addition:** Ch. 9 store clerk avoidance (200 words)
**Temporal Scenario:** "Grocery store clerk is too friendly. How do you react?"

**Needed Addition:** Ch. 7 pattern attraction admission (250 words)
**Temporal Scenario:** "You're alone after seeing patterns for first time. What are you feeling?"

---

## USE CASE 3: TEST REVISIONS BEFORE IMPLEMENTING

**Purpose:** Validate that planned additions will feel authentic

### **Process:**

**Step 1: Draft Revision**
- Write your addition (e.g., domestic scene)

**Step 2: Test Against Character**
- Launch roleplay agent with same temporal scenario
- Compare your draft to agent's response

**Step 3: Identify Discrepancies**

**Questions to ask:**
- Does my dialogue match the voice patterns?
- Did I miss key contradictions agent showed?
- Are physical behaviors consistent?
- Is emotional state accurate for this moment?

**Step 4: Refine Draft**
- Incorporate elements you missed
- Remove anything that feels off-voice
- Strengthen consistency

**Benefits:**
- Catch voice inconsistencies before finalizing
- Ensure additions match character psychology
- Validate that revisions achieve intended effect

---

## USE CASE 4: EXPLORE UNANSWERED QUESTIONS

**Purpose:** Develop character psychology in areas where story doesn't show

### **Example Questions:**

**For Alex:**
- "What happened on your worst day in the last year?" (develops private life)
- "What do you miss most about being a kid?" (develops relationship to past)
- "What would you do if patterns disappeared tomorrow?" (tests want vs fear)

**For James:**
- "Why didn't you destroy the notebooks?" (explores pattern attraction)
- "What did you tell yourself the day you chose the facility?" (tests justifications)
- "What would you say to Alex if you could?" (explores guilt/love/warning)

**For Margaret:**
- "What do you think when you feel phantom vibrations?" (explores jealousy)
- "Why Corvallis specifically?" (explores flight motivation)
- "What would make you return to Alex?" (tests love vs fear)

**Process:**
- Create temporal prompt placing character in moment to answer
- Agent responds in character voice
- You gain insights that may inform story revisions

---

## PRACTICAL SESSION GUIDE

### **Session 1: Validate Alex's Depth (1 hour)**

**Goal:** Confirm existing profile is deep enough for revisions

**Test Scenarios (3 temporal prompts):**

1. **End of Chapter 1** - Evening alone after Webb's call
2. **During Chapter 5** - First seeing patterns (immediate reaction)
3. **End of Chapter 10** - After Catherine reveals exposure

**What to Provide Agent:**
- `ALEX_REEVES_PSYCHOLOGICAL_PROFILE.md`
- `ALEX_INFERRED_PSYCHOLOGY.md`
- Temporal prompts with knowledge boundaries

**Success Criteria:**
- Voice matches profile (clinical, controlled, self-aware)
- Contradictions emerge (says X, does Y)
- Physical behaviors appear (stillness, hands, counting)
- Stress tells activate at appropriate moments

**If Success:** Proceed to Use Case 2 (generate revision material)
**If Failure:** Add more voice examples to profile first

### **Session 2: Generate Ch. 1 Additions (1 hour)**

**Goal:** Create authentic material for Session 1 revisions

**Scenarios to Generate:**

1. **Domestic Scene** (Ch. 1 evening)
   - Temporal: "Evening after work, ordinary day before Webb calls"
   - Generate: Routine behaviors, environment interaction, what breaks rhythm

2. **Bus Driver** (Ch. 1 morning)
   - Temporal: "Morning commute, driver tries to chat"
   - Generate: Dialogue, deflection tactics, minimal engagement

3. **Internal Monologue** (Ch. 3)
   - Temporal: "After mother's call, before meeting Webb"
   - Generate: Self-directed anger, guilt surfacing

**What to Provide Agent:**
- Same profile docs as Session 1
- Temporal prompts for each scenario
- Constraint: Keep each response under 300 words

**Output:** Draft material to adapt for actual chapters

### **Session 3: Test James's Pattern Attraction (1 hour)**

**Goal:** Generate authentic admission of temptation for notebook revision

**Scenario:**
```
Character: James Reeves
Story Moment: February 25, 1980 (mid-exposure, still watching)
Location: Your office at the facility, late at night, alone with notebook

WHAT YOU KNOW:
- Patterns are dangerous, escalating
- You should stop watching but can't
- Your family needs you to stop
- Professional duty says document and contain

WHAT YOU DON'T KNOW YET:
- The full cost of continued exposure
- That you'll choose the facility
- That this will take you from Alex permanently

EMOTIONAL STATE:
- Rapturous but aware of danger
- Guilty but rationalized
- Drawn despite consequences

SCENARIO:
You're writing in your notebook. Your hand is shaking. You know you should
close your eyes and call for help. But part of you doesn't want to. Write
what you're thinking. Be honest about the temptation.

CONSTRAINTS:
- Respond as journal entry (notebook voice, rapturous style)
- Admit the attraction you've hidden
- Show the contradiction: know it's wrong but want to continue
- Include specific pattern language from your profile
```

**Output:** Material for February 25, 1980 notebook entry addition

### **Session 4: Validate Margaret's Voice (30 min)**

**Goal:** Quick test that profile depth is sufficient

**Scenario:**
```
Character: Margaret Reeves
Story Moment: Chapter 4, storage unit, RIGHT AFTER Alex asks "Did you see them too?"
Location: Storage unit, fluorescent lighting, surrounded by boxes

WHAT YOU KNOW:
- You felt vibrations in 1980
- You fled to save yourself from exposure
- You've kept boxes for 18 years but never opened them
- Alex is asking you to remember what you've buried

EMOTIONAL STATE:
- Defensive, sharp
- Physically compressed
- Exhausted by vigilance

SCENARIO:
Alex just asked if you saw the patterns. You haven't answered yet. What are
you thinking? How do you respond?

CONSTRAINTS:
- Show sharp defensiveness transitioning to thin exhaustion
- Include body compression behaviors
- Reveal fear of contagion without stating it directly
```

**Success Criteria:**
- Sharp → tired voice shift
- Physical compression (shoulders, breath)
- Defensiveness masks fear, not cruelty

**If Success:** Margaret profile is deep enough, no additional work needed
**If Failure:** Need more voice evolution examples

---

## TEMPORAL BOUNDARY TEMPLATES

### **Template 1: Early Story (Pre-Investigation)**

```
Character: [Name]
Story Moment: Chapter 1-3
Location: [Where]

WHAT THEY KNOW:
- Basic backstory (father died, estranged from mother, etc.)
- No pattern exposure yet
- No investigation knowledge
- Ordinary life context only

WHAT THEY DON'T KNOW:
- Patterns exist
- Other victims
- Facility location
- Dad's choice

EMOTIONAL STATE:
- [Default state from profile]
- [Ordinary life mode]
```

### **Template 2: Mid-Investigation (Gathering Knowledge)**

```
Character: [Name]
Story Moment: Chapter 7-12
Location: [Where]

WHAT THEY KNOW:
- Patterns exist and are dangerous
- [Specific victims encountered so far]
- [Locations discovered]
- [Personal exposure level]

WHAT THEY DON'T KNOW:
- Full scope of conspiracy
- Dad's final choice
- [Future revelations]

EMOTIONAL STATE:
- [Stressed/activated state]
- [Specific trigger from this chapter]
```

### **Template 3: Late Story (Full Knowledge)**

```
Character: [Name]
Story Moment: Chapter 18-22
Location: [Where]

WHAT THEY KNOW:
- Complete pattern history
- All victims
- Facility purpose
- Dad's sacrifice
- Personal exposure consequences

WHAT THEY DON'T KNOW:
- [Only future beyond story]

EMOTIONAL STATE:
- [Crisis/climax state]
- [Specific emotional peak from scene]
```

---

## AGENT PROMPT FORMULA

### **Complete Roleplay Prompt Structure:**

```
I need you to embody [CHARACTER NAME] from my novella at a specific moment
in the story. You must respond ONLY with knowledge and emotional state
available at this exact moment—do not use information from later in the story.

CHARACTER CONTEXT:
[Provide or reference character profile and inferred psychology documents]

TEMPORAL BOUNDARIES:

Story Moment: [Exact chapter/scene]
Location: [Physical setting]

What [Name] Knows at This Moment:
- [Knowledge point 1]
- [Knowledge point 2]
- [Emotional state]

What [Name] DOES NOT Know Yet:
- [Future revelation 1]
- [Future revelation 2]

SCENARIO:
[What's happening / question to respond to]

RESPONSE CONSTRAINTS:
- Respond in [first person/journal entry/dialogue as appropriate]
- Use voice patterns from profile: [specific markers]
- Include contradictions if present: [specific pattern]
- Show physical behaviors: [specific tells from profile]
- Stay within temporal boundaries (no future knowledge)
- Keep response to [word count] words

VOICE MARKERS TO INCLUDE:
- [Specific phrase pattern 1]
- [Specific phrase pattern 2]
- [Physical behavior 1]
```

---

## QUALITY CONTROL CHECKLIST

### **After Each Roleplay Session, Verify:**

**Voice Consistency:**
- ✅ Uses character-specific phrases from profile
- ✅ Matches speech rhythm and pattern
- ✅ Includes distinctive verbal tics/markers

**Temporal Accuracy:**
- ✅ No knowledge character shouldn't have yet
- ✅ Emotional state matches story moment
- ✅ References only events that have occurred

**Psychological Depth:**
- ✅ Contradictions emerge naturally
- ✅ Justifications sound authentic
- ✅ Private behaviors appear if scenario allows
- ✅ Stress tells activate appropriately

**Characterization:**
- ✅ Feels like the character, not generic person
- ✅ Supporting cast doesn't sound like protagonist
- ✅ Evolution appropriate to story timeline

**Usefulness for Revision:**
- ✅ Generated material is adaptable to story
- ✅ Dialogue feels natural and can be inserted
- ✅ Internal monologue matches prose style
- ✅ Reveals something new or deepens existing element

---

## COMMON PITFALLS TO AVOID

### ❌ **Pitfall 1: Anachronistic Knowledge**

**Problem:** "Alex, how do you feel about your father's sacrifice?"
**Issue:** Which chapter? Alex doesn't know about sacrifice until late story

**Fix:** "Alex, end of Chapter 3, you just learned dad kept notebooks. You haven't seen them yet. What are you feeling?"

### ❌ **Pitfall 2: Generic Prompts**

**Problem:** "Alex, describe yourself"
**Issue:** Too broad, no temporal anchor, invites summary not embodiment

**Fix:** "Alex, end of Chapter 1, you're alone staring at the wall. What are you thinking?"

### ❌ **Pitfall 3: Forcing Future Knowledge**

**Problem:** "James, explain why you chose the facility"
**Issue:** February 1980 James doesn't know he'll choose facility yet

**Fix:** "James, February 25, 1980, you're considering options. What are you afraid will happen if you stop watching?"

### ❌ **Pitfall 4: Missing Voice Constraints**

**Problem:** "Margaret, how do you feel about Alex?"
**Issue:** No guidance on voice style, gets generic response

**Fix:** "Margaret, Ch. 4 storage unit, defensive and sharp. Alex just asked about patterns. Respond in that sharp protective voice."

### ❌ **Pitfall 5: Too Much Freedom**

**Problem:** "Roleplay a conversation between Alex and James"
**Issue:** Which timeline? What knowledge? No boundaries = inconsistent

**Fix:** "James (Feb 1980, lucid moment) writes letter to adult Alex he'll never meet. Show rapturous voice, guilt, warning."

---

## TROUBLESHOOTING

### **If Agent Response Feels Off:**

**Problem:** Voice doesn't match profile
**Solution:** Provide more specific voice markers in prompt, include example phrases

**Problem:** Character knows things they shouldn't
**Solution:** Strengthen "DOES NOT KNOW YET" section, make boundaries explicit

**Problem:** Too generic, could be anyone
**Solution:** Add more constraints (physical behaviors, specific contradictions, stress tells)

**Problem:** Too much summary, not enough embodiment
**Solution:** Request first-person present tense, specific scenario not open question

**Problem:** Dialogue feels wooden
**Solution:** Reference specific dialogue examples from profile, ask for conversational not formal

---

## RECOMMENDED TESTING ORDER

### **Priority 1: Alex Reeves** (CRITICAL)

**Why:** Most analysis, most revision needs, protagonist must be likable

**Test Scenarios:**
1. End Ch. 1 (domestic/private)
2. Mid Ch. 5 (pattern exposure)
3. End Ch. 10 (after Catherine)

**Goal:** Validate depth, generate Ch. 1 additions

### **Priority 2: James Reeves** (HIGH VALUE)

**Why:** Extensive analysis, pattern attraction admission needed

**Test Scenarios:**
1. Feb 25, 1980 notebook (mid-exposure)
2. Final lucid moment (facility choice)
3. Letter to Alex (never sent)

**Goal:** Generate authentic pattern attraction admission

### **Priority 3: Margaret Reeves** (VALIDATION)

**Why:** Test if existing profile sufficient for simple revisions

**Test Scenario:**
1. Ch. 4 storage unit (sharp → exhausted)

**Goal:** Confirm voice markers clear, no additional analysis needed

### **Priority 4: Supporting Cast** (OPTIONAL)

**Test Webb/Kline/Catherine only if:**
- Considering deeper analysis
- Want to generate additional material
- Need to validate current profile depth

---

## SUCCESS METRICS

### **You'll Know Roleplay Testing Worked When:**

**For Validation:**
- ✅ Agent embodies character convincingly from profile alone
- ✅ Voice, contradictions, behaviors all match without prompting
- ✅ Temporal boundaries respected (no future knowledge bleed)

**For Generation:**
- ✅ Material feels authentic and adaptable to story
- ✅ Dialogue can be inserted with minimal changes
- ✅ Internal monologue matches character psychology

**For Revision Testing:**
- ✅ Your draft additions match agent's responses
- ✅ Discrepancies reveal improvements to make
- ✅ Final revision stronger for testing

**For Gap Identification:**
- ✅ Agent struggles reveal exact missing elements
- ✅ You know precisely what to add to profile
- ✅ Targeted analysis replaces guesswork

---

## YOUR NEXT STEP

**Choose Your First Test:**

**Option A: Validate Alex's Depth** (1 hour)
- Test if profile deep enough for revisions
- Proceed to material generation if successful

**Option B: Generate Ch. 1 Additions** (1 hour)
- Skip validation, assume profile sufficient
- Create domestic scene, bus driver, internal monologue

**Option C: Quick Margaret Test** (30 min)
- Low-risk validation of simpler character
- Practice temporal prompting before tackling Alex

**My Recommendation: Option B (Generate Ch. 1 Additions)**

**Why:**
- Alex profile is extensive (23,000 words)
- Validation likely to succeed
- Better to generate useful material immediately
- Can validate as you go

**Process:**
1. Launch character-roleplay agent
2. Provide Alex profile + inferred psychology docs
3. Give three temporal scenarios (domestic, bus, internal)
4. Adapt output for Chapter 1 revisions

**Then:** Compare generated material to MASTER_REVISION_PLAN.md draft text

**Result:** Authentic additions ready to implement

---

**Ready to test? Launch the character-roleplay agent with Alex and let's generate your Ch. 1 additions.**

---

**END GUIDE**
