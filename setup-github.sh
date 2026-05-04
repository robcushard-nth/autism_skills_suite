#!/usr/bin/env bash
# Setup script for first-time GitHub publish.
# Run from the repo root: bash setup-github.sh

set -e

REPO_NAME="autism-skills-suite"
GITHUB_ORG="nth-ai-dynamics"
DEFAULT_BRANCH="main"

echo "==> Initializing git repository"
if [ -d .git ]; then
  echo "    .git already exists, skipping init"
else
  git init -b "$DEFAULT_BRANCH"
fi

echo "==> Configuring git user (override locally if you want different identity)"
# Only set if not already set globally
if [ -z "$(git config user.name)" ]; then
  read -p "Git user.name: " USER_NAME
  git config user.name "$USER_NAME"
fi
if [ -z "$(git config user.email)" ]; then
  read -p "Git user.email: " USER_EMAIL
  git config user.email "$USER_EMAIL"
fi

echo "==> Staging all files"
git add .

echo "==> Initial commit"
git commit -m "Initial release v0.1.0 — pre-review

Four-skill autism suite:
- autism-knowledge-core: shared affirming framework, guardrails, crisis resources
- autism-self-coach: for autistic teens and adults
- autism-parent-coach: for caregivers
- autism-scholarly-bibliography: domain-organized academic sources

Pre-review status: skills require review by autistic adults and
neurodiversity-affirming clinicians before deployment."

echo ""
echo "==> Now create the repo on GitHub:"
echo ""
echo "    1. Go to https://github.com/organizations/$GITHUB_ORG/repositories/new"
echo "       (or https://github.com/new if using a personal account)"
echo "    2. Repository name: $REPO_NAME"
echo "    3. Description: Neurodiversity-affirming Claude skills for autism coaching"
echo "       and reference. Four skills: knowledge core, self-coach, parent-coach,"
echo "       scholarly bibliography."
echo "    4. Public"
echo "    5. DO NOT initialize with README, .gitignore, or LICENSE — we have those"
echo "    6. Click Create repository"
echo ""
echo "==> Then run these commands to push:"
echo ""
echo "    git remote add origin git@github.com:$GITHUB_ORG/$REPO_NAME.git"
echo "    git push -u origin $DEFAULT_BRANCH"
echo ""
echo "==> Then tag the first release:"
echo ""
echo "    git tag -a v0.1.0 -m 'Initial release — pre-review'"
echo "    git push origin v0.1.0"
echo ""
echo "==> Optionally, create the v0.1.0 GitHub Release:"
echo "    https://github.com/$GITHUB_ORG/$REPO_NAME/releases/new"
echo "    Tag: v0.1.0"
echo "    Title: v0.1.0 — Initial release (pre-review)"
echo "    Description: paste the v0.1.0 entry from CHANGELOG.md"
echo "    Attach the four .skill files from packaged/ as release assets"
echo ""
echo "Done. The repo is initialized locally and ready to push."
