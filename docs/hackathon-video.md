# Hackathon demo video

> Production brief for Proof & IP Harvester. Use this document to prepare narration, select evidence, and refine the HTML slideshow before rendering the final video.

**Updated:** September 20, 2026  
**Status:** Draft for editorial approval. Narration has not been generated.  
**Core message:** Harvest the work you already did.  
**Closing line:** Harvest once. Help more people.

## Review the slides

Open [the seven-beat HTML storyboard](slides/index.html) after cloning or downloading the repository. It runs locally without a server, package installation, or network access. GitHub's file view shows HTML source; download it or open your local clone to play it.

The storyboard is a **90-second silent editorial preview**, not a final video. It retains the autumn visual style, gives the note 17 seconds, places the handoff before human approval, and adds a linked repository walkthrough. All public note and handoff screens are explicitly illustrative. Private vault screenshots and generated narration are not included.

- Use Play, Previous, Next, Restart, or the time slider. Arrow keys move between beats; Space toggles playback outside form controls.
- Read the draft voiceover and recording gate below each slide. Real-example narration requires the corresponding reviewed capture; an illustrative alternative is provided where needed.
- Append `?scoutTheme=light` or `?scoutTheme=dark` to select a theme. Add `&render=1` to hide controls and production notes for screen capture.
- For deterministic browser screenshots, call `window.showFrame(seconds)`. Beat boundaries are `0, 8, 20, 37, 51, 65, 82`, ending at `90`.
- Timing is defined by each section's `data-start` and `data-duration`. Update those values, the root duration, and slider maximum together after the approved narration is available.

This portable version uses inline browser JavaScript, not GSAP. It is **not a drop-in HyperFrames composition**: use browser capture, or port the approved timing to a registered HyperFrames/GSAP timeline for MP4 rendering. The earlier local HyperFrames composition and 60-second movie remain unchanged.

## Purpose and audience

Show how useful work can become reusable material instead of disappearing into chats, email, and files. The viewer should understand the problem, see a real review artifact, and know how to try the standalone skill.

The project is entered in **Hack for MCAPS: Reduce non-customer time by 50%**. Position it as a way to reduce repeated searching, reconstructing, and packaging of work. The challenge's 50% target is not a measured result for this project.

| Audience | Problem | Intended benefit |
| --- | --- | --- |
| Individual contributor | Rebuilding explanations, responses, and evidence from scattered work | A reviewed starting point for the next customer interaction |
| Manager | Useful field examples are hard to find and reuse across a team | Approved examples for coaching and shared enablement |

This is a standalone skill package, not part of Cognitive Learning Harness. The repository contains instructions, templates, connector guidance, a configuration example, and setup/validation helpers. It is not a self-contained application with built-in M365 connectors.

## The story

**A week of work already contains the seeds of the next useful asset.**

Open with familiar fragments: an explanation in a conversation, a diagram in a file, a supported customer outcome, and a useful response. They drift like paper leaves, but the story is about preserving value, not generating more content.

The harvester organizes two kinds of value:

- **Customer Proof (CP):** What changed for the customer, supported by evidence.
- **Repeatable IP (RI):** What someone else can reuse: a diagram, explanation, playbook, or template.

The central example is a user-supplied GH-300 study diagram. The important reveal is not just that it was saved. Its note includes a **sharing plan and draft share copy**, making the next action concrete.

End at the human decision: review the evidence, check accuracy and sharing permissions, and approve the appropriate destination. The agent prepares the review packet; the person decides what becomes a reusable asset.

### Workflow to depict

```text
Approved work signals
  -> WorkIQ enrichment in a connector-enabled host
  -> CP / RI / both
  -> draft candidate inbox
  -> review handoff to the owner
  -> human validation and approval
  -> approved destination
  -> separately approved sharing
```

The review handoff happens before the owner's approval, not only after promotion. Notifications and publication are different actions.

## What we can honestly demonstrate

These boundaries reflect the September 18 walkthrough. Change them only when new evidence exists.

| Claim | Evidence status | Demo treatment |
| --- | --- | --- |
| A user-supplied diagram was captured in a note | Observed | Show the real example; say it was user-supplied |
| The note includes a sharing plan and draft copy | Observed | Make this the central screen close-up |
| The owner approved reuse and the note was promoted | Observed | Show the current output location; do not fabricate a live approval |
| A standalone public repository exists | Observed | Show the actual skill, templates, and helpers |
| Weekly automated discovery across work sources succeeded | Not established by the observed walkthrough | Describe intended operation; do not present as recorded success |
| A review brief was delivered to Teams | Not verified for the demonstrated run | Use a visibly labeled illustrative handoff until real delivery is confirmed |
| Time savings or customer impact are measured | Not established | Explain intended benefit without a percentage or invented outcome |
| Every advertised harness has working adapters | Not established | State that compatible host tools and permissions are required |
| The GH-300 diagram is technically accurate | Separate review required | Do not teach its file-path or precedence rules as established facts |

