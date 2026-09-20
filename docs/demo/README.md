# Proof & IP Harvester — Refined Hackathon Demo

This folder contains the reproducible presentation source and final deliverables for the 88-second Proof & IP Harvester hackathon demo.

## Final videos

- [`proof-ip-harvester-hackathon-88s-refined.mp4`](final/proof-ip-harvester-hackathon-88s-refined.mp4) — full-quality 1920×1080 H.264/AAC master
- [`proof-ip-harvester-hackathon-88s-refined-mobile.mp4`](final/proof-ip-harvester-hackathon-88s-refined-mobile.mp4) — smaller streaming-friendly encode

Both encodes are exactly 88 seconds. The full-quality file passed a complete decode test and an eight-frame visual QA review.

## Presentation source

Run the deterministic HTML presentation locally:

```bash
cd docs/demo/production
python3 -m http.server 8879
```

Then open:

```text
http://localhost:8879/storyboard.html
```

Add `?render=1` to hide playback controls for deterministic capture. The presentation exposes `window.showFrame(seconds)` for frame-accurate rendering.

## Artifact inventory

- `production/storyboard.html` — refined interactive presentation
- `production/captions.js` — word-aligned on-screen caption cues
- `production/assets/approved-note-validation.png` — sanitized real validation evidence used in the video
- `production/assets/repository-crop.png` — real public repository capture used in the video
- `design-system.json` — palette, typography, geometry, and motion tokens
- `river-narration.m4a` — River narration master
- `proof-ip-harvester.srt` — timed captions
- `review/final-contact-sheet.png` — visual QA contact sheet from the final MP4
- `final/` — full-quality and mobile final encodes

## Visual system

- Charcoal canvas with oxblood, warm ivory, and restrained gold
- Editorial serif headlines paired with precise sans-serif body copy
- Explicit **Real** and **Illustrative** evidence labels
- Staggered scene entrances and subtle evidence-image drift
- Hard scene cuts to keep UI and evidence states visually clean

## Evidence boundaries

The validated-note image is a sanitized, user-approved capture with its private sidebar removed. The repository image is a real capture of this public repository. Conceptual workflow and handoff scenes are labeled illustrative and are not presented as executed Teams messages or observed M365 results.

See [`../hackathon-video.md`](../hackathon-video.md) for the production brief and [`../final-video-script.md`](../final-video-script.md) for the narration script.
