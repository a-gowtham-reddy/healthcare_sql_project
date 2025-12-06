-- Query 05: Patient gender distribution with percentages
-- Purpose: Demographic insights
SELECT
    patient_gender,
    COUNT(*) AS total_patients,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM patient), 2) AS percentage
FROM patient
GROUP BY patient_gender
ORDER BY total_patients DESC;
