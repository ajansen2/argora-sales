---
name: trial-rescue
description: Convert the dormant Argora Voice trial signups into activated users and paying customers. The warmest pipeline we have - these people already signed up. Run when Adam exports the trial list or reports trial outcomes.
---

# Trial Rescue

These 24 people raised their hand and then went silent. That is almost always an
**activation failure** (setup felt hard, or life happened), not a rejection.
Treat them as the highest-value segment in the pipeline.

## Sequence per trial user (draft all touches, Adam sends)

**Touch 1 — founder email (personal, not automated-looking):**
Under 80 words. Pattern:
"Hi [name] — Adam here, I built Argora Voice. Saw you signed up but never got
your number connected. Totally normal, the setup is the annoying part — can I
just do it for you on a 10-minute call this week? You'll have it answering your
phone before we hang up. [2 time options]"
No marketing language. No feature list. One CTA: the setup call.

**Touch 2 (day 3) — SMS if number on file:** under 30 words, same offer.

**Touch 3 (day 7) — the deadline email:**
Announce the end of EARLY_ADOPTER_MODE honestly: free period ends [date];
anyone activated before then keeps a grandfathered rate ($199/mo suggested —
confirm with Adam) locked for 12 months. Deadline must be real. Never fake urgency.

**Touch 4 (day 14) — breakup email:** "Closing your account on [date] unless
I hear from you — one click to keep it." Breakup emails get the most replies;
keep it warm, not passive-aggressive.

## On the setup call (prep sheet for Adam)
- Goal: number forwarded and AI answering LIVE before hanging up.
- Ask: "What made you sign up in the first place?" — log the answer verbatim
  in learnings.md; these answers are our best marketing copy.
- End with: "It's live. When it books its first job, I'll text you."

## Tracking
Every trial user gets a row in pipeline.csv (segment=TRIAL). After each of
Adam's reports, update status and log objections in learnings.md. Weekly,
report: contacted / replied / activated / converted, and the top objection.
