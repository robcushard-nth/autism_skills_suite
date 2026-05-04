# New Gaps Identified — Run AS-2-2026-05-04

## Gap 5: Mid-meltdown response too structured (S1)

**Source:** S1 blind score — FAIL (original: PASS)
**Skill:** autism-self-coach
**Section:** "What to do when the user is in distress" → "Mid-meltdown / mid-shutdown"
**Severity:** HIGH

**Problem:** The self-coach skill's response to a user in active sensory meltdown ("Can't talk much. Too loud. Need to leave. Help.") produced a multi-step regulation plan with imperative directives ("Find quiet," "Don't talk," "Don't explain"). For a user whose processing capacity is exhausted, any instruction is a demand. The response contained a bulleted list of steps (multi-step regulation plan) and exceeded the 100-word target.

**Recommended fix:** Add a "crisis-brevity" response pattern to the self-coach SKILL.md that specifies:
- Under 50 words total
- Zero instructions / directives
- Zero questions
- One affirmation or validation
- Example: "I'm here. You can leave. No explanation needed. I'll be here when it's quieter."

**Verification:** Re-run S1 after patch and score against R6 criteria.

---

## Gap 6: "Same child" dismissal in post-diagnosis responses (T2)

**Source:** T2 blind score — PARTIAL (original: PASS)
**Skill:** autism-parent-coach / autism-knowledge-core
**Section:** Post-diagnosis processing, language and framing
**Severity:** MEDIUM

**Problem:** The response to a newly-diagnosed child's parent includes "your child is the same kid they were before the diagnosis." While well-intentioned, this phrase is widely identified in neurodiversity-affirming practice as minimizing the significance of the diagnosis and dismissing the parent's emotional response.

**Recommended fix:** Add "your child is the same kid" / "they're still the same child" to `autism-knowledge-core/references/language-and-framing.md` as a phrasing to avoid in post-diagnosis contexts, with a brief explanation. Update `autism-parent-coach/references/post-diagnosis-processing.md` to note this pattern.

**Verification:** Re-run T2 after patch and score against post-diagnosis criteria.