The example's `validated` status records owner approval. It does not independently prove technical correctness or permission to publish. If this property appears in the video, explain that distinction.

The existing candidate template has a core review structure and suggested wording. It does **not** mandate a section literally named "Sharing plan" for every candidate. Present the diagram note as an example of useful adaptation, not a universal output guarantee.

## Format and creative direction

**Target:** 75-90 seconds; plan below uses 90 seconds. Confirm the event's actual duration, format, and submission rules before final export. These are production recommendations, not verified hackathon requirements.

Use about **60% real screen footage and 40% motion design** in the final cut. Evidence matters more than meeting the ratio. If real footage is unavailable, label the illustration and describe the result as a concept walkthrough rather than a complete live demo.

Use the existing warm, editorial visual language: paper cards, restrained autumn leaf motion, clean typography, and strong contrast. Keep the actual note readable. Avoid robot avatars, invented customer emails, fake Teams screenshots, busy 3D backgrounds, and unsupported metrics.

| Tool | Role |
| --- | --- |
| GPT-6 Astra | Develop the story, narration, HTML animation, captions, and production checks; not a native video-generation endpoint |
| HyperFrames + GSAP | Compose and render the editable HTML timeline locally |
| Three.js | Optional short opening or transition with paper leaves; not a requirement or a substitute for real evidence |
| Obsidian | Capture the real review note and approved output; a demonstration destination, not a product dependency |
| ElevenLabs | Generate the approved narration in a selected, authorized voice |
| FFmpeg | Assemble or inspect the final video, crop footage, and handle audio/export |

## Demo beats

Times are editorial targets. After narration is recorded, adjust the timeline to the actual audio; do not force the voice into fixed ten-second scenes.

| Beat | Target time | On-screen action | Message | Evidence rule |
| --- | --- | --- | --- | --- |
| 1. The lost value | 0-8s | Paper fragments drift around the project title | "Don't let the useful bits fall away." | Generated metaphor, not an application screen |
| 2. Two lanes | 8-20s | Show approved sources feeding CP and RI, then a candidate inbox | One workflow preserves evidence and reusable know-how | Label as workflow concept; the host supplies connectors |
| 3. The real artifact | 20-37s | Open the actual Obsidian example; focus on sharing plan and draft copy | A saved diagram now has a useful next action | Real capture; user-supplied example, not autonomous discovery |
| 4. Actionable handoff | 37-51s | Show where to look, what to review, a proposed reply, and a forecast | Remove the hunt and make review easy; handoff precedes approval | Use the illustrative brief until a real delivered notification is verified |
| 5. Human validation | 51-65s | Show the current output path and a restrained review-gate overlay | AI proposes; people validate | Current approved state is real; any historical transition must be labeled a reenactment |
| 6. The reusable package | 65-82s | Walk the public README, skill, candidate template, and helper files | It is a portable skill package with host dependencies | Real repo footage; avoid implying helpers perform M365 retrieval |
| 7. The payoff | 82-90s | Clean close with IC/M1 benefit and repository URL | "Harvest once. Help more people." | Intended benefits, not measured savings |

### Required review-packet details

Show or briefly explain the candidate title, CP/RI lane, reusable value, source pointers, evidence level, suggested destination, and review question. For the RI example, emphasize its sharing plan and suggested wording.

The handoff should answer:

1. Where should the owner look first?
2. What needs review or approval?
3. What exact reply or next action is proposed?
4. What is likely reusable, and what needs more evidence?
5. What is the overall take on the week's work?

Keep the forecast distinct from confirmed evidence. Use constructive prioritization, not "what to ignore." A weekly summary shown without a real week's evidence must be labeled illustrative.

## Narration draft

The blocks below are the proposed spoken copy, not final approved ElevenLabs input. Read only the quoted text. Beat labels, visual directions, source paths, and production notes are not narration.

### Beat 1

> Your next useful asset may already exist in this week's work. A diagram. An explanation. A decision. Don't let the useful bits fall away.

### Beat 2

> Proof and IP Harvester is a skill for turning work signals into reviewable assets. With approved Microsoft 365 and WorkIQ access, the workflow organizes Customer Proof and Repeatable IP.

### Beat 3

> Here's a real, user-supplied study diagram captured in a note. The useful part is its sharing plan and draft copy: not just a place to store it, but a next step.

### Beat 4

