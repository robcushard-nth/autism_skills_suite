# Architecture

How the four skills relate, and the design decisions behind that structure.

## The dependency graph

```
                  autism-knowledge-core
                  (foundation library)
                          │
            ┌─────────────┼─────────────┐
            │             │             │
            ▼             ▼             ▼
  autism-self-coach   autism-parent-coach
  (autistic users)    (caregivers)

  autism-scholarly-bibliography
  (standalone, knowledge-core-aware)
```

## Why four skills, not one

A single monolithic "autism" skill would have several problems:

1. **Audience-specific tone matters.** Autistic adult users prefer direct, literal, low-affect coaching. Parents need acknowledge-then-structure framing. Researchers need citation-grade output. One skill cannot hold three voices coherently.

2. **Trigger ambiguity.** "I had a meltdown" needs different handling depending on whether the user is autistic and self-coaching, or a parent describing their child. Separate trigger sets in separate skills handle this cleanly.

3. **Maintenance and review.** Updating the bibliography shouldn't require re-reviewing the parent-coach. Updating crisis resources in one place should propagate everywhere — hence the knowledge core.

4. **Composability.** A user who only wants the bibliography doesn't need to install the coaches. Project-scoped installs work better with discrete units.

## The knowledge core pattern

The core holds:

- **Language and framing conventions** — used by all skills for consistent output
- **Frameworks** — sensory, executive function, meltdown/shutdown/burnout — referenced by both coaches and the bibliography
- **Hard guardrails** — crisis routing, pseudoscience refusal, ABA stance, no-diagnosis rule
- **First-turn calibration** — the brief intake that opens coaching conversations
- **Vetted reading lists** — non-scholarly recommendations (memoirs, organizations, online communities)

The two coach skills depend on the core. They include explicit instructions to read the core's references before producing substantive output. Without the core, the coaches drift toward generic advice that loses the affirming framing.

The bibliography skill is **knowledge-core-aware**: if the core is loaded, the bibliography defers to its language conventions and guardrails. If the core is absent, the bibliography includes equivalent inline framing — enough to operate standalone without ABA-as-default drift, deficit framing, or pseudoscience legitimization.

## File-level structure

Each skill follows the same shape:

```
<skill-name>/
├── SKILL.md           # YAML frontmatter (name, description, triggers)
│                       # Markdown body explaining when to read references
└── references/
    ├── topic-1.md     # Deep content loaded only when the topic is relevant
    ├── topic-2.md
    └── ...
```

This implements **progressive disclosure**:

- **Always loaded:** The skill name and description (used for trigger matching)
- **Loaded when triggered:** The SKILL.md body (~150–300 lines per skill)
- **Loaded when relevant:** Specific reference files (300–500 lines each, loaded only as needed)

Total content available: ~4,700 lines across 41 files. Total content typically loaded for a single conversation turn: 500–1,500 lines.

## Trigger design

Each skill's description includes a TRIGGERS section with explicit phrases that should activate it. Example from `autism-self-coach`:

> TRIGGERS: first-person queries from anyone identifying as autistic, neurodivergent, ADHD, AuDHD, or "on the spectrum"; masking, unmasking, autistic burnout, late diagnosis, sensory overload, executive dysfunction, accommodation requests, disclosure decisions, autistic relationships, dating while autistic.

This is intentionally pushy — the skill should over-trigger rather than miss queries that would benefit from it. The risk of unwanted triggering is low (the skill produces useful content even on adjacent topics) while the risk of missed triggering is high (a user gets generic advice when they needed affirming framing).

## Tone calibration across skills

| Skill | Default tone | Why |
|---|---|---|
| autism-knowledge-core | Reference, not coaching | Library, not interlocutor |
| autism-self-coach | Direct, literal, low-affect | Mirrors autistic communication preference; avoids performative empathy |
| autism-parent-coach | Acknowledge briefly, then structure | Parents arrive with emotional load that needs recognition before they can engage with practical content |
| autism-scholarly-bibliography | Citation-grade, with framing | Academic register; sources presented with the context they need |

These are defaults. All skills mirror user style — if a self-coach user wants more emotional engagement, the skill matches. If a parent-coach user wants to skip the acknowledgment and get to the work, the skill matches. The defaults are starting points, not rigid scripts.

## Hard guardrails — uniform across skills

Six rules apply identically across all four skills:

1. **No diagnosis.** Skills do not diagnose. They walk users through what evaluation looks like and route to evaluators.

2. **Crisis routing.** Suicidality, self-injury, abuse signals — pause coaching, provide resources matched to user's region, return when safe.

3. **Pseudoscience refusal.** MMS, chelation, hyperbaric for autism, stem cell tourism, "cure" framing — refused. FC distinguished from validated AAC.

4. **ABA controversy.** Present honestly when asked, offer alternatives, do not refuse to discuss, do not endorse as default.

5. **Self-diagnosis legitimacy.** Treated as legitimate in coaching contexts; users informed when formal evaluation is functionally needed.

6. **Identity-first language by default.** Switched to person-first only when the specific user prefers.

These are non-negotiable in the codebase. Contributions that weaken any of them are out of scope.

## Why MIT license

Skills are content + instructions. The closest legal analogy is software documentation. MIT is the most common, most permissive license for this kind of work, and it matches the goal of broad redistribution.

We ask (but do not require) that derivatives:
- Maintain the affirming framework
- Preserve the hard guardrails
- Credit the original suite

The license doesn't enforce these. The community standard does.

## Not in scope

A few things this architecture deliberately doesn't do:

- **No automated evaluation.** Skills don't run tests. The validation is human review.
- **No telemetry.** Skills don't report usage anywhere.
- **No external API calls.** Skills are self-contained markdown. They don't fetch external resources at runtime.
- **No personalization storage.** Each conversation is fresh; the skills don't remember previous users.

These are features, not gaps. The architecture is intentionally simple.
