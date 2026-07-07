---
name: leads
description: Research and score a batch of prospect leads for Argora Voice in a given vertical and city. Usage - /leads hvac Calgary or /leads dental Edmonton. Produces 10 scored leads with specific hooks, appended to pipeline.csv.
---

# Lead Research

Arguments: `$ARGUMENTS` = vertical + city (default: HVAC, Edmonton).

## The ideal customer (score against this)
- Local service business, 3–25 employees (big enough to lose money on missed
  calls, small enough to have no full-time receptionist)
- Evidence of missed-call pain — score these hooks highest:
  - Google reviews mentioning "couldn't reach them", "never called back",
    "phone rang forever", "left a voicemail"
  - No listed after-hours/emergency line despite offering emergency service
  - Hours listed as weekdays-only in a 24/7-demand trade
- Owner-operated (owner's name findable = better outreach)

## Process
1. Use web search to find candidates in the given vertical + city. Check their
   website, Google Business listing, and recent reviews.
2. For each lead capture: company, owner name (if findable), phone, website,
   city, employee-size estimate, **the specific hook** (quote or paraphrase the
   actual review/gap you found — this is the personalization the outreach skill
   will use), and fit score 1–5 with one-line justification.
3. Quality bar: 10 leads with real hooks beats 30 without. Discard any lead
   where you couldn't find a specific hook — log it as discarded so we don't
   re-research it.
4. Append accepted leads to `pipeline/pipeline.csv` with status=NEW and
   next_action=first-touch. Log the batch in activity-log.md.
5. End with: "Ready to draft outreach — run /outreach <name> or /outreach batch."

## Rules
- Never invent a hook. If the review quote can't be found, don't use it.
- Businesses only. Never collect personal/residential contact info.
- Note the business's likely busy hours so Adam calls at a good time
  (trades: 7–8am before jobs start; clinics: mid-afternoon).
