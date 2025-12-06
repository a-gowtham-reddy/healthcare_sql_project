-- Query 02: Count number of doctors in each department
-- Purpose: Validate FK relationship & distribution of doctors
SELECT 
    dep.department_name,
    COUNT(d.doctor_id) AS total_doctors
FROM doctor d
JOIN department dep ON d.doctor_department = dep.department_id
GROUP BY dep.department_name
ORDER BY total_doctors DESC;
