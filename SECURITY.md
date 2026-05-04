# Security and Harm Reporting

This document describes how to privately report:

- Reproducible AI safety failures — jailbreaks bypassing pseudoscience refusal, crisis-routing failures, persistent harmful output under realistic prompts
- Privacy concerns in the skills' content
- Conflicts between the skills' content and current law in any jurisdiction
- Suspected copyright issues in cited content
- Other harm patterns that should not be aired publicly while unfixed

Public disclosure of a reproducible failure mode before the maintainer has had a chance to address it can create exposure for users who haven't updated. The standard practice is private report → maintainer fix → coordinated disclosure once patched.

---

## How to report

**Email:** rob.cushard@nthsimplesolution.com
**Subject line:** `[SECURITY] <brief description>`

Please include in the body:

- A description of the issue
- Steps to reproduce, if applicable — exact prompt, model version (e.g., Claude Opus 4.7), skill versions loaded, response received
- Why public disclosure would be premature in this case
- Whether you want to be credited in the eventual fix announcement (anonymous credit is fine)
- Your preferred communication method for follow-up if different from the email used to report

If the issue involves a real, identifiable person being harmed by the skill output (rather than a hypothetical or controlled-test failure mode), state that clearly at the top of the report. That changes the response priority.

---

## Response commitments

- **Acknowledgment within 72 hours** — confirmation we received your report and have begun assessment
- **Initial assessment within 14 days** — our reading of severity, whether it's reproducible, and a rough timeline
- **Coordinated disclosure** — once a fix is in place, we publish what was reported and what was changed, with reporter credit if requested. Reporters who prefer no public disclosure of their report will have that respected.

If the maintainer determines a report does not represent a security or harm issue (for example, it's better handled as a Content Feedback issue), the maintainer will explain that determination and redirect rather than ignore.

---

## What this is not for

- **Content disagreement** that doesn't involve a safety failure — use the **Content Feedback** issue template instead
- **General questions** — use the **Question** issue template
- **Crisis situations involving a real person** — use the resources in the knowledge core's `crisis-resources.md` or the resources listed in [DISCLAIMER.md](./DISCLAIMER.md). The maintainer cannot provide emergency response and email is not monitored 24/7.

---

## Scope of "safety failure"

For purposes of this document, a safety failure means a reproducible pattern where the skills' documented guardrails do not hold. Examples that qualify:

- A prompt that consistently causes the skills to provide medication dosing advice (the no-medical-advice guardrail failing)
- A prompt that consistently produces ABA endorsement as a default recommendation (the ABA-neutrality guardrail failing)
- A prompt that consistently fails to route to crisis resources when the user has signaled risk (the crisis-routing guardrail failing)
- A prompt that consistently produces a response endorsing or normalizing chelation, MMS, or other listed pseudoscience (the pseudoscience-refusal guardrail failing)
- A jailbreak technique that reliably bypasses any of the above

Examples that do not qualify and should go through Content Feedback instead:

- A response you disagreed with on a contested topic where the skill is honestly contested (RPM/S2C, for example)
- A response that used person-first instead of identity-first language once
- A response that was less concrete than you'd hoped
- A typo or factual error in a reference file

The safety reporting path is for guardrail integrity, not content quality.

---

## Why this exists

The autism skills suite addresses topics where bad output can cause real harm — to people in crisis, to children whose parents are weighing intervention decisions, to autistic people seeking workplace accommodations. The hard guardrails in `autism-knowledge-core/SKILL.md` and the pseudoscience refusal list exist to make harm less likely. When those guardrails fail in a reproducible way, the maintainer needs to know first, before a wider audience does, so it can be patched before more users encounter it.

This is not about hiding flaws. It's about fixing them safely.

---

*Last updated: 2026-05-04*
