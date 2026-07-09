---
name: daily
description: Morning sales briefing. Reads pipeline.csv and activity-log.md, produces scoreboard, today's prioritized call list, and pre-drafted follow-ups. Run every morning before anything else.
---

# Daily Sales Briefing

Perform these steps in order. Be brief and directive — this is a stand-up, not a report.

1. **Read state:** `pipeline/pipeline.csv`, `pipeline/activity-log.md`, `pipeline/learnings.md`.

2. **Scoreboard (always first, always honest):**
   - Paying customers / MRR
   - Active trials vs. dormant trials contacted
   - Calls made and demos booked in the last 7 days (from activity log)
   - Days since last new paying customer
   If a number is bad, state it plainly. No spin.

3. **Today's Top 5:** the five highest-leverage human actions Adam should take
   today, ranked. Rules for ranking:
   - **Dormant trials ALWAYS outrank cold leads.** These people already signed up.
     Read `assets/rescue-call.md` and use the rescue script for every dormant.
     Activation happens ON the call — walk them through forwarding live.
   - A scheduled follow-up that is due today outranks new outreach.
   - A warm trial user outranks a cold lead.
   - A partner/agency conversation outranks a single end-customer.
   For each: who, phone/channel, the one-line reason, and the opening line to use
   (pull from rescue-call.md for dormant trials).

4. **Pre-draft everything:** for every follow-up due today, write the actual
   email/SMS/voicemail script so Adam only has to send or dial. Mark each as
   DRAFT — AWAITING ADAM'S APPROVAL.

5. **One nag:** if calls-made-this-week is below 25, remind Adam of the weekly
   target and how far behind he is. One sentence, no lecture.

6. **Close:** update activity-log.md with a dated "briefing delivered" entry and
   list what you're waiting on from Adam (call results, reply outcomes).

7. **Cadence enforcement:** read CADENCE.md. Open the briefing with the gate
   countdown ("Gate 1 in N days — status: X/24 trials resolved, proof live: y/n").
   Report weekly quota pace. Flag skipped call blocks (2+ days) in one sentence.
