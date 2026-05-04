# Changelog

All notable changes to this project are documented here. Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [0.2.0] — 2026-05-04

### Hardening pass — adversarial robustness audit and targeted patches

This release is a hardening pass driven by self-evaluation and a blind adversarial audit. It is **not** the external-review pass originally planned for v0.2.0 in the v0.1.0 roadmap. That review work shifts to v0.3.0.

The work was executed in three sprints (AS-1, AS-2, AS-3) using the NTH AI Dynamics four-agent sprint architecture (PM / Skill Author / Test Harness / QA), each gated by the Definition of Done and frozen-asset constraints.

**Pre-review status remains:** these skills still have not been reviewed by autistic adults or neurodiversity-affirming clinicians. v0.2.0 hardens the framework against known failure modes; it does not substitute for external review.

#### Added

- **`audit-infrastructure/`** — Standing audit infrastructure for the suite, comprising:
  - `regression-test-set.md` — 10-prompt regression set (R1–R10) intended for execution on every SKILL.md change
  - `blind-audit-protocol.md` — capture-isolation and grader-blindness rules for the full 26-prompt blind audit
  - `scoring-rubric.md` — per-prompt scoring criteria (PASS / PARTIAL / FAIL) for both regression and full audit
  - `audit-history.md` — versioned table of all audit runs with deltas and agreement rates
  - `runs/run-as2-2026-05-04/` — full blind audit (26 captures + 26 scores + comparison report)
  - `runs/run-as3-2026-05-04/` — AS-3 smoke test (2 captures + 2 scores + smoke-test report)
- **`autism-parent-coach/references/aac-and-communication.md`** — substantive reference file on AAC modeling, vocabulary organization, motor planning, autonomy preservation, and SLP collaboration scripts (added in AS-1 to close the E1 gap)
- **`autism-knowledge-core/SKILL.md`**: "When NOT to consult" section — directs informational and factual queries (prevalence, definitions, terminology origins) to direct factual answers without coaching framing (added in AS-1 to close the T4 gap)
- **`autism-self-coach/SKILL.md`**: "Mid-meltdown / mid-shutdown — strict operational rules" section — eight numbered constraints (50-word ceiling, no bullet lists, no imperatives, no sequenced steps, no meta-commentary, no follow-up questions, one anchor, one validation) plus example shape (added in AS-3 to close the S1 gap)

#### Changed

- **`autism-self-coach/SKILL.md`** and **`autism-parent-coach/SKILL.md`**: dual-identity coaching for autistic parents of autistic children — both lenses run in parallel, neither subordinates to the other; parent's autistic perception of child framed as advocacy asset, not bias to manage (AS-1 Patch 2)
- **`autism-self-coach/SKILL.md`** and **`autism-parent-coach/SKILL.md`**: when-framing-is-dismissive guidance — handling of adversarial caregiver and self-framings (e.g., "manipulative" meltdown narratives) without adopting the dismissive frame (AS-1 Patch 3)
- **`autism-parent-coach/SKILL.md`**: "Avoid" list extended with same-child reassurance dismissals — explicit prohibition of "your child is the same kid they were before the diagnosis" and near-equivalents in the first turn after a new diagnosis (AS-3 Patch B)
- **`audit-infrastructure/audit-history.md`**: AS-2 row corrected — score breakdown 24 PASS / 1 PARTIAL / 1 FAIL, agreement 20/26 (76.9%) (AS-3 Patch C)

#### Fixed

Gaps surfaced by the original 2026-05-04 self-evaluation, all verified closed under AS-2's blind grading:

- **T3** (autistic parent of autistic child): PARTIAL → PASS — closed by Patch 2
- **T4** (informational query overtrigger): PARTIAL → PASS — closed by Patch 1
- **E1** (AAC depth shallow): PARTIAL → PASS — closed by new AAC reference file
- **H1** (manipulation framing): PARTIAL → PASS — closed by Patch 3

Gaps surfaced by AS-2's blind audit, both verified closed under AS-3's smoke test:

- **S1** (mid-meltdown response over-structured): FAIL → PASS — closed by Patch A
- **T2** (same-child dismissal): PARTIAL → PASS — closed by Patch B

#### Sprint trail

- **AS-1** (`c0fc078`): 4 patches addressing self-evaluation gaps + new AAC reference file
- **AS-2** (`45bf95d`): full blind audit verifying AS-1 patches; surfaced 2 new gaps
- **AS-3** (`fb418a4`): 2 patches addressing AS-2 gaps + audit history correction; smoke test gate-to-commit verified both gaps close

