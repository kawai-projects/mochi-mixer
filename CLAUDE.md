# Mochi Mixer: working rules

- The whole site is one file, `index.html`. No build step.
- Every change bumps the version in the page footer ("Version X.Y.Z"): patch for small fixes, minor for new features, major for big changes. Tell the user the new number.
- There are no release notes. `publish.sh` uses the commit message as the GitHub Release text.
- Show every change to the user as a preview in the canvas (the Claude artifact) and wait for approval before saving it to the Mac folder or telling them to publish.
- Only edit files here. The user publishes from Terminal with `bash publish.sh "what changed"`.
