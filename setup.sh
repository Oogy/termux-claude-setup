#!/data/data/com.termux/files/usr/bin/bash
set -e

echo "=== Termux Claude Code Setup ==="

# Update packages
echo "[1/6] Updating package lists..."
pkg update -y

# Install dependencies
echo "[2/6] Installing nodejs, git, ripgrep, gh..."
pkg install -y nodejs git ripgrep gh

# Install Claude Code
echo "[3/6] Installing Claude Code via npm..."
npm install -g @anthropic-ai/claude-code

# Setup shortcuts directory
echo "[4/6] Installing Termux shortcuts..."
mkdir -p ~/.shortcuts
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
if [ -d "$SCRIPT_DIR/shortcuts" ]; then
    cp "$SCRIPT_DIR/shortcuts/"* ~/.shortcuts/ 2>/dev/null || true
    chmod +x ~/.shortcuts/*
fi

# Setup SSH config
echo "[5/6] Installing SSH config..."
mkdir -p ~/.ssh
chmod 700 ~/.ssh
if [ -f "$SCRIPT_DIR/ssh_config" ]; then
    if [ -f ~/.ssh/config ]; then
        echo "Backing up existing SSH config to ~/.ssh/config.bak"
        cp ~/.ssh/config ~/.ssh/config.bak
    fi
    cp "$SCRIPT_DIR/ssh_config" ~/.ssh/config
    chmod 600 ~/.ssh/config
fi

# Verify installation
echo "[6/6] Verifying installation..."
echo ""
echo "Installed versions:"
echo "  Node.js: $(node --version)"
echo "  npm: $(npm --version)"
echo "  git: $(git --version | cut -d' ' -f3)"
echo "  ripgrep: $(rg --version | head -1 | cut -d' ' -f2)"
echo "  gh: $(gh --version | head -1 | cut -d' ' -f3)"
echo "  claude: $(claude --version 2>/dev/null || echo 'installed')"
echo ""
echo "=== Setup complete! ==="
echo ""
echo "Next steps:"
echo "  1. Run 'gh auth login' to authenticate with GitHub"
echo "  2. Run 'claude' to start Claude Code"
echo "  3. Add Termux:Widget to your home screen for shortcuts"
