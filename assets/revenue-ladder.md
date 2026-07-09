# revenue-ladder.md — Making Argora Worth $500/mo

**The thesis:** $199 products save money. $500 products MAKE money and PROVE it. Every feature below either generates revenue for the customer or makes generated revenue visible. Nothing else earns a slot.

## THE NORTH STAR: Argora-Attributed Revenue (AAR)
One number rules the product: **the dollars Argora can point to and say "I did that."** Booked appointments × job value, deposits collected, prevented no-shows, refilled cancellations, reactivated customers, Spanish calls converted.
- AAR is the top line of the Monday report, the biggest font on the dashboard, the foundation of any guarantee, and the closer in every renewal ("Argora attributed $11,400 last quarter").
- Estimates are LABELED as estimates, built on conservative values, and the owner can correct their average job value in one tap. An owner who corrects the number downward and still sees 8x believes the report forever.

## THE FIVE VERBS (every feature must name one)
There are only five ways a tool makes a local business money:
1. **CAPTURE** revenue that's leaking — answered missed calls, Spanish calls, missed-call text-back
2. **PROTECT** revenue already booked — no-show prevention, deposits, backfill
3. **RECOVER** revenue gone dormant — reactivation campaigns
4. **CREATE** revenue that didn't exist — speed-to-lead, review engine, booking nudges
5. **REVEAL** revenue they can't see — missed-opportunity radar, call intelligence
Every feature spec, pitch line, and Monday-report line item states its verb and its dollar figure. No verb, no build.

**The rule that protects the sprint:** until 10 paying customers, only Tier 0 gets built. Feature-building feels like progress and is usually hiding from sales. Tier 0 is exempt because it directly helps close deals THIS month.

---

## TIER 0 — Build now (helps sell during the Aug 1 sprint)

### The Monday ROI Report
Weekly email + SMS to every owner:
- Calls answered (split: business hours / after hours / would-have-been-missed)
- Appointments booked, with estimated value (bookings × their avg job value — collect avg value at onboarding, one question)
- Headline math: "Estimated revenue captured: $4,100. Argora: $199. Return: 20x."
- One highlight transcript snippet ("Saturday 9:52pm — booked emergency furnace repair")
Data already exists in Supabase. This is a query + a template.
**Why Tier 0:** it's the retention engine, the testimonial generator, and the screenshot that sells the next customer. Also becomes the demo close: "and every Monday you get this email."

### Missed-call text-back
Caller hangs up before Argora finishes, or abandons mid-call → instant SMS: "Hi, this is {{BUSINESS}} — sorry we missed you! Want to book? Tap here or call back anytime, I'm always in."
Trivial build (you have Twilio SMS + call events). Recovers the leakiest bucket. Every recovered booking shows up in the Monday report.

---

## TIER 1 — First revenue-suite features (build at ~10 customers, launch as $499 tier)

