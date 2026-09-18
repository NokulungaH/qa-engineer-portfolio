# Fictional Defect Reports

These are deliberately fictional examples showing defect-writing quality. They are not defects discovered in any employer or public system.

## DEF-001 — Duplicate assessment created after retry
**Severity:** High  
**Priority:** High  
**Environment:** QA / fictional build 2.4.0

**Precondition:** learner has one active assessment attempt.

**Steps**
1. Complete the assessment.
2. Submit while simulating a delayed response.
3. Retry submission before the first response is displayed.
4. Inspect confirmation and assessment records.

**Expected:** one submission is accepted; retry is handled idempotently or clearly rejected.

**Actual:** two submission records are created for the same attempt.

**Impact:** duplicate records can create ambiguous grading state and undermine assessment integrity.

**Evidence expected:** request IDs/timestamps, response payloads, UI recording and relevant test-data identifiers.

---

## DEF-002 — Unauthorized course details returned by direct ID request
**Severity:** Critical  
**Priority:** Immediate triage  
**Environment:** QA / fictional build 2.4.0

**Steps**
1. Authenticate as Learner A.
2. Request a course assigned only to Learner B using its identifier.

**Expected:** request is denied without exposing restricted course data.

**Actual:** fictional scenario returns course metadata and content.

**Impact:** potential authorization/data-exposure issue. Escalate through the organization's security/incident process and avoid unnecessary reproduction against production.

---

## DEF-003 — Completion notification not generated
**Severity:** Medium  
**Priority:** Normal  
**Environment:** QA / fictional build 2.4.0

**Expected:** successful course completion generates the configured notification event.

**Actual:** progress is saved correctly but no notification event is observed.

**Impact:** communication is missed, while the learner's core completion data remains intact.

## Severity vs priority
Severity reflects impact. Priority reflects when the team should address the issue. They are related but not interchangeable.
