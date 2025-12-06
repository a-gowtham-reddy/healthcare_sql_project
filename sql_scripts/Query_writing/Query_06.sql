-- Query 06: Calculate average patients per doctor
-- Purpose: Workload overview for hospital operations
SELECT
    ROUND(AVG(patient_count), 2) AS avg_patients_per_doctor
FROM (
    SELECT doctor_id, COUNT(patient_id) AS patient_count
    FROM patient
    GROUP BY doctor_id
) AS doctor_load;
