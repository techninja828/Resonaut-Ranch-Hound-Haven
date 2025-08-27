-- Example: Adoption conversion and return rate
SELECT
  DATE_TRUNC('month', adoption_date) AS month,
  COUNT(*) AS adoptions,
  SUM(CASE WHEN return_date IS NOT NULL THEN 1 ELSE 0 END)::float / NULLIF(COUNT(*),0) AS return_rate
FROM adoptions
GROUP BY 1
ORDER BY 1;

-- Example: Median days from intake to adoption
SELECT
  PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY a.adoption_date - n.intake_date) AS median_days
FROM adoptions a
JOIN animals n USING (animal_id);

-- Example: Family stay completion rate
SELECT
  DATE_TRUNC('month', start_date) AS month,
  SUM(CASE WHEN completed_date IS NOT NULL THEN 1 ELSE 0 END)::float / NULLIF(COUNT(*),0) AS completion_rate
FROM family_stays
GROUP BY 1
ORDER BY 1;

-- Example: Post-adoption retention at 6 months
SELECT
  DATE_TRUNC('month', adoption_date) AS month,
  SUM(CASE WHEN return_date IS NULL OR return_date > adoption_date + INTERVAL '6 months' THEN 1 ELSE 0 END)::float / NULLIF(COUNT(*),0) AS retention_6m
FROM adoptions
GROUP BY 1
ORDER BY 1;

-- Example: Therapy-dog integration success rate
SELECT
  DATE_TRUNC('month', integration_date) AS month,
  SUM(CASE WHEN successful THEN 1 ELSE 0 END)::float / NULLIF(COUNT(*),0) AS success_rate
FROM therapy_dog_integrations
GROUP BY 1
ORDER BY 1;
