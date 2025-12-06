-- Query 10: Doctors who treat more patients than their department's average
-- Purpose: Identify top performers

WITH doctor_load AS (
    SELECT doctor_id, COUNT(patient_id) AS total_patients
    FROM patient
    GROUP BY doctor_id
),
dept_avg AS (
    SELECT 
        d.doctor_department,
        AVG(dl.total_patients) AS avg_dept_patients
    FROM doctor d
    JOIN doctor_load dl ON d.doctor_id = dl.doctor_id
    GROUP BY d.doctor_department
)
SELECT 
    d.doctor_first_name || ' ' || d.doctor_last_name AS doctor_name,
    dep.department_name,
    dl.total_patients,
    da.avg_dept_patients
FROM doctor d
JOIN doctor_load dl ON d.doctor_id = dl.doctor_id
JOIN dept_avg da ON d.doctor_department = da.doctor_department
JOIN department dep ON dep.department_id = d.doctor_department
WHERE dl.total_patients > da.avg_dept_patients
ORDER BY dl.total_patients DESC;
