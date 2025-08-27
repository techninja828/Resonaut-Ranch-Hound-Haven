# Animal Flow & Docs

```mermaid
flowchart LR
  A[Intake Request] --> B{Criteria Met?}
  B -- No --> X[Refer/Decline w/ Resources]
  B -- Yes --> C[Intake Exam]
  C --> D[Quarantine]
  D --> E[Behavior Assessment]
  E --> F{Track: Rehab | Foster | Sanctuary}
  F -->|Rehab| G[Behavior Plan + Sessions]
  F -->|Foster| H[Foster Match + Kit + Training]
  F -->|Sanctuary| I[Long-term Plan + Enrichment]
  G --> J[Adoption Readiness]
  H --> J
  J --> N[Family Stay & Evaluation]
  N --> K[Adoption + Post-Adopt Support]
  I --> L[Quarterly Review]
  D --> M[Data & Media capture]
  click N "FamilyStayAdoption.md" "Family Stay & Adoption Evaluation"
```

**Gates & Docs:** Intake Checklist, Med Intake, Quarantine Protocol, Disease Monitoring, Behavior Plan v1, Foster Packet, Family Stay Adoption Guide, Adoption Packet, Incident Form.
