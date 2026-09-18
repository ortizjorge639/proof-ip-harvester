# Scout Connector Notes

Scout can run Proof & IP Harvester as a scheduled automation or manual skill invocation.

## Recommended Scout setup

Use direct Microsoft 365 tools or WorkIQ for:

- Teams messages, chats, and channels
- Outlook email
- Calendar and meetings
- OneDrive and SharePoint files
- Cross-service enrichment

Use local file access or a workspace provider for:

- candidate note creation
- promotion-ready artifacts
- package validation

Use Teams notification for:

- weekly review handoff
- approval reminders
- high-value candidate alerts

## Scout starter prompt

```text
Run Proof & IP Harvester for this week. Use M365, WorkIQ, Teams, Outlook, Calendar, OneDrive, and SharePoint work signals. Capture CP and RI candidates into my reusable IP candidate inbox, then send a firm Teams handoff with where to look, what to review or approve, suggested wording, and your forecast.
```

## Scout automation recommendation

Schedule the automation for Friday afternoon so the weekly signal set is mostly complete.

Notification policy should be enabled for every run because the final handoff is part of the workflow.