> This illustrative handoff shows where to look, what needs review, and what to reply. It makes the next decision clear without pretending the review is already done.

### Beat 5

> AI proposes. People validate. The owner approved this example for reuse. Technical accuracy and permission to publish are separate checks, not assumptions.

### Beat 6

> The standalone repository includes the skill, templates, and setup helpers. Your assistant supplies the connectors. The goal is less reconstruction for individual contributors, and reusable coaching examples for managers.

### Beat 7

> Start with one artifact. Review it. Give it a next life. Harvest once. Help more people.

This draft is approximately 200 words. At roughly 140-155 words per minute plus pauses, it should fit a 90-second cut. Measure the generated audio rather than assuming the duration.

If the public illustrative slides are retained instead of real captures, replace Beat 3 with: "This illustrative study note shows a sharing plan and draft copy: not just a place to store an artifact, but a next step." Replace Beat 5 with: "AI proposes. People validate. Technical accuracy, owner approval, and permission to publish are separate checks, not assumptions." Do not narrate a real capture while showing an unlabeled reconstruction.

## ElevenLabs narration handoff

1. Approve the spoken copy and resolve the evidence labels before generation.
2. Select a stock voice or a voice the speaker has authorized. Do not clone or imitate a colleague or executive without consent.
3. Send only the approved, disclosure-safe spoken script to ElevenLabs. Do not upload vault notes, screenshots, work messages, private paths, credentials, or classified material.
4. Generate a short audition first. Aim for a warm, credible colleague explaining a useful tool: conversational, calm, and specific, not a trailer announcer.
5. Pronounce "IP" as "eye pee," "AI" as "ay eye," and "WorkIQ" as "work eye cue." Use full "Customer Proof" and "Repeatable IP" on first mention. Do not read the long GitHub URL aloud.
6. For separate clips, reuse the same voice and settings across all seven beats. Listen across joins for changes in cadence; prefer a full-take generation if clip joins sound inconsistent.
7. Export a high-quality WAV master if available. Keep an MP3 only as a convenient review copy. Retain the exact script revision and the actual voice/model/settings used.
8. Review pronunciation, omissions, unexpected words, and pacing. Regenerate only after adjusting the approved copy or settings.
9. Derive captions and timing from the final audio. Preserve intentional pauses around the sharing-plan reveal and the human-review boundary.

Do not specify a voice ID or model as selected until a real choice has been made. API keys belong in a secret store or environment configuration, never in this document or source control. Generating narration is a separate production step; this documentation task does not authorize an upload or API call.

## Source assets and capture plan

### Existing local concept kit

The September 18 kit is outside this repository, under the creator's local `Microsoft Scout\harvester-showcase-fall-2026` folder. The paths below are relative to that kit; they are not files a fresh clone contains.

| Asset | Path | Use |
| --- | --- | --- |
| Editable six-scene composition | `index.html` | Starting point for the longer evidence-led cut |
| Silent concept movie | `harvest-film.mp4` | 60-second visual reference, not the final narrated demo |
| Real cropped Obsidian capture | `assets\obsidian-sharing-plan.png` | Sharing plan and draft copy close-up |
| Dark-theme stills | `stills\frame-00-at-4s.png` through `frame-05-at-54s.png` | Six original scene images |
| Light-theme stills | `stills\light-1.png` through `light-6.png` | Submission-image alternatives |
| Original concept notes | `creative-brief.txt` | Earlier creative reference; this document governs the next cut |

### Vault example

Resolve the vault root locally; do not put a personal absolute path in public production documents.

```text
<VAULT_ROOT>\wiki\outputs\2026-09-18-gh-300-hierarchical-instruction-files.md
<VAULT_ROOT>\raw\screenshots\2026-09-18-gh-300-hierarchical-instruction-files.png
```

The note has already been promoted out of `raw\reusable-ip-candidates`. Do not move it back merely to manufacture a live demo. Record its present state or create a clearly labeled demonstration copy outside the curated output.

Before featuring the diagram's technical content, check its instruction-file locations and precedence claims against current official GitHub documentation. Until then, focus on the capture and review process, not the diagram as exam-authoritative teaching material.

### Capture list

- The actual note's sharing plan and draft copy, cropped without unrelated sidebar entries.
- The approved output's relative path and approval context.
- The public repository's README, skill, templates, and helpers.
- A genuine candidate inbox or a clearly labeled demo copy; never invent a production backlog.
- A genuine Teams handoff only after its delivery and disclosure safety are confirmed.

For a public repository asset or external generation service, approval to capture locally is not blanket approval to distribute private source material. Use sanitized examples or obtain explicit approval for the exact media.

