# Release notes

Newest version first. Add a new section at the top each time you publish a change.

## Unreleased

Nothing yet.

## 1.1.0 (2026-10-28)

### Changed
- The Chop length slider now goes all the way up to the whole song. The far right end reads "Whole song". The slider is finer at short lengths and covers the full range of long songs.
- Each of the four slices now starts at its own quarter of the song and plays for the chop length, or until the song ends. At "Whole song", slice 1 plays the entire song and slice 2 plays from the quarter point to the end.

## 1.0.0 (2026-10-28)

First public release, live on GitHub Pages at https://kawai-projects.github.io/mochi-mixer/

### Added
- Six mochi characters, each playing one track: Boba Thump, Pop Clap, Sprinkle Tick, Bell Bun, Pudding Pluck and Your Sound.
- A 16-step grid for every mochi. Tap a square to place a sound, and tap again on the melody and sound rows to change the note.
- Four flavors (Strawberry, Matcha, Taro and Mango) that set the tempo, swing and musical scale.
- A Remix button that builds a fresh beat in the chosen flavor, with confetti.
- Your Sound track: add any audio file and it is chopped into four numbered slices. Chop length goes up to 20 seconds, and a Slice spot control moves where the slices start.
- Loud, Pitch, Echo and Muffle sliders for every track, plus Tempo, Swing and Volume.
- Mute buttons. A muted mochi falls asleep with floating z's.
- Save remix: records 2, 4 or 8 loops and saves them as an MP3. If the MP3 encoder cannot load, it saves MP4 or WebM instead.
- Share: a link that rebuilds your exact beat, tempo and muted mochi. A sound you added yourself is not included in the link.
- Light and dark themes that follow your device. Animations turn off when your device asks for reduced motion.
- Cloudflare Web Analytics snippet, switched off until a site token is added to `index.html`.

### Known limits
- Saving as MP3 depends on the MP3 encoder loading from cdnjs. Without it the file is MP4 or WebM.
- Sound starts only after your first tap or click, because browsers block audio before that.
