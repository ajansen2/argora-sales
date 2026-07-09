---
name: trial-rescue
description: Convert the dormant Argora Voice trial signups into activated users and paying customers. The warmest pipeline we have — these people already signed up. Activation happens on the call, not after it.
---

# Trial Rescue

These people raised their hand and then went silent. That is almost always an
**activation failure** (setup felt hard, or life happened), not a rejection.
They are the highest-value segment in the pipeline — higher than any cold lead.

## The Script

**Read `assets/rescue-call.md` before every rescue session.** It contains the
complete call script, objection responses, voicemail, and SMS templates. The
core insight: activation happens LIVE on the call. You walk them through
forwarding, then call their number while they listen. Nobody stays dormant
after hearing the AI answer their own business.

## When /trial-rescue runs

1. Read `assets/rescue-call.md` (the master script)
2. Read `pipeline/pipeline.csv` — filter for segment=TRIAL, status=DORMANT
3. Sort by fit_score descending, then by created_at ascending (oldest first)
4. For each dormant trial, produce:
   - Their name, business, phone, email, signup date, call count
   - The personalized opener (fill in their name and business type)
   - The carrier-specific forwarding code (ask Adam which carrier if unknown)
   - The specific value math for their vertical (HVAC job = $300-1500, dental patient = $200-500)

## Call outcomes (log in pipeline.csv immediately)

| Status | Meaning | Next action |
|--------|---------|-------------|
| `activated` | Forwarding ON, heard live call | Watch for first booking, queue testimonial ask |
| `scheduled` | Locked a specific setup time | Calendar invite + SMS reminder same minute |
| `soft-no` | Not now, didn't cancel | SMS on July 29: "48hrs left on $199 lock" |
| `dead` | Cancelled or wrong fit | Mark closed, log reason verbatim in learnings.md |
| `no-contact` | No answer after 3 attempts | Move to soft-no track |

## Cadence

- Dormants go TOP of every 7:30-9:00 call block until the list is empty
- Cold leads wait — these people already want it, they just stalled
- No answer → voicemail + same-day SMS (from rescue-call.md)
- Second attempt next business day at a different hour
- Three no-contacts → soft-no track

## The close (from rescue-call.md)

$199/mo locked 12 months for anyone live before Aug 1. 30-day guarantee: no
booked appointments = no charge. The product is already working when you ask —
they're not buying a promise, they're keeping something they can hear.

## Tracking

Every outcome gets logged in pipeline.csv AND learnings.md. Weekly report:
contacted / replied / activated / converted, and the top objection heard.
The "why did you sign up?" answer from every call is marketing gold — log it.