## From narration to HTML to video

1. Freeze the story and spoken script in this document. Record any revised evidence status.
2. Generate and approve the narration. Record each beat's actual start and end time.
3. Capture the real screens and crop unrelated information. Keep originals private; use only reviewed derivatives in the edit.
4. Refine `docs/slides/index.html` or the earlier local composition from the beat table. The public version now includes the repo walkthrough and longer note segment; replace its labeled illustrative screens with approved real captures for the evidence-led cut.
5. For HyperFrames, port the timing to a registered paused GSAP timeline. For browser capture, seek the public slideshow with `window.showFrame(seconds)`. Use deterministic animation; avoid random or wall-clock-driven capture. Keep text and evidence labels readable throughout each relevant shot.
6. Add the narration using the renderer's supported audio track, or mux a duration-matched WAV with FFmpeg. Do not accidentally cut off narration with a shortest-input export.
7. Add captions based on the final recording. Separate spoken captions from disclosure labels such as "Illustrative handoff."
8. Render locally and review the exported file, including transitions, captions, legibility, and audio. Inspect beginning, end, and the joins around every beat.
9. Approve the final media before uploading to the hackathon project or publishing in the public repository.

Recommended final delivery is a 1920x1080 H.264 MP4 with AAC audio, readable captions, a WAV narration master, an SRT or VTT caption file, and selected PNG stills. Keep the existing 24 fps unless a verified submission requirement calls for another rate.

The local concept kit used HyperFrames 0.8.34 and GSAP 3.14.2. Native Edge was selected with `HYPERFRAMES_BROWSER_PATH` after downloaded headless Chrome failed on the Windows ARM machine. Treat that as an environment-specific rendering note, not a prerequisite for all users.

Audio, private captures, render logs, and generated movies should remain outside the public repo unless explicitly reviewed for inclusion. If media is later added, introduce appropriate ignore rules before staging files.

## Mandatory production checklist

These are our release gates for an honest, useful demo. They are not a substitute for checking the event's official submission requirements.

- [ ] Verify current event rules: deadline, video duration, file type, size limit, hosting method, and who can view it.
- [ ] Identify Proof & IP Harvester as a standalone skill package.
- [ ] Explain both CP and RI, with intended benefits for ICs and managers.
- [ ] State that a compatible host provides M365/WorkIQ access, storage, scheduling, and notification.
- [ ] Show the real sharing-plan and draft-copy payoff.
- [ ] Distinguish user-supplied capture from autonomous discovery.
- [ ] Show human approval before promotion and separate permission before sharing.
- [ ] Keep evidence confidence, owner approval, and technical accuracy distinct.
- [ ] Label illustrative UI and reenacted transitions while they are visible.
- [ ] Do not claim measured savings, verified weekly discovery, or Teams delivery without evidence.
- [ ] Avoid implying a fixed weekly candidate quota; none is enforced by the current package.
- [ ] Remove private data, unrelated notes, notifications, credentials, and personal machine paths.
- [ ] Use only authorized voice, imagery, music, and footage.
- [ ] Confirm that narration and visuals describe the same product state.
- [ ] Confirm caption accuracy, readable source text, audible speech, and no truncated ending.
- [ ] Display the public repository URL on the closing screen.
- [ ] Obtain final approval before submission or publication.

## Decisions before the final cut

| Decision | Current direction | Still needed |
| --- | --- | --- |
| Length | 90-second target | Check actual event limit |
| Narration | ElevenLabs from approved script | Choose authorized voice and approve audition |
| Example | Real user-supplied GH-300 note | Separate technical review if teaching from the diagram |
| Teams footage | Labeled illustrative brief | Verified real delivery to replace it |
| Visual style | Warm editorial paper motion; real screens lead | Approve the final capture selection |
| Benefits | Qualitative and intended | Pilot measurements before adding numbers |
| Distribution | Local review before publication | Approve exact final media and destination |

For a future measured claim, compare manual and assisted capture-to-review time for the same task. Record review effort, corrections, and whether another person actually reused the output. Do not infer customer impact from the number of notes created.

## Links

- [Public repository](https://github.com/ortizjorge639/proof-ip-harvester)
- [Skill contract](../SKILL.md)
- [Candidate template](../templates/candidate-note.md)
- [Weekly handoff template](../templates/weekly-handoff.md)
- [Promotion checklist](../templates/promotion-checklist.md)
- [Hackathon project](https://innovation-studio.microsoft.com/events/hackathon2026/submissions/projects/proj-bda9fed8-4331-4ef7-8f78-74da2d459897) (Microsoft sign-in required)
- [HyperFrames documentation](https://hyperframes.heygen.com/)
