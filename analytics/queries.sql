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
