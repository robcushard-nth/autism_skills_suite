# Installation Guide

Detailed installation instructions for the four supported environments.

## Prerequisites

- A Claude account (claude.com) for Claude.ai web/desktop/mobile
- Or, Claude Code installed for CLI/VS Code workflows
- Git, if cloning the repo

## Install order matters

The two coach skills depend on `autism-knowledge-core`. The bibliography is standalone but works better when the core is also present. Recommended install order:

1. `autism-knowledge-core` — install first
2. `autism-self-coach`
3. `autism-parent-coach`
4. `autism-scholarly-bibliography`

---

## Claude Code (CLI)

Claude Code auto-discovers skills from `~/.claude/skills/`. To install:

### macOS / Linux

```bash
# Clone the repo (if you haven't)
git clone https://github.com/nth-ai-dynamics/autism-skills-suite.git
cd autism-skills-suite

# Make sure the skills directory exists
mkdir -p ~/.claude/skills

# Copy all four skill folders
cp -r skills/autism-knowledge-core ~/.claude/skills/
cp -r skills/autism-self-coach ~/.claude/skills/
cp -r skills/autism-parent-coach ~/.claude/skills/
cp -r skills/autism-scholarly-bibliography ~/.claude/skills/

# Verify
ls ~/.claude/skills/
```

You should see all four skill folders. Restart Claude Code if it was running.

### Windows (PowerShell)

```powershell
# Clone the repo
git clone https://github.com/nth-ai-dynamics/autism-skills-suite.git
cd autism-skills-suite

# Make sure the skills directory exists
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.claude\skills"

# Copy all four skill folders
Copy-Item -Recurse skills\autism-knowledge-core "$env:USERPROFILE\.claude\skills\"
Copy-Item -Recurse skills\autism-self-coach "$env:USERPROFILE\.claude\skills\"
Copy-Item -Recurse skills\autism-parent-coach "$env:USERPROFILE\.claude\skills\"
Copy-Item -Recurse skills\autism-scholarly-bibliography "$env:USERPROFILE\.claude\skills\"

# Verify
ls "$env:USERPROFILE\.claude\skills"
```

### Verifying the install

In a Claude Code session, ask:

> "What skills do you have access to?"

Claude should list the four autism skills among others. If it doesn't, check that:

- The folders are in `~/.claude/skills/` (not `~/.claude/skills/skills/`)
- Each folder contains a `SKILL.md` at its root
- The `references/` subdirectory is present in each

### Updating

To get the latest version:

```bash
cd autism-skills-suite
git pull origin main
cp -r skills/* ~/.claude/skills/    # macOS/Linux
# or
Copy-Item -Recurse skills\* "$env:USERPROFILE\.claude\skills\"   # Windows
```

---

## Claude Code in VS Code

VS Code uses the same skills directory as the Claude Code CLI. If you've installed Claude Code, the skills should already be available in VS Code.

### Project-scoped install (alternative)

For project-level skills that travel with a specific workspace:

```bash
# In your VS Code project root
mkdir -p .claude/skills
cp -r /path/to/autism-skills-suite/skills/* .claude/skills/
```

These skills will only be available when working in this workspace, not globally.

You may also want to add to the project's `.gitignore` if the skills should not be committed:

```
.claude/skills/
```

Or, if you want them committed and versioned with the project, leave them tracked.

---

## Claude.ai (web, desktop, mobile)

The web/desktop/mobile apps install skills via UI upload, not by file copy.

1. Download the four `.skill` files from the [`packaged/`](../packaged/) directory of this repo. These are pre-built zip archives.

2. Open Claude (any platform):
   - Web: claude.ai
   - Desktop: Claude app on macOS or Windows
   - Mobile: iOS or Android app

3. Navigate to: **Settings → Capabilities → Skills**

4. Click **Upload** and select the `.skill` files one at a time. Install in this order:
   1. `autism-knowledge-core.skill`
   2. `autism-self-coach.skill`
   3. `autism-parent-coach.skill`
   4. `autism-scholarly-bibliography.skill`

5. After upload, each skill should appear in the skills list with a toggle. Make sure all four are enabled.

### Verifying

Start a new conversation and ask a triggering question:

> "I had a sensory meltdown after a meeting today. What helps?"

Claude should consult `autism-self-coach` (you'll see a small indicator in the response showing the skill was loaded).

### Updating

The web/desktop/mobile apps don't have an automatic update mechanism for uploaded skills. To update:

1. Delete the old version of each skill in **Settings → Capabilities → Skills**
2. Download the latest `.skill` files from the repo
3. Re-upload

We recommend watching the repo (GitHub: **Watch → Custom → Releases**) to get notified when a new version drops.

---

## Project-scoped install in Claude.ai (Claude Projects)

If you want the skills available only within a specific Project (e.g., a "Neurodiversity" project):

1. Open the Project
2. Navigate to the project's settings
3. Under **Skills**, upload the four `.skill` files
4. They will be available within this Project, not in your global Claude environment

This is useful if:
- You don't want autism-related triggers firing on every conversation
- You're testing the skills before global install
- You want different framings for different contexts

---

## Troubleshooting

### Skills aren't loading

**Claude Code:** Check that `~/.claude/skills/<skill-name>/SKILL.md` exists for each skill. The `SKILL.md` file is what makes a folder a recognized skill.

**Claude.ai:** Check **Settings → Capabilities → Skills**. If the skill is listed, make sure the toggle is on. If it's not listed, the upload may have failed — try uploading again.

### Skills are loading but not triggering

Skills auto-trigger based on the description and trigger phrases in their SKILL.md frontmatter. Some prompts that should trigger them:

- *"Help me draft an accommodation request"* → autism-self-coach
- *"My child melts down after school"* → autism-parent-coach
- *"Citation for autistic burnout"* → autism-scholarly-bibliography
- *"What's the difference between meltdown and shutdown"* → autism-knowledge-core

If the skills are loaded but not triggering on these prompts, file a bug report.

### Conflicts with other skills

If you have other autism-related skills installed, there may be triggering conflicts. Disable the conflicting skill or remove it. The four-skill suite is designed to work as a coordinated set — mixing partial installs with other autism content can produce inconsistent framing.

### Crisis resources outdated

Phone numbers, organizations, and crisis lines change. If you find an outdated resource, file a Content Feedback issue with the specific resource and the corrected information.

---

## Uninstalling

### Claude Code

```bash
# macOS/Linux
rm -rf ~/.claude/skills/autism-knowledge-core
rm -rf ~/.claude/skills/autism-self-coach
rm -rf ~/.claude/skills/autism-parent-coach
rm -rf ~/.claude/skills/autism-scholarly-bibliography
```

```powershell
# Windows
Remove-Item -Recurse "$env:USERPROFILE\.claude\skills\autism-knowledge-core"
Remove-Item -Recurse "$env:USERPROFILE\.claude\skills\autism-self-coach"
Remove-Item -Recurse "$env:USERPROFILE\.claude\skills\autism-parent-coach"
Remove-Item -Recurse "$env:USERPROFILE\.claude\skills\autism-scholarly-bibliography"
```

### Claude.ai

**Settings → Capabilities → Skills** → click the trash icon next to each skill.

---

## Need help?

Open an issue with the **Bug Report** template, or email rob.cushard@nthsimplesolution.com.
