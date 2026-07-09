# rescue-headtohead.md — Founder vs. Argora: The Rescue-Call Experiment

**The question:** Who reactivates more dormant trials in 7 days — the founder with rescue-call.md, or Argora with ai-rescue-campaign.md?

**Why it's safe to run:** Every path is a win. AI wins → the case study writes itself ("our AI receptionist out-sold its own founder"). Founder wins → founder-led sales is validated and the AI becomes the inbound/demo layer. Tie or both flop → you've learned the list is colder than thought, before wasting weeks on either theory.

---

## Assignment (do this once, before any calls)

1. Pool = the 19 dormant trials ONLY. Aaron (Fah-Cue) and David Henderson stay out — they have prior human touches and would contaminate the comparison. Keep working them as normal pipeline.
2. Sort the 19 by signup date, then alternate: 1st → AI, 2nd → HUMAN, 3rd → AI... Ends 10 AI / 9 HUMAN. Alternating on signup date roughly balances trial age across channels — no cherry-picking warm ones for either side.
3. Add columns to pipeline.csv:
   `channel` (ai | human) · `attempt_count` · `disposition` · `objection_verbatim` · `sms_sent` (y/n) · `booked_slot` · `activated_date` · `paid_date`
4. Assignment is frozen. Nobody switches channels mid-experiment.

## Fairness rules (what makes the result mean something)

- Same offer: $199 locked before Aug 1, 30-day guarantee, trial to Aug 6. Word-for-word identical numbers.
- Same goal ladder: live setup/transfer → booked slot → SMS link → clean exit.
- Same touch budget per prospect: max 2 calls, 1 voicemail, 1 same-day SMS, then done until scoring.
- Same window: calls placed 9am–6pm prospect-local, over the same 5 weekdays.
- Attribution by first outbound touch. If an AI-channel prospect calls back and lands on the founder, it still scores as AI — the AI opened the door. Same in reverse.
- Founder does NOT peek at AI transcripts mid-week and adjust his script (or vice versa). Scripts are frozen Day 0. Learning happens at the debrief, not during.
- AI kill switch still applies (5 connects, <30% reaching transfer-or-booked, or any "creepy" reaction → AI channel stops, its remaining prospects are scored as-is, noted in results).

## Timeline

- **Day 0 (tonight):** freeze assignments, freeze scripts, verify AI agent config + transfer routing + post-call webhook writes dispositions correctly. One test call to your own cell as final QA.
- **Days 1–3:** first attempts. Founder works his 9 in the 7:30–9:00 block. AI runs its 10 across the day windows.
- **Days 4–5:** second attempts on no-contacts. Voicemail + SMS complete the touch budget.
- **Days 6–7:** no new touches. Late callbacks and link-clicks land where they land.
- **Day 7 evening:** scoring + debrief. Winner announced. Loser buys the winner nothing because they are the same person and/or his software.

## Scoreboard (lives in the 7:03am briefing daily)

| Metric | AI (n=10) | Human (n=9) |
|---|---|---|
| Dials made | | |
| Connects | | |
| Connect rate | | |
| Transfers / live setups started | | |
| Slots booked | | |
| SMS links accepted | | |
| **ACTIVATIONS (forwarding ON)** | | |
| Paid conversions | | |
| Hard declines (with verbatim reason) | | |

**Primary metric: activations.** Bookings that don't lead to forwarding-on are theater. 
**Tiebreaker 1:** paid conversions. **Tiebreaker 2:** booked slots. 
**Sample-size honesty:** at n=19, treat anything closer than a 2-activation gap as a tie — direction, not proof. A tie still tells you the AI is roughly founder-equivalent on warm lists, which is itself a headline.

## Day-7 decision rules

- **AI wins:** AI takes over all future trial-rescue and reminder calling (consented lists only — cold lists stay human, non-negotiable). Founder's freed call block goes to cold HVAC/dental with the missed-call audit play. Publish the case study within 48h via /content while the data is fresh.
- **Human wins:** founder owns outbound; AI is repositioned to inbound (answers the sales line, runs the demo, books founder's calendar). Write the "why founder-led sales beat our own AI" post — that's ALSO a great post, it screams honesty.
- **Both flop (≤2 total activations combined):** the list isn't the problem-channel, the offer or the fear is. Next experiment: change one variable only — e.g., "first month $49" or "we set up forwarding FOR you via carrier portal" — and rerun on the non-responders.
- Whatever wins, the verbatim objections column becomes next sprint's onboarding fixes. That data is the real prize; the race is just how we collect it.

## Founder's pre-game rules (so the human side is a fair fighter)

- 7:15 roleplay via /coach before Day 1's block. You're competing against software that never has an off morning — warm up.
- Log every call within 2 minutes of hanging up, same fields the webhook writes. If the human channel has lazy data, the human channel forfeits the argument.
- No skipping days. The AI won't.
