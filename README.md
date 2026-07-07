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
