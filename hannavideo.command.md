---
name: hannavideo
description: "Free-first media routing for the Prosper fleet. Loads the hannavideo skill — Higgsfield UNLIMITED first, Google Veo/Imagen second, ElevenLabs voice, credits then ffmpeg last. Use any time an agent reaches for image/video/voice/multimodal gen."
---

# /hannavideo

Routes any media generation through the FREE/UNLIMITED tiers first. See `~/.claude/skills/hannavideo/SKILL.md` for the full order of operations.

Quick reference:
- Branded Hanna image → `soul_2` / `soul_cinematic` (UNLIMITED 365)
- Photoreal image → `nano_banana` / `kling_omni_image` / `gpt_image` (UNLIMITED 365)
- Video → `seedance_2_0` (FULL ACCESS) or Google Veo 2/3
- Voice → ElevenLabs Hanna `MBOX74y6c3lQRInUUnKV` / Kayla `OFOPgozS9detM2RF0Rk4`
- Last resort only → local ffmpeg / PIL

Never report "out of credits" without `show_plans_and_credits` first.
