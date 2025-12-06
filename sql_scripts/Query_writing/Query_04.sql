-- Query 04: Top 10 doctors with highest patient count
-- Purpose: Identify busiest doctors in the hospital
SELECT
    d.doctor_first_name || ' ' || d.doctor_last_name AS doctor_name,
    d.doctor_specialty,
    COUNT(p.patient_id) AS total_patients
FROM doctor d
LEFT JOIN patient p ON d.doctor_id = p.doctor_id
GROUP BY doctor_name, d.doctor_specialty
ORDER BY total_patients DESC
LIMIT 10;
