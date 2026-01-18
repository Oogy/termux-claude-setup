# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Termux setup script for installing Claude Code and related tools on Android devices. This is a bootstrap repo meant to be curl-piped.

## Repository Structure

- `setup.sh` - Main installation script (installs nodejs, git, ripgrep, gh, claude-code)
- `shortcuts/` - Termux:Widget shortcuts (copied to ~/.shortcuts/)
- `ssh_config` - SSH host configurations (copied to ~/.ssh/config)

## Development

Test the setup script locally:
```bash
./setup.sh
```

## Environment Notes

This repo is developed on Termux (Android). Key differences from standard Linux:
- Shebang uses `/data/data/com.termux/files/usr/bin/bash`
- Package manager is `pkg` not `apt`
- Home directory is `/data/data/com.termux/files/home`
- $TMPDIR is `/data/data/com.termux/files/usr/tmp` (not `/tmp`)

## Adding New SSH Hosts

1. Add entry to `ssh_config`
2. Create corresponding shortcut in `shortcuts/`

## GitHub

Repository: https://github.com/Oogy/termux-claude-setup
