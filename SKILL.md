---
name: hannavideo
description: "Default media-generation routing for every Prosper agent. ALWAYS exhaust the paid-subscription FREE/UNLIMITED tiers before touching credits or local fallback. Triggers on any image, video, voice, or multimodal generation task — Higgsfield, Google AI Studio (Veo/Imagen), ElevenLabs, ffmpeg. Slash: /hannavideo."
argument-hint: "[task] e.g. 'video of Hanna delivering the heat winners' / 'social card for tomorrow's announcement' / 'reel of the Garett interview'"
---

# /hannavideo — Free-first media routing for the Prosper fleet

**Locked by Craig 2026-05-31.** Default for every agent: Hanna, Sam, Kayla, Burtha, Oma, Hanna-CLI, Cowork seat, plus any new pane.

## The rule, in order

### 1. Higgsfield ULTRA — FREE / UNLIMITED first
Craig pays ULTRA. Use what's already paid for **before** anything else.

| Need | Model | Tier |
|---|---|---|
| Branded Hanna images | `soul_2` (Soul V2) / `soul_cinematic` (Soul Cinema) + Soul ID `01db6215-5f79-4ed9-aab6-06861ac1f3db` | 365-UNLIMITED + 5,000 free gens |
| Photoreal stills | `nano_banana` / `kling_omni_image` / `gpt_image` | 365-UNLIMITED |
| 4K editorial | `seedream_v4_5` (2K/4K) | 365-UNLIMITED |
| Pro typography / Flux | `flux_2` (1K, pro) | 365-UNLIMITED |
| Ultra-quality images | `nano_banana_pro` / `nano_banana_2` | 7-UNLIMITED |
| **Video** | `seedance_2_0` / `seedance_2_0` fast mode | **FULL ACCESS** |
| Cinematic motion (when active) | `kling_3` | 7-UNLIMITED |

Verify the live unlimited list with `mcp__87a40631-373a-4926-a54f-9050735bd12d__show_plans_and_credits` before any quota claim. The 3,000 monthly credits are reserved for premium models not on the unlimited list.

### 2. Google AI Studio — FREE direct path SECOND
For Veo-grade cinematic motion or anything Higgsfield can't render at the bar.

- **Veo 2 / Veo 3** — text-to-video and image-to-video via Gemini API
- **Imagen 3 / Imagen 4** — photoreal stills via Gemini API
- **Gemini 2.5 Pro / Flash** — multimodal reasoning, image and video understanding
- prosper.energy Workspace already has Gemini app rights — use Workspace-tier access for the team

Auth path: Google AI Studio API key in `GOOGLE_AI_API_KEY` (env). If absent, fall back to GAM-impersonated Workspace Gemini for the rep mailbox in question.

### 3. ElevenLabs — for voice
Hanna voice ID `MBOX74y6c3lQRInUUnKV`. Kayla voice ID `OFOPgozS9detM2RF0Rk4`. Use the Pro plan character pool. If the key is broken (e.g. an unresolved 1Password `op://` reference), say so explicitly — auth, not quota.

### 4. Paid Higgsfield credits — only when (1) and (2) can't deliver
Document why the unlimited path failed before burning credits.

### 5. Local ffmpeg / PIL — last resort
Only when steps 1-4 are verified down or auth-blocked. Never the default. Never the lazy answer.

## Hard prohibitions
- ❌ Never report "out of credits" until `show_plans_and_credits` has been read AND the unlimited tier is verified depleted.
- ❌ Never fall back to ffmpeg + PIL when Seedance 2.0 (full access) is sitting right there.
- ❌ Never default to a credit-burning model when an UNLIMITED model produces the same output.
- ❌ Never send a social asset without a paired visual (see [[feedback-social-always-has-visual]]).

## Standard fan-out for a Prosper social post
1. Build the branded card (Soul Cinema / Soul V2) with Hanna's Soul ID — UNLIMITED.
2. Generate motion (Seedance 2.0 image-to-video OR Veo 2) — FULL ACCESS / FREE.
3. ElevenLabs VO with Hanna or Kayla voice ID.
4. Compose final via ffmpeg only for cuts / mux / captions — NOT for generation.
5. Visual + caption to Desktop. Wait for Craig's go. DM private bits separately.

## Verify the install
```bash
ls -la ~/.claude/skills/hannavideo/SKILL.md \
       ~/.codex/skills/hannavideo/SKILL.md \
       ~/.agents/skills/hannavideo/SKILL.md \
       ~/ClaudeCodexBridge/skills/hannavideo/SKILL.md
```

## Cross-references
- [[feedback-use-subscription-unlimited-first]] — parent rule (subscription unlimited first)
- [[reference-hanna-visual-identity]] — Hanna Soul ID + brand
- [[feedback-social-always-has-visual]] — visuals always required
- [[reference-gam-skill-default-for-google]] — GAM = the Google Workspace rail; Veo lives next to it via Gemini API

---

**Skill author:** Hanna, 2026-05-31. Triggered by Craig calling out "we have free unlimited versions because of the monthly subscription" after Hanna mis-reported a credit blocker. Locked across the Prosper fleet.
