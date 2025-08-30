# The Grand Design

- **Model:** Foster-first with light on-site capacity (10 kennel equivalents), modular runs, enrichment fields, and a quiet decompression zone. Behavior plans standardized and versioned.
- **Network:** MOUs with county shelter(s), vet clinic(s), trainer collective, and transport partners. Clear SLAs on intake criteria, data sharing, and outcomes.
- **Data:** Open schema for dogs, behaviors, fosters, outcomes, donations, and content. Weekly public KPI snapshot.
- **Content Engine:** Daily micro-videos (rehab, training wins, myth-busting), weekly case-study, monthly impact report.
- **Funding:** Monthly donors + local corporate sponsors + micro-grants; productized offerings ("sponsor a foster cohort", "name-a-kennel").
- **Replication:** Everything documented in this repo; license content under CC BY so others can adapt with attribution.

## Facility Phasing
1) **Phase 0 (Now):** Foster-first; rented training yard; mobile crates/kennels; volunteer transports.  
2) **Phase 1:** 10 modular runs, storage, quarantine pen, weather cover, camera monitoring, enrichment course.  
3) **Phase 2:** Begin [Open Kennel Ranch](OpenKennelRanch.md) build-out — repurposed barn with herd-movement gates and a quarantine pen — plus treatment room, food storage, laundry, and RV hook-up/office. Confirm fencing, water supply, and coastal Oregon zoning compliance before occupancy.
4) **Phase 3:** Expand [Open Kennel Ranch](OpenKennelRanch.md) onto additional acreage with visitor cabins, trail enrichment loop, and an education pavilion. Extend fencing and water infrastructure and secure long-term coastal zoning and land-use approvals.

Use the [Site Selection Checklist](../ops/SiteSelectionChecklist.md) to validate zoning, environmental, soil, water, and structural considerations for all Phase 2–3 land decisions.

## Risk & Safety Principles
- Two-gate/airlock entries; color-coded handling; muzzle-conditioning normalised; bite-scale logging; incident RCA.

## Sensor Network & AI Analytics
- **Sensors:** GPS collars track location and activity; environmental monitors log temperature, humidity, and air quality; health wearables capture heart rate, gait, and stress signals.
- **Edge Processing:** On-site gateways aggregate device feeds, filter noise, trigger local alerts, and compress data before uplink.
- **Data Flow to Snowflake:** Gateways push streams via Snowpipe or staged batch files; devices fall back to cached uploads when offline, keeping the open schema consistent.
- **AI Analytics:** Snowflake-hosted models analyze behavior patterns, health anomalies, and environmental trends to guide care decisions.
- **Sponsorship & Licensing:** Snowflake is a potential sponsor; confirm nonprofit licensing or partnership terms before production use.
