# Activity Log
One dated entry per action. Claude reads this at every session start.

## 2026-07-06
- Sales engine initialized.
- Fly.io voice server was down (app deleted). Rebuilt as argora-voice-ws-2, redeployed.
- All 24 trial accounts extended 30 days (expire Aug 6, 2026).
- Built auto-activation: new signups get SMS + test call 5s after onboarding.
- Added "Test my AI receptionist" button to dashboard for users with 0 calls.
- Sent re-engagement emails to 21 dormant trial users (0 calls). 0 errors.
- Trial expiry enforcement: expired trials now hear upgrade message instead of AI.
- Health check now sends SMS + email alerts when server goes down.
- ElevenLabs API key updated on Fly.io (new key with TTS permissions).
- Pipeline populated from Supabase: 29 rows (21 real trials, 2 junk, 6 test/churned).
- Priority follow-ups for July 9: Aaron (Fah-Cue, 3 calls), David Henderson (Innovative Cyber, 1 call).
- Moved sales engine from ~/Downloads to ~/dev/argora-sales.
