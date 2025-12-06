/*---------------------------------------------
  6. Insert Unique Departments
-----------------------------------------------*/
INSERT INTO department (department_name)
SELECT DISTINCT department_name
FROM raw_hospital_data
WHERE department_name IS NOT NULL;
