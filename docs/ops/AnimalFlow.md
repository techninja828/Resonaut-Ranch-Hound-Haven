# Animal Flow & Docs

```mermaid
flowchart LR
  A[Intake Request] --> B{Criteria Met?}
  B -- No --> X[Refer/Decline w/ Resources]
  B -- Yes --> C[Quarantine & Health Check]
  C --> D[Behavior Assessment]
  D --> E{Track: Rehab | Foster | Sanctuary}
  E -->|Rehab| F[Behavior Plan + Sessions]
  E -->|Foster| G[Foster Match + Kit + Training]
  E -->|Sanctuary| H[Long-term Plan + Enrichment]
  F --> I[Adoption Readiness]
  G --> I
  I --> J[Adoption + Post-Adopt Support]
  H --> K[Quarterly Review]
  C --> L[Data & Media capture]
```

**Gates & Docs:** Intake Checklist, Med Intake, Behavior Plan v1, Foster Packet, Adoption Packet, Incident Form.
