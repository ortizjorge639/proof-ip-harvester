# Proof & IP Harvester

Proof & IP Harvester turns work signals into a reviewable queue of customer proof and repeatable intellectual property.

It is designed for people who create useful explanations, diagrams, decisions, demos, responses, and customer patterns during normal work, but do not have a consistent way to preserve and share them.

## What it does

Proof & IP Harvester scans work-related signals, classifies useful findings, writes candidate notes, and sends a firm review handoff.

```text
M365 work signals
  -> WorkIQ enrichment
  -> CP/RI classification
  -> candidate inbox
  -> human validation
  -> promoted durable asset
  -> Teams handoff
```

## Lanes

| Lane | Meaning | Examples |
| --- | --- | --- |
| CP | Customer Proof | Customer outcome, decision, risk reduction, delivery acceleration, manager update bullet |
| RI | Repeatable IP | Diagram, explainer, prompt, study aid, playbook, reusable template, enablement artifact |

Some candidates belong to both lanes.

## Required connectors

The shareable baseline intentionally does not require personal journals, private state files, or a personal planning system.

| Connector | Required | Purpose |
| --- | --- | --- |
| M365 / WorkIQ | Yes | Enrich and validate candidates across work context |
| Teams messages, chats, or channels | Yes | Find collaboration signals, reusable explanations, and follow-ups |
| Outlook email | Yes | Find decisions, customer proof, outcomes, and durable replies |
| Calendar / meetings | Yes | Locate where work happened and what context matters |
| OneDrive / SharePoint files | Yes | Find diagrams, docs, decks, notes, and working artifacts |
| Destination store | Yes | Store candidate notes for review |
| Notification channel | Yes | Send the review handoff, typically through Teams |

## Candidate inbox

All unvalidated candidates should first land in a candidate inbox.

Recommended path:

```text
raw/reusable-ip-candidates/
```

Do not publish or promote directly from a scan. The human reviewer validates the candidate first, then moves or copies it to the right destination.

Suggested promotion targets:

| Target | Use when |
| --- | --- |
| `responses/` | The candidate can become a reusable response or customer-safe narrative |
| `wiki/concepts/` | The candidate explains a reusable concept |
| `wiki/architectures/` | The candidate captures an architecture or implementation pattern |
| `wiki/outputs/` | The candidate is a durable template, playbook, diagram, or reusable artifact |
| Keep in raw | The candidate is useful but not ready for validation |

## Evidence levels

Every candidate should carry one evidence level.

| Level | Meaning |
| --- | --- |
| CONFIRMED | Supported by a reliable source such as an email, meeting, file, or explicit user statement |
| INFERRED | Reasonable conclusion from available context, but not directly confirmed |
| UNKNOWN | Potentially useful, but needs evidence before promotion |

## Quick start

1. Copy this package into a repo or skills folder.
2. Create a destination inbox such as `raw/reusable-ip-candidates/`.
3. Copy `config.example.json` to `config.json` and fill in connector and destination details.
4. Install or register `SKILL.md` in your assistant or automation harness.
5. Start with a manual run before enabling a schedule.

Starter prompt:

```text
Run Proof & IP Harvester for this week. Use M365, WorkIQ, Teams, Outlook, Calendar, OneDrive, and SharePoint work signals. Capture CP and RI candidates into my reusable IP candidate inbox, then send a firm Teams handoff with where to look, what to review or approve, suggested wording, and your forecast.
```

Suggested command if your harness supports slash commands:

```text
/proof-ip-harvester
```

## Weekly automation

Recommended schedule:

```text
Every Friday afternoon
```

Recommended automation behavior:

1. Scan work connectors once.
2. Classify each high-signal item as CP, RI, both, or no candidate.
3. Write only worthwhile candidates to the candidate inbox.
4. Mark each candidate with evidence level and suggested promotion target.
5. Send a Teams handoff with exact paths, review actions, suggested wording, and forecast.

Use `templates/automation-prompt.md` as the starting prompt.

## Review handoff

The weekly handoff should be firm and practical. It should tell the reviewer:

1. Where to look first.
2. What to review or approve.
3. What wording to use for sharing, promotion, or response drafts.
4. Which candidates are likely worth validating.
5. Which candidates need more evidence before promotion.
6. The overall take on the week.

Use `templates/weekly-handoff.md` as the output shape.

## Helper scripts

The scripts are optional. They are intentionally small and do not call external services.

```powershell
.\scripts\Initialize-ProofIpHarvester.ps1 -RootPath "C:\path\to\destination"
.\scripts\Test-ProofIpHarvesterPackage.ps1
```

`Initialize-ProofIpHarvester.ps1` creates the local folder structure for a candidate inbox.

`Test-ProofIpHarvesterPackage.ps1` checks that required package files exist and that `config.example.json` is valid JSON.

## Privacy and safety

Do not include private details in outbound messages unless the reviewer explicitly approves them.

The harvester should keep evidence pointers local, write candidate notes as drafts, and use outbound-safe wording in Teams handoffs. Customer data, transcripts, recordings, raw notes, credentials, and confidential files should not be committed to this package.

## Repository contents

For the demo story, timed beats, narration draft, and production requirements, see [Hackathon demo video](docs/hackathon-video.md).

```text
proof-ip-harvester/
  README.md
  SKILL.md
  config.example.json
  docs/
    hackathon-video.md
  connectors/
    README.md
    scout.md
    generic-m365.md
  scripts/
    Initialize-ProofIpHarvester.ps1
    Test-ProofIpHarvesterPackage.ps1
  templates/
    automation-prompt.md
    candidate-note.md
    promotion-checklist.md
    weekly-handoff.md
```