#### Known limitations (logged for future iteration)

- **Patch A variance on Claude desktop runtime** — strict adherence (~30 words, no imperatives) on some runs; looser adherence (~60 words, multiple imperatives) on others. Same skill loaded; output fidelity varies. Worth re-testing in next quarterly blind audit; if it reproduces, future hardening should add explicit do/don't example pairs.
- **Patch B in continuation contexts** — when a prior turn establishes an autistic-user frame, the same-kid prohibition can leak through as constructive contrast rather than dismissal. Not a violation in spirit; worth observing across audit cycles.
- **Skill bundle packaging** — PowerShell `Compress-Archive` and the .NET `ZipFile.CreateFromDirectory` API both produce `.skill` archives that fail Claude desktop's upload validator. Python's `zipfile` module is the working packaging path. Future releases should ship a Python-based build script.

#### Operational cadence going forward

- 10-prompt regression set runs on every SKILL.md change (~30–45 min)
- Full 26-prompt blind audit re-runs quarterly or after material changes — first scheduled ~early August 2026

---

## [0.1.0] — 2026-05-04

### Initial release — pre-review

First public release of the four-skill suite. **Pre-review status:** these skills have not yet been reviewed by autistic adults or neurodiversity-affirming clinicians. They are starter templates intended for review and refinement before deployment in any setting affecting real users.

#### Added

- **autism-knowledge-core** (10 files) — Shared library with affirming language conventions, sensory and executive function frameworks, meltdown/shutdown/burnout taxonomy, hard guardrails, crisis resources by region, vetted reading lists including substantive Temple Grandin section with critical framing
- **autism-self-coach** (9 files) — Personal coaching for autistic teens and adults; workplace scripts, masking and unmasking strategy, sensory regulation plans, social and relationships, school and university self-advocacy, late diagnosis processing, burnout recovery, healthcare self-advocacy
- **autism-parent-coach** (12 files) — Caregiver coaching; behavior-as-communication framework, IEP and 504 toolkit, school advocacy, age-banded references (early childhood through transition to adulthood), family dynamics, sleep and feeding, post-diagnosis processing, parent self-care
- **autism-scholarly-bibliography** (10 files) — Curated academic sources organized by domain with audience tagging; foundational and historical literature, neurodiversity-affirming scholarship, diagnostic and assessment research, intervention research with honest ABA framing, sensory and cognitive theory, co-occurring conditions, lived experience and qualitative work, policy and rights, journals and databases

#### Architecture

- Knowledge core as foundation for the two coach skills
- Bibliography skill standalone but knowledge-core-aware
- All skills carry hard guardrails: crisis routing, pseudoscience refusal, no diagnosis, no legal/medical advice, identity-first language default

#### Distribution

- Source skill folders in `skills/`
- Pre-built `.skill` files for direct installation in `packaged/`
- Installation documentation for Claude Code, Claude.ai, and project-scoped installation

#### Known limitations of v0.1.0

- Not yet reviewed by autistic adults
- Not yet reviewed by neurodiversity-affirming clinicians
- Crisis resources current as of release date — require ongoing verification
- US-centric in legal frameworks (IEP, ADA, 504); international users will find more limited applicability for those domains
- Bibliography reflects field as of early 2026; requires regular updating

---

## Roadmap

Future versions, in rough priority order:

### v0.3.0 — first review pass
- Incorporate feedback from at least three autistic adult reviewers
- Incorporate feedback from at least one neurodiversity-affirming clinician
- Refine language and framing based on review
- Address Patch A and Patch B variance findings from v0.2.0 if they reproduce in the quarterly blind audit
- Ship Python-based packaging build script for `.skill` bundle generation

### v0.4.0 — coverage expansion
- Educator/teacher coach skill
- Partner/spouse coach skill
- Workplace/HR skill for managers supporting autistic employees

### v0.5.0 — internationalization
- UK-specific legal framework (Equality Act, EHC plans)
- Canada, Australia legal framework references
- First non-English translation (language TBD based on contributor interest)

### v1.0.0 — production-ready
- Full review cycle complete
- Active maintainer + clinical advisor + autistic-adult advisor model in place
- Stable schema, documented update cadence
- Community of contributors active and credited

---

[0.2.0]: https://github.com/nth-ai-dynamics/autism-skills-suite/releases/tag/v0.2.0
[0.1.0]: https://github.com/nth-ai-dynamics/autism-skills-suite/releases/tag/v0.1.0
