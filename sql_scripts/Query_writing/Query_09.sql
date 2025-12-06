-- Query 9: Total patients served per department
-- Purpose: Department impact analysis
SELECT
    dep.department_name,
    COUNT(p.patient_id) AS total_patients
FROM department dep
JOIN doctor d ON dep.department_id = d.doctor_department
JOIN patient p ON p.doctor_id = d.doctor_id
GROUP BY dep.department_name
ORDER BY total_patients DESC;
