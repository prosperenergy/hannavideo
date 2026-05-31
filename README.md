# hannavideo

**Free-first media routing skill for the Prosper Energy AI fleet.**

`hannavideo` is the canonical media-generation skill across every Prosper agent — Hanna, Sam, Kayla, Burtha, Oma, Hanna-CLI, and the Cowork seat. It enforces a single, non-negotiable order of operations for ANY image, video, voice, or multimodal generation task:

1. **Higgsfield ULTRA — FREE / UNLIMITED tier first.** Soul V2 / Soul Cinema for branded Hanna work, Seedance 2.0 (Full Access) for video, Nano Banana / Kling O1 / Flux.2 Pro for stills — all included in the ULTRA plan we already pay for.
2. **Google AI Studio — free direct path second.** Veo 2 / Veo 3 for cinematic motion, Imagen 3 / 4 for photoreal stills, Gemini 2.5 for multimodal reasoning.
3. **ElevenLabs Pro pool** for voice (Hanna VO ID `MBOX74y6c3lQRInUUnKV`, Kayla VO ID `OFOPgozS9detM2RF0Rk4`).
4. **Paid Higgsfield credits** only when (1) and (2) genuinely can't deliver.
5. **Local ffmpeg / PIL** as last-resort fallback, never the default.

## Install

The skill installs to every fleet surface:

```
~/.claude/skills/hannavideo/SKILL.md         # Claude Code / Cowork
~/.codex/skills/hannavideo/SKILL.md          # Codex CLI / Sam
~/.agents/skills/hannavideo/SKILL.md         # Generic agent surface
~/ClaudeCodexBridge/skills/hannavideo/       # Prosper canonical
~/ClaudeCodexBridge/cmux/<agent>/skills/hannavideo/  # Per-cmux pane
```

Slash-command: `/hannavideo`

## Hard prohibitions

- ❌ Never report "out of credits" without first calling `show_plans_and_credits` and verifying the unlimited tier can't cover the request.
- ❌ Never default to `ffmpeg + PIL` when Seedance 2.0 is sitting there free.
- ❌ Never burn paid credits on a model the unlimited list can render.
- ❌ Never post a social asset without a paired visual.

## Why this exists

Locked by Craig 2026-05-31 after a credit balance of 0.88 was wrongly reported as a blocker — when the ULTRA subscription includes 365-day unlimited access to the entire Hanna brand image rail plus full access to Seedance 2.0 for video. The skill is the codified fix so no agent in the fleet repeats the mistake.

## License

Internal Prosper Energy / Prosper Shield. Not for redistribution.
