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

Cloudflare Web Analytics counts visits without cookies.

1. In the Cloudflare dashboard open Analytics & Logs, then Web Analytics, and choose Add a site.
2. Enter the hostname `kawai-projects.github.io`. Because the site is not proxied through Cloudflare, choose the JavaScript snippet option.
3. Copy the token from the snippet. It is the long string inside `data-cf-beacon='{"token": "..."}'`.
4. At the bottom of `index.html`, replace `YOUR_CLOUDFLARE_TOKEN` with that token and remove the `<!--` and `-->` lines around the script tag.
5. Commit and push. Visits show up in Cloudflare within a few minutes.

## Notes

- Save remix records the mix in the browser and saves an MP3. If the MP3 encoder cannot load, it saves MP4 or WebM instead, depending on what the browser can record.
- The Share link stores the beat, tempo, flavor and muted tracks in the address after the `#`. A sound you add yourself is not included, so the demo sound plays in that slot.
- Fonts (Bagel Fat One and Fredoka) load from Google Fonts. The MP3 encoder (lamejs) loads from cdnjs.
