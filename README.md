# Argora Sales Engine — Setup (5 minutes)

1. Drop this folder anywhere, e.g. ~/dev/argora-sales, then:
     cd ~/dev/argora-sales && claude
   Claude Code auto-loads CLAUDE.md as project memory and the skills as
   slash commands (/daily, /leads, /outreach, /trial-rescue, /partner,
   /content, /coach).

2. First session, in this order:
   - Paste in your Supabase trial-user export (or point Claude at the CSV)
     -> it populates pipeline.csv
   - Run /trial-rescue        -> drafts the rescue sequence for all 24
   - Run /leads hvac Edmonton -> first cold batch
   - Run /daily every morning after that. That's the whole ritual.

3. Optional: "always on" morning briefing via cron + headless mode:
     0 7 * * 1-5 cd ~/dev/argora-sales && claude -p "/daily" >> briefings.log
   (Headless runs reuse the same CLAUDE.md, skills, and permissions.)

4. Rules of the road:
   - Claude drafts, YOU send. Nothing goes out without your eyes on it.
   - Report every call/reply outcome back ("/coach debrief") — the engine
     only compounds if learnings.md keeps growing.
   - When you're tempted to build instead of sell, Claude is instructed
     to call you on it. Let it.

Files:
  CLAUDE.md            the sales brain (edit facts here as they change)
  PLAYBOOK.md          the 90-day plan
  pipeline/            CRM + activity log + learnings (Claude's memory)
  assets/              canonical scripts & one-pagers
  .claude/skills/      the 7 slash commands

--- V2 (July 2026) ---
Added: /ads skill (live campaign management), assets/offer.md,
trial-rescue-emails.md (send-ready), testimonial-ask.md, missed-call-audit.md,
objections.md, landing-page-hvac.md, ads-copy.md, conversion-tracking.md,
supabase-export.sql. CLAUDE.md + PLAYBOOK.md updated (ads live, offer
structure, new lead sources, gates).

FIRST 72 HOURS CHECKLIST:
[ ] Verify Google Ads conversion tag (assets/conversion-tracking.md) — TODAY
[ ] Run supabase-export.sql, feed CSV to Claude Code -> pipeline populated
[ ] Send Touch 1 rescue email to all dormant trials (assets/trial-rescue-emails.md)
[ ] Call the 3 actives (assets/testimonial-ask.md) -> proof + referrals
[ ] Publish the offer: guarantee + Aug 1 deadline on site
[ ] /coach roleplay once, then first 5 cold calls with missed-call audit
