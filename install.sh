#!/usr/bin/env bash
# hannavideo skill installer — Prosper fleet
# Installs to all six agent skill directories.
set -e
REPO_RAW="https://raw.githubusercontent.com/prosperenergy/hannavideo/main"
TARGETS=(
  "$HOME/.claude/skills/hannavideo"
  "$HOME/.codex/skills/hannavideo"
  "$HOME/.agents/skills/hannavideo"
  "$HOME/ClaudeCodexBridge/skills/hannavideo"
)
for D in "${TARGETS[@]}"; do
  mkdir -p "$D"
  curl -fsSL "$REPO_RAW/SKILL.md" -o "$D/SKILL.md"
  echo "installed: $D/SKILL.md"
done
# Commands
for D in "$HOME/.claude/commands" "$HOME/.codex/commands" "$HOME/.agents/commands"; do
  mkdir -p "$D"
  curl -fsSL "$REPO_RAW/hannavideo.command.md" -o "$D/hannavideo.md"
done
echo "✅ hannavideo skill installed — slash command /hannavideo is live"
EOF
chmod +x "$REPO_DIR/install.sh"

# LICENSE
cat > "$REPO_DIR/LICENSE" <<EOF
Prosper Energy / Prosper Shield — internal use.
Copyright 2026 PROSPER. All rights reserved.
EOF

# Init git
cd "$REPO_DIR"
git init -q -b main
git config user.email "support@prosper.energy"
git config user.name "Craig Stratton"
git add -A
git commit -q -m "feat: hannavideo — free-first media routing skill for the Prosper fleet"

# Create the GitHub repo + push
gh repo create prosperenergy/hannavideo \
  --public \
  --description "Free-first media routing skill for the Prosper fleet. Higgsfield ULTRA UNLIMITED first, Google Veo/Imagen second, ElevenLabs, credits then ffmpeg last." \
  --source . \
  --remote origin \
  --push

echo "---"
gh repo view prosperenergy/hannavideo --json url,description,visibility
