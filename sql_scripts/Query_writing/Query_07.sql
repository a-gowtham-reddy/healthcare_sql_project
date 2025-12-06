-- Query 07: Rank departments by count of doctors
-- Purpose: Department size comparison
SELECT
    dep.department_name,
    COUNT(d.doctor_id) AS total_doctors,
    RANK() OVER (ORDER BY COUNT(d.doctor_id) DESC) AS dept_rank
FROM department dep
LEFT JOIN doctor d ON dep.department_id = d.doctor_department
GROUP BY dep.department_name
ORDER BY dept_rank;
