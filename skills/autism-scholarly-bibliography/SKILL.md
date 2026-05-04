---
name: autism-scholarly-bibliography
description: |
  Curated scholarly bibliography for autism research, theory, history, and clinical practice — organized by domain, with each entry tagged for audience (researcher/clinician, informed lay reader, or both). Covers foundational and contemporary peer-reviewed literature, neurodiversity-affirming scholarship, contested classics with critical framing, autistic-authored academic work, and graduate reading lists.
  TRIGGERS: requests for academic sources, peer-reviewed literature, scholarly references, research citations, dissertation reading, evidence base for autism positions, finding the original study on a concept (autistic burnout, masking, monotropism, double empathy), historical autism literature, "what does the research say," "is there a study on," "I need a citation," "academic sources," or naming specific researchers needing source documentation.
  Standalone but knowledge-core-aware: defers to autism-knowledge-core when present; carries enough framing to operate without it.
---

# Autism Scholarly Bibliography

A curated bibliography for serious reading on autism — research, theory, history, and clinical practice. Organized by domain. Every entry tagged for audience.

## Audience tags

Each entry carries one of three tags:

- **[R/C]** — Researcher / Clinician. Peer-reviewed, technical, often paywalled. Assumes background in research methods, clinical terminology, or the field's existing literature.
- **[Lay]** — Informed lay reader. Academic in approach but accessible without prior training. Trade press, accessible review articles, or scholarly books written for general audiences.
- **[Both]** — Reaches both audiences. Often the most-cited works in the field — accessible enough for serious lay readers, technical enough to be cited in academic work.

## Reference files

Read the file matching the user's domain of interest. Most queries will need only one or two.

| File | Domain |
|---|---|
| `references/foundational-and-historical.md` | Field origins, contested classics (Kanner, Asperger, Lovaas, Bettelheim), the DSM history, retracted vaccine literature, the Asperger Nazi-era documentation |
| `references/neurodiversity-and-affirming-scholarship.md` | The neurodiversity paradigm, double empathy problem, monotropism, autistic burnout, masking, autistic identity, critical autism studies |
| `references/diagnostic-and-assessment-research.md` | Diagnostic instruments (ADOS, ADI-R, RAADS-R, AQ, CAT-Q), validity studies, female and adult presentations, late diagnosis, sex/gender differences |
| `references/intervention-research.md` | ABA evidence and critiques, alternatives (DIR/Floortime, SCERTS, Hanen, ESDM), early intervention literature, OT and SLP research, AAC, the "indistinguishable from peers" controversy |
| `references/sensory-and-cognitive.md` | Sensory processing, interoception, monotropism, attention, executive function, alexithymia, prediction-and-uncertainty models, weak central coherence (and critiques) |
| `references/co-occurring-and-mental-health.md` | ADHD comorbidity, anxiety, depression, suicidality (Cassidy et al.), trauma, PTSD, eating disorders/ARFID, EDS/hypermobility, PMDD |
| `references/lived-experience-and-qualitative.md` | Phenomenological research, autistic-authored academic work, community-based participatory research (CBPR), qualitative studies of autistic life |
| `references/policy-and-rights.md` | Disability rights, ADA jurisprudence, special education law, employment research, restraint and seclusion, deinstitutionalization, self-advocacy history |
| `references/journals-and-databases.md` | Where the literature lives — journals, databases, search strategies, key research groups (AASPIRE, INSAR, the Autistic Self Advocacy Network's research arm) |

## How to use this skill

When the user asks for sources, follow this order:

1. **Identify the domain.** What is the user actually citing — a clinical claim, a historical position, a critique, a phenomenon, a measurement? The domain determines which reference file to load.
2. **Identify the audience.** Are they writing a dissertation, a policy brief, a blog post, a parent-facing handout, a clinical note? This determines which entries to surface.
3. **Surface 3–7 entries, not 30.** A bibliography is useful when it's curated. Long lists are less useful than the right four citations with framing on what each does.
4. **Frame each recommendation.** What does this source argue, why does it matter, what are its limitations? Citation alone is rarely enough.
5. **Note when an entry is contested.** Foundational works in autism research include several that the field has substantially revised or rejected. Cite them honestly with that context.

## Knowledge-core integration

If `autism-knowledge-core` is loaded:
- Defer to its language conventions (identity-first by default, no functioning labels except when quoting)
- Apply its hard guardrails — pseudoscience refusal list governs which sources are off-limits regardless of academic provenance
- Use its first-turn calibration for the conversation context
- Use the affirming-voices reading list (`vetted-sources.md`) for non-scholarly recommendations; reserve this skill's references for academic work

If standalone (no knowledge core present):
- Default to identity-first language ("autistic person")
- Avoid functioning labels in framing, even when describing studies that use them
- Treat self-diagnosis as legitimate where relevant
- Apply equivalent guardrails — do not cite or legitimize MMS, chelation, or "cure" literature as if it were credible science. Older deficit-model work can be cited with critical framing; pseudoscience cannot be cited as evidence.

## Citation conventions

When producing references, use a stable format:

> **Author, A. A., & Author, B. B. (Year).** *Title of work*. Publisher or Journal, volume(issue), pages. DOI or stable URL if available. **[Tag]** — One-line framing of what this source does, why it matters, and what limitations apply.

Use APA-7 unless the user requests otherwise. Many autism journals expect APA; some clinical journals require AMA; humanities-leaning critical autism studies sometimes use Chicago. Match the user's stated context.

## What this skill is not

- **A literature review service.** It curates entry points; it doesn't substitute for a systematic review on a specific question.
- **A current-research feed.** Some references are decades old (and remain canonical); others are recent. The skill doesn't promise comprehensive currency. For genuinely current literature, recommend the user search PubMed, Google Scholar, or specific journals directly.
- **A substitute for librarian or methodologist consultation.** For dissertation-level work, recommend a research librarian.
- **A neutral "all sides" reference.** Some positions in autism literature have been substantially discredited (vaccine causation, refrigerator mother theory, facilitated communication as primary AAC). The skill names them honestly. It does not present them as legitimate alternatives to current consensus.

## When to recommend the user search directly

If the user needs:
- The most recent meta-analysis on a clinical question — point to PubMed and Cochrane
- A specific instrument's psychometric properties — point to the original validation paper plus subsequent studies
- Country-specific policy or legal scholarship — point to the relevant national database (e.g., HeinOnline for US legal, ERIC for special education)
- Conference proceedings — point to INSAR's annual meeting archives

The bibliography is a starting point, not a destination.
