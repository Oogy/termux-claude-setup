# termux-agent

One-command setup for AI coding agents on Termux (Android).

## Quick Install

```bash
curl -fsSL https://raw.githubusercontent.com/Oogy/termux-agent/main/setup.sh | bash
```

Or clone and run:

```bash
git clone https://github.com/Oogy/termux-agent.git
cd termux-agent
./setup.sh
```

## What it installs

- **Node.js** - Required for Claude Code, OpenCode, and Codex CLI
- **git** - Version control
- **ripgrep** - Fast search (used by AI agents)
- **gh** - GitHub CLI

### AI Coding Agents

- **Claude Code** - Anthropic's agentic coding tool
- **OpenCode** - SST's terminal-based AI coding assistant
- **Codex CLI** - OpenAI's command-line coding agent

## Extras

- **Termux shortcuts** - SSH shortcuts for Termux:Widget
- **SSH config** - Preconfigured hosts

## Post-install

1. Authenticate with GitHub: `gh auth login`
2. Start Claude Code: `claude`
3. Start OpenCode: `opencode`
4. Start Codex CLI: `codex`
5. Install [Termux:Widget](https://f-droid.org/packages/com.termux.widget/) and add shortcuts to your home screen

## Requirements

- [Termux](https://f-droid.org/packages/com.termux/) (install from F-Droid, not Play Store)
- Android device
