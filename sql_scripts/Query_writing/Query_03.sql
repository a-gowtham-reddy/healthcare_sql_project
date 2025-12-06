-- Query 03: Count number of patients per doctor
-- Purpose: Validate correct doctor → patient mapping
SELECT 
    d.doctor_first_name,
    d.doctor_last_name,
    COUNT(p.patient_id) AS total_patients
FROM doctor d
JOIN patient p ON p.doctor_id = d.doctor_id
GROUP BY d.doctor_first_name, d.doctor_last_name
ORDER BY total_patients DESC;
