# Exploratory Testing Charters

## Charter 1 — Assessment resilience
**Mission:** Explore what happens to an assessment submission when connectivity is slow, interrupted or repeated.

**Focus:** duplicate submission, unclear state, retry behaviour, stale UI, data persistence, user recovery.

**Time box:** 60 minutes.

**Evidence:** session notes, requests/responses where appropriate, screenshots/video, data checks and defects/questions.

## Charter 2 — Progress integrity
**Mission:** Explore whether progress remains associated with the correct learner and course across navigation, refresh and concurrent sessions.

**Focus:** stale state, cross-account leakage, duplicate events, rollback, eventual consistency.

**Time box:** 60 minutes.

## Charter 3 — Authorization boundaries
**Mission:** Explore whether changing URLs, IDs or navigation state exposes learning content not assigned to the user.

**Focus:** server-side authorization rather than UI hiding alone.

**Time box:** 45 minutes.

A charter guides investigation without turning exploration into a scripted test case. Findings may be defects, risks, questions or new regression ideas.
