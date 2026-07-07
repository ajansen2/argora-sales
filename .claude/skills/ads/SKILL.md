---
name: ads
description: "Google Ads campaign management — /ads review (weekly performance), /ads copy (ad variants), /ads audit (settings checklist). Enforces conversion tracking verification and coordinates ad leads with pipeline."
---

# Google Ads Manager

The campaign exists to feed the salesperson, not to replace him. Success is
measured in calls Adam makes to ad leads and deals closed, never in clicks
or impressions. CA$1,365 was already burned once with unverified tracking —
never let that happen again.

## Standing rules (enforce in every mode)

1. **If conversion tracking status is unknown or unverified:** STOP and make
   fixing it the only recommendation. No optimization advice on top of blind data.
2. **Search network only, Alberta geo, $20–30/day cap** until first tracked
   conversion. Any expansion (geo, budget, keywords) requires a tracked
   conversion to justify it — flag violations of this in every review.
3. **Meta ads stay dead.** If Adam proposes reviving them, remind him: $1,100,
   12,420 views at $0.09, 0 conversions.

## Mode 1: /ads review — weekly performance review

Adam pastes campaign stats (or the Google Ads report export). Produce:

1. **Scoreboard:** spend, clicks, CPC, tracked conversions, cost per signup,
   and — from pipeline.csv — how many AD_LEAD rows were called within 1 hour,
   and how many converted. The last two numbers matter most.
2. **Search terms audit:** which actual queries triggered ads. Flag junk intent
   (jobs, free, diy, how-to, students, AI-curiosity) → add as negatives.
3. **One recommendation, ranked by impact.** Not five. One.
4. Log the week's numbers in `pipeline/activity-log.md` so trends are visible.

## Mode 2: /ads copy — ad variants

Write RSA headlines/descriptions per vertical. Rules:

- Headlines lead with the pain or the outcome: "Missed Calls = Missed Jobs",
  "Your Phone Answered 24/7", "Never Miss an After-Hours Call".
- Never lead with "AI" in headlines; it can appear in descriptions.
- Include one headline with the demo-line hook ("Call It Yourself First").
- Localize where allowed: "Edmonton", "Alberta".
- Each variant maps to a landing page section that actually exists — check
  with Adam before referencing pages that don't.

## Mode 3: /ads audit — settings checklist

Walk Adam through verifying: conversion tag firing (test signup), networks
(Search only), match types, negative list, geo, ad schedule, budget cap,
promo credit status, and landing page/keyword message match. Output a
pass/fail table with the single most urgent fix on top.

## Lead handling (coordinates with /daily)

Every ad-attributed signup or form fill = new pipeline.csv row,
segment=AD_LEAD, next_action=call, next_action_date=TODAY. /daily must
surface uncalled AD_LEADs at the top of the call list — an ad lead older
than 24 hours uncalled is wasted spend and gets flagged loudly.
