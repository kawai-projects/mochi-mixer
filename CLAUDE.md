# Mochi Mixer project notes

## Versioning (do this on every change to the site)

- Bump the version in the footer of `index.html` ("Version X.Y.Z").
- Add a matching section at the top of `RELEASE_NOTES.md`: `## X.Y.Z (YYYY-MM-DD)`, with Added, Changed or Fixed lists in plain words.
- Patch (1.1.1) for small fixes, minor (1.2.0) for new features, major (2.0.0) for big changes.
- The owner publishes from Terminal with `bash publish.sh "message"`. That script also creates the GitHub Release for the version in the footer, using that version's section of `RELEASE_NOTES.md`.
- Only edit files in this folder. Do not run git commands here from the cloud session.
