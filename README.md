# Mochi Mixer

A pastel step sequencer where six little mochi play synth sounds or chops of your own audio.
Tap squares to place sounds, hit Remix for a fresh beat, save the result, and share a link that rebuilds it.

Everything runs in the browser. There is no build step and no server: the whole site is `index.html`.

## Run it on your computer

Open `index.html` in Chrome, Safari or Firefox. Sound starts after your first tap or click.

## Put it on GitHub Pages

1. Create an empty public repository named `mochi-mixer` at https://github.com/new (owner `kawai-projects`, no README, no .gitignore).
2. In Terminal, from this folder:

   ```
   git init -b main
   git add .
   git commit -m "Mochi Mixer"
   git remote add origin https://github.com/kawai-projects/mochi-mixer.git
   git push -u origin main
   ```

3. On GitHub open Settings, then Pages. Under "Build and deployment" choose "Deploy from a branch", branch `main`, folder `/ (root)`, and Save.
4. After a minute the site is live at https://kawai-projects.github.io/mochi-mixer/

## Cloudflare Web Analytics

Cloudflare Web Analytics counts visits without cookies. The snippet with the site token is already at the bottom of `index.html`. View the numbers in the Cloudflare dashboard under Analytics & Logs, then Web Analytics, for `kawai-projects.github.io`.

## Publishing changes

After the one-time sign-in below, publish from this folder with:

```
bash publish.sh "what changed"
```

The script commits and pushes everything, then creates a GitHub Release for the version shown in the page footer, using your message as the release text. Every change gets a new version number in the footer of `index.html`. The site updates about a minute after the push.

Version numbers: patch (1.1.1) for small fixes, minor (1.2.0) for new features, major (2.0.0) for big changes.

## Sign in to GitHub once (works for every future site)

GitHub CLI signs Terminal in once and remembers it, including accounts that use Google sign-in.

1. Install it: `brew install gh` (if you do not have Homebrew, get it from https://brew.sh first).
2. Run `gh auth login`.
3. Choose GitHub.com, then HTTPS, then "Yes" to authenticate Git with your GitHub credentials, then "Login with a web browser".
4. Copy the one-time code shown, press Return, and approve in the browser.
5. Check with `gh auth status`.

## Getting found on Google

The site already has a page title and description, a canonical link, social preview tags (Facebook, X, WhatsApp, Slack and others use `preview.png`), structured data that describes it as a free web app, a `sitemap.xml` and a `robots.txt`.

1. Go to https://search.google.com/search-console and choose Add property, then "URL prefix", and enter `https://kawai-projects.github.io/mochi-mixer/`.
2. Verify it with the "HTML tag" method. Copy the `<meta name="google-site-verification" ...>` tag and paste it into the `<head>` of `index.html`, where the comment says so. Publish, then press Verify.
3. In Search Console open Sitemaps and submit `sitemap.xml`.
4. Open URL Inspection, paste the site address and press "Request indexing".
5. Indexing takes days to a few weeks. Links from other sites help most, so share the site and link to it from your GitHub profile.

When the version changes, update `lastmod` in `sitemap.xml`.

## Starting another site later

From the new project's folder:

```
git init -b main
git add .
git commit -m "First version"
gh repo create NAME --public --source=. --push
gh api -X POST repos/kawai-projects/NAME/pages -f "source[branch]=main" -f "source[path]=/"
```

Replace NAME with the repository name. The site appears at https://kawai-projects.github.io/NAME/ after about a minute.

## Notes

- Save remix records the mix in the browser and always saves an MP3. If the MP3 encoder cannot load from the web, it saves an uncompressed WAV instead, never a video format.
- The Share link stores the beat, tempo, flavor and muted tracks in the address after the `#`. A sound you add yourself is not included, so the demo sound plays in that slot.
- Fonts (Bagel Fat One and Fredoka) load from Google Fonts. The MP3 encoder (lamejs) loads from cdnjs.
