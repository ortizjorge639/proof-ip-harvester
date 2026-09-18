# Generic Microsoft 365 Connector Notes

Use Microsoft Graph or an equivalent enterprise connector layer to gather work signals.

## Signal sources

| Source | Useful signals |
| --- | --- |
| Teams | Explanations, decisions, handoffs, asks, reusable answers |
| Outlook email | Outcomes, customer proof, decisions, commitments, follow-ups |
| Calendar | Meeting context, customer touchpoints, enablement sessions |
| OneDrive / SharePoint | Diagrams, decks, docs, demos, recaps, templates |
| WorkIQ or semantic layer | Cross-service synthesis, validation, candidate enrichment |

## Implementation guidance

1. Query a bounded time window, usually the current week.
2. Minimize raw content collection.
3. Store source pointers instead of sensitive excerpts when possible.
4. Classify candidates into CP, RI, or both.
5. Write candidate notes to the configured inbox.
6. Send a review handoff through the configured notification channel.

