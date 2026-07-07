---
name: outreach
description: Draft personalized first-touch outreach for a lead in pipeline.csv - cold call opener, voicemail, email, and LinkedIn DM. Usage - /outreach <company name> or /outreach batch for all NEW leads.
---

# Outreach Drafting

Arguments: `$ARGUMENTS` = a company name from pipeline.csv, or `batch`.

For each lead, produce a **channel kit** (all four, Adam picks):

## 1. Cold call opener (primary channel — phones are their world)
- 15 seconds max. Pattern:
  "Hi [name], it's Adam with Argora here in [Edmonton/their city]. Quick one —
  I noticed [specific hook]. I run a phone answering service built for [trade];
  it picks up the calls you're missing and books the job. Worst case you hang
  up on a robot — want to hear it? Call [demo number] and it'll answer."
- Include: best time to call (from lead notes), likely gatekeeper handling,
  and the ONE question to ask if they engage: "How do you handle calls when
  you're on a job / with a patient?"

## 2. Voicemail (they won't pick up ~70% of the time)
- Under 20 seconds spoken. Must include the demo number twice.

## 3. Email (CASL-compliant for Canadian leads)
- Under 100 words. Subject under 6 words, lowercase, curiosity or specific
  ("your google reviews", "missed calls at [company]").
- Body: hook → one-sentence what-we-do → demo-number CTA.
- Footer: Adam's name, ARGORA TECHNOLOGIES INC., mailing address, unsubscribe line.

## 4. LinkedIn/Facebook DM (if owner profile found)
- Under 40 words, no link in first message.

## Rules
- The specific hook from pipeline.csv must appear in every variant. If the
  hook field is empty, STOP and route the lead back to /leads for research.
- Mark everything DRAFT — AWAITING ADAM'S APPROVAL. Never imply anything sends
  automatically.
- After drafting: update pipeline.csv (status=DRAFTED, next_action + date:
  follow-up in 3 business days if no reply), log in activity-log.md.
- Follow-up sequence rule: touch 1 (call+vm), touch 2 email day 3,
  touch 3 call day 7, touch 4 "closing the file" email day 14, then status=COLD.
  Draft each follow-up referencing the prior touch, never restarting the pitch.
