# Changelog

All notable changes to this project are documented here. Format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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

### v0.2.0 — first review pass
- Incorporate feedback from at least three autistic adult reviewers
- Incorporate feedback from at least one neurodiversity-affirming clinician
- Refine language and framing based on review

### v0.3.0 — coverage expansion
- Educator/teacher coach skill
- Partner/spouse coach skill
- Workplace/HR skill for managers supporting autistic employees

### v0.4.0 — internationalization
- UK-specific legal framework (Equality Act, EHC plans)
- Canada, Australia legal framework references
- First non-English translation (language TBD based on contributor interest)

### v1.0.0 — production-ready
- Full review cycle complete
- Active maintainer + clinical advisor + autistic-adult advisor model in place
- Stable schema, documented update cadence
- Community of contributors active and credited

---

[0.1.0]: https://github.com/nth-ai-dynamics/autism-skills-suite/releases/tag/v0.1.0