### No-show prevention
Argora calls (or texts, owner's choice) every appointment 24h ahead: confirm / reschedule / cancel. Reschedules and cancels feed backfill (below).
Math for the pitch: dental no-show ≈ $200-900 of dead chair time; industry no-show rates run 10-20%. Preventing 3/month pays for the $499 tier alone.
Legal note: calling a business's own booked customers about their own appointment = transactional, consented. Keep it strictly first-party lists.

### Cancellation backfill
On any cancellation, Argora calls the waitlist (patients who wanted sooner slots — collect "want earlier if it opens?" during every booking, that builds the waitlist automatically) and fills the hole.
This is the most demo-able feature you'll ever build: cancel a fake appointment live, watch Argora dial the waitlist within 60 seconds.

### Speed-to-lead callback
Webhook from their website form / Google Business messages → Argora calls the lead within 60 seconds, qualifies, books.
Pitch line: "Leads called in under 5 minutes convert at multiples of leads called in 30 — and your competitor is currently beating you to every one of them."

### Deposits at booking (PROTECT — possibly the strongest $-per-effort in the stack)
Stripe already exists. When Argora books, it texts a deposit link: "$25 holds your Thursday slot — credited to your visit." For HVAC emergencies: take the service-call fee up front.
- Deposit-backed appointments no-show at a fraction of the rate. Cash hits the owner's account the moment the call ends — no human receptionist does that.
- Build: Stripe payment link per booking + one prompt paragraph + deposit status on the appointment record. AAR line: "deposits collected."
- Owner-configurable (amount, which services, on/off). Some verticals hate deposits; default off, pitch it where no-shows hurt.

### Booking-flow nudges (CREATE — zero marginal cost, prompt-level)
Two lines in the receptionist prompt with real revenue physics:
1. **Soonest-slot-first:** always offer the earliest available slot before others. Every day between booking and appointment is a day to cancel or find a competitor; faster bookings leak less.
2. **One natural add-on, only where it genuinely fits:** "Since the tech's already coming out, want the furnace inspection too? Saves you the second trip fee."
Hard rule: ONE nudge max per call, never on emergencies or anxious callers. Pushiness spends trust, and trust is the asset everything else rides on. Add a gauntlet check: judge flags any call with 2+ upsell attempts.

## TIER 2 — Compounding features (at ~25 customers / $10k MRR)

### Recall & reactivation campaigns
Owner uploads (or PMS-sync pulls) their customer list with last-visit dates. Argora works overdue customers a few calls/day: "Hi, it's {{BUSINESS}} — you're overdue for your cleaning/tune-up, want me to grab you a spot?"
This is the single biggest revenue generator in the stack — dormant customer lists are free money nobody has time to mine. Agencies charge $2-5k/mo for worse versions done by SMS blast.
Cap daily volume, business-hours only, always first-party lists, honor opt-outs instantly.

### Review engine
Day after completed appointments: SMS with the Google review link (voice call optional). More reviews → local SEO → more inbound calls → bigger Monday reports. The flywheel feeds its own attribution.

### Call intelligence digest
Monthly mined-transcript insights: top questions, price objections, services requested that they don't offer ("14 callers asked about Invisalign — that's ~$70k of demand you're turning away").
Costs almost nothing (LLM pass over transcripts you already store), reads like a $2k consulting report, and makes the owner smarter about their own business — which is the stickiest thing a SaaS can do.

## TIER 3 — Moat (at ~50 customers)

- **Deep integrations:** dental PMS (Dentrix/Open Dental), ServiceTitan/Housecall Pro for HVAC, plus Google Calendar fallback. Integrations = switching costs = pricing power.
- **Multi-location + franchise dashboard** — one owner, five locations, one Monday report. This is where $500/mo becomes $500/location.
- **Performance pricing experiment:** base + per-booked-appointment fee for new customers. Only viable once attribution (Monday report) is trusted — which is another reason Tier 0 ships first.

---

## Packaging (when Tier 1 ships)

- **Answer — $199/mo:** 24/7 answering, booking, SMS summaries, Monday ROI report, missed-call text-back. (Grandfathered founders live here forever. They become your case studies.)
- **Revenue — $499/mo:** everything above + no-show prevention, backfill, speed-to-lead, review engine.
- **Growth — $899/mo or custom:** + recall campaigns, call intelligence, integrations, multi-location.
- Guarantee evolves with the story: from "books appointments or free" to "captures 3x its cost in booked revenue or free" — the Monday report is what makes that guarantee safe to offer, because you'll know the number for every customer before you promise it.

## The positioning shift this enables

Stop selling "an AI receptionist" (a cost, compared to a human's wage).
Start selling "the revenue front desk — it answers, books, reminds, refills, and reports what it earned you every Monday."
Cost-savers get budget-line scrutiny. Money-makers get renewed without a meeting.

## THE FILTER (hang this over the workbench)
**If a feature can't eventually show up as a line item in the Monday report, it's a hobby.**
Spanish passes (captured calls, in dollars). Prosody passes (bookings completed that would've dropped). The mirror demo passes (it's how the money machine gets sold). Anything that can't name its verb and its dollar — cut it.
