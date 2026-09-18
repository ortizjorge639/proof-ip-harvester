# Automation Prompt Template

Run Proof & IP Harvester for the current week.

Use work-related connectors only:

- M365 / WorkIQ
- Teams messages, chats, and channels
- Outlook email
- Calendar and meetings
- OneDrive and SharePoint files

Do not require personal journals, private state files, or personal planning systems.

Identify high-signal candidates in two lanes:

- `CP`: Customer Proof
- `RI`: Repeatable IP

For each worthwhile candidate, write one draft note to:

```text
{{candidateInbox}}/YYYY-MM-DD-<slug>.md
```

Each candidate note must include:

- lane: CP, RI, or both
- evidence level: CONFIRMED, INFERRED, or UNKNOWN
- source pointers
- reusable value
- suggested promotion target
- approval question
- outbound-safe suggested wording when applicable

Do not send email, post Teams messages, or promote to a validated destination without human approval.

At the end, send a firm review handoff with:

1. Exact candidate paths to review first.
2. What to review or approve.
3. Suggested response, sharing, or promotion wording.
4. Forecast of which candidates are likely worth validating.
5. Which candidates need more evidence before promotion.
6. Overall take on the week across customer proof, repeatable IP, and invisible work made visible.

