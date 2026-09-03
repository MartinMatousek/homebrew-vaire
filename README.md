# MartinMatousek Vaire

*Čeština: [README.cs.md](README.cs.md)*

Homebrew tap for [Vaire](https://github.com/MartinMatousek/Vaire), an
automatic time tracker for macOS with Claude Code integration.

## What it does

- **Tracks time automatically** from Claude Code sessions via
  `SessionStart`/`SessionEnd` hooks — no manual start/stop needed while
  you're coding with Claude Code.
- **Manual start/stop** per project from the menu bar, for work outside
  Claude Code.
- **Week view** with a resizable timeline, live/running blocks shown
  distinctly from finished ones, drag-and-drop between days, and inline
  editing of time, notes, and effort estimates.
- **Time-saved estimates** — records how long a task would have taken
  without AI, compared against actual logged time, to see the added value.
- **Menu bar progress ring** and a desktop widget showing today's hours
  against your daily target.
- **Finish day/week wizard** that walks through short days step by step,
  suggesting unlogged commits, prolonged blocks, or manual entries.
- **Trask timesheet upload** (optional) — semi-automatically logs your
  time into Trask's own timesheet via a Chrome window you review and
  confirm, with optional 1Password autofill for the login step.

## Install

```
brew install --cask martinmatousek/vaire/vaire
```

Or tap first, then install:

```
brew tap martinmatousek/vaire
brew install --cask vaire
```

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "martinmatousek/vaire"
cask "vaire"
```

Vaire is not notarized, so macOS will block the first launch:

1. Try to open Vaire — Gatekeeper will refuse and offer no direct bypass.
2. Go to **System Settings → Privacy & Security**, scroll to the bottom,
   and click **Open Anyway** next to the Vaire warning.
3. Confirm in the dialog that appears. Vaire will launch normally from then
   on.

For Claude Code hook setup, the git-import review flow, the finish
day/week wizard, Trask upload, and the language switch, see the
[main README](https://github.com/MartinMatousek/Vaire#readme).

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
