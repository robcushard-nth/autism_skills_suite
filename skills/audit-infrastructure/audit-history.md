# Audit History — Autism Skills Suite

| Run ID | Date | Type | Skills baseline | PASS | PARTIAL | FAIL | Agreement vs. prior | Key findings | Report |
|---|---|---|---|---|---|---|---|---|---|
| Original | 2026-05-04 | Self-evaluation | Pre-AS-1 | 22 | 4 | 0 | — | 4 design gaps: T3 dual identity, T4 overtrigger, E1 AAC depth, H1 manipulation framing | (inline in AS-1 doc) |
| AS-2-2026-05-04 | 2026-05-04 | Blind (agent-graded) | AS-1 `c0fc078` | 24 | 1 | 1 | 20/26 (76.9%) | All 4 AS-1 patches verified (T3, T4, E1, H1: PARTIAL→PASS). 2 new gaps: S1 mid-meltdown structured (PASS→FAIL), T2 "same child" dismissal (PASS→PARTIAL). 4 favorable disagreements + 2 unfavorable. | `runs/run-as2-2026-05-04/comparison-report.md` |
| AS-3-2026-05-04 | 2026-05-04 | Targeted patch + smoke test | AS-2 `45bf95d` | smoke: 2 PASS / 0 PARTIAL / 0 FAIL | — | — | n/a (smoke test, not full re-audit) | Patch A: self-coach mid-meltdown operational rules. Patch B: parent-coach avoid list expanded with same-child dismissal. Both AS-2-flagged gaps close under smoke-test re-grading. | `runs/run-as3-2026-05-04/smoke-test.md` |
