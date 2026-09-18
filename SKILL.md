# Proof & IP Harvester Skill

Use this skill to convert work signals into reviewable customer proof and repeatable IP candidates.

## Goal

Make invisible work durable and useful for others. Capture high-signal work artifacts, explanations, decisions, diagrams, playbooks, and customer outcomes into a candidate inbox before any promotion or sharing.

## Inputs

Use work-related connectors only:

- M365 / WorkIQ
- Teams messages, chats, and channels
- Outlook email
- Calendar and meetings
- OneDrive and SharePoint files
- Approved destination store
- Notification channel, usually Teams

Do not require personal journals, personal state files, or a private planning system for the shareable baseline.

## Classification

Classify each useful candidate into one or more lanes:

- `CP`: Customer Proof
- `RI`: Repeatable IP

If a signal is interesting but not useful as proof or reusable IP, do not create a candidate note.

## Candidate requirements

Every candidate note must include:

- title
- lane: CP, RI, or both
- evidence level: CONFIRMED, INFERRED, or UNKNOWN
- reusable value
- source pointers
- suggested promotion target
- review question
- outbound-safe suggested wording when applicable

Use `templates/candidate-note.md`.

## Promotion rules

Never promote directly from a scan. Write draft candidates to the candidate inbox first.

After human approval, promote to the appropriate target:

- `responses/`
- `wiki/concepts/`
- `wiki/architectures/`
- `wiki/outputs/`
- another approved destination

## Weekly handoff

End each run with a firm handoff. Include:

1. Exact candidate paths to review.
2. What needs approval.
3. Suggested wording for promotion, sharing, or response drafts.
4. Forecast of likely validation value.
5. Candidates that need more evidence before promotion.
6. Overall take on the week.

Do not frame the handoff around "what to ignore." Use prioritization and evidence readiness.

## Privacy rules

Keep private evidence local. Do not disclose calendar, email, file, or chat details in outbound content unless the user has approved that exact content.

For outbound handoffs, use safe summaries and local source pointers instead of sensitive excerpts.

