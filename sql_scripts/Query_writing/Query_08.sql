-- Query 8: Count of doctors by department AND specialty
-- Purpose: Skill distribution inside departments
SELECT
    dep.department_name,
    d.doctor_specialty,
    COUNT(*) AS total_doctors
FROM doctor d
JOIN department dep ON d.doctor_department = dep.department_id
GROUP BY dep.department_name, d.doctor_specialty
ORDER BY dep.department_name, total_doctors DESC;
