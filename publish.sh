#!/bin/bash
# Publish the latest changes to GitHub and create a GitHub Release for the current version.
# Usage: bash publish.sh "what changed"
set -e
cd "$(dirname "$0")"

# The version comes from the footer of index.html ("Version 1.1.0")
VERSION=$(grep -o 'Version [0-9][0-9.]*' index.html | head -1 | cut -d' ' -f2)

git add -A
if git diff --cached --quiet; then
  echo "Nothing new to commit."
else
  git commit -m "${1:-Update} (v$VERSION)"
  git push -u origin main
  echo "Pushed. GitHub Pages usually updates within a minute."
fi

if [ -z "$VERSION" ]; then
  echo "No version found in index.html, so no release was created."
  exit 0
fi

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI (gh) is not installed, so no release was created."
  exit 0
fi

if gh release view "v$VERSION" >/dev/null 2>&1; then
  echo "Release v$VERSION already exists. Bump the version in index.html and RELEASE_NOTES.md for a new release."
else
  NOTES=$(awk -v v="$VERSION" '$0 ~ ("^## " v " ") {f=1; next} /^## / {f=0} f' RELEASE_NOTES.md)
  gh release create "v$VERSION" --target main --title "Mochi Mixer $VERSION" --notes "${NOTES:-Release $VERSION}"
  echo "Created release v$VERSION."
fi
