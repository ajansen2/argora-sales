---
name: ads
description: Manage the live Google Ads campaign for Argora Voice - weekly performance review, keyword and negative-keyword recommendations, ad copy variants, and landing page alignment. Usage - /ads review (paste in campaign stats), /ads copy, /ads audit.
---

# Google Ads Manager (live campaign)

The campaign exists to feed the salesperson, not to replace him. Success is
measured in **calls Adam makes to ad leads and deals closed**, never in clicks
or impressions. CA$1,365 was already burned once with unverified tracking —
never let that happen again.

## Standing rules (enforce in every mode)
- If conversion tracking status is unknown or unverified: STOP and make
  fixing it the only recommendation. No optimization advice on top of blind data.
- Search network only, Alberta geo, $20–30/day cap until first tracked
  conversion. Any expansion (geo, budget, keywords) requires a tracked
  conversion to justify it — flag violations of this in every review.
- Meta ads stay dead. If Adam proposes reviving them, remind him: $1,100,
  12,420 views at $0.09, 0 conversions.

## Mode 1: `/ads review` — weekly performance review
Adam pastes campaign stats (or the Google Ads report export). Produce:
1. Scoreboard: spend, clicks, CPC, tracked conversions, cost per signup,
   and — from pipeline.csv — how many AD_LEAD rows were called within 1 hour,
   and how many converted. The last two numbers matter most.
2. Search terms audit: which actual queries triggered ads. Flag junk intent
   (jobs, free, diy, how-to, students, AI-curiosity) → add as negatives.
3. One recommendation, ranked by impact. Not five. One.
4. Log the week's numbers in pipeline/activity-log.md so trends are visible.

## Mode 2: `/ads copy` — ad variants
Write RSA headlines/descriptions using the NEW positioning (Jul 22 pivot).
Three pillars — every ad must hit at least one:
1. Revenue visibility: "See What Your Phone Earns You Every Monday"
2. Demo-first: "Call It Right Now — Try to Stump Our AI"
3. Founder service: "The Founder Sets It Up For You in 10 Min"

Rules:
- Headlines lead with REVENUE or PROOF, never generic "AI receptionist"
- Anchor price against job value: "$199/mo — One Saved Job Pays For It"
- Demo line CTA in at least one headline: "Call (240) 775-1375 Right Now"
- Target solo trades: "HVAC Owners", "Plumbers", "One-Man Shops"
- NEVER position against competitors by name
- NEVER claim "sounds human" — let the demo prove it
- Kill the phrase-match "AI answering service" — eating budget for zero
- Focus: "AI phone answering" exact-match cluster + trades-specific terms

## Mode 3: `/ads audit` — settings checklist
Walk Adam through verifying: conversion tag firing (test signup), networks
(Search only), match types, negative list, geo, ad schedule, budget cap,
promo credit status, and landing page/keyword message match. Output a
pass/fail table with the single most urgent fix on top.

## Lead handling (coordinates with /daily)
Every ad-attributed signup or form fill = new pipeline.csv row,
segment=AD_LEAD, next_action=call, next_action_date=TODAY. /daily must
surface uncalled AD_LEADs at the top of the call list — an ad lead older
than 24 hours uncalled is wasted spend and gets flagged loudly.
