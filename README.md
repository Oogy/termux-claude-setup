# termux-claude-setup

One-command setup for Claude Code on Termux (Android).

## Quick Install

```bash
curl -fsSL https://raw.githubusercontent.com/Oogy/termux-claude-setup/main/setup.sh | bash
```

Or clone and run:

```bash
git clone https://github.com/Oogy/termux-claude-setup.git
cd termux-claude-setup
./setup.sh
```

## What it installs

- **Node.js** - Required for Claude Code
- **git** - Version control
- **ripgrep** - Fast search (used by Claude Code)
- **gh** - GitHub CLI
- **Claude Code** - Anthropic's agentic coding tool

## Extras

- **Termux shortcuts** - SSH shortcuts for Termux:Widget
- **SSH config** - Preconfigured hosts

## Post-install

1. Authenticate with GitHub: `gh auth login`
2. Start Claude Code: `claude`
3. Install [Termux:Widget](https://f-droid.org/packages/com.termux.widget/) and add shortcuts to your home screen

## Requirements

- [Termux](https://f-droid.org/packages/com.termux/) (install from F-Droid, not Play Store)
- Android device
