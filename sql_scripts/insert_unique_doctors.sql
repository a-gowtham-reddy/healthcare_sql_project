/*---------------------------------------------
  7. Insert Unique Doctors
-----------------------------------------------*/
INSERT INTO doctor (doctor_first_name, doctor_last_name, doctor_specialty, doctor_department)
SELECT DISTINCT
    rh.doctor_first_name,
    rh.doctor_last_name,
    rh.doctor_specialty,
    d.department_id
FROM raw_hospital_data rh
JOIN department d ON rh.department_name = d.department_name;
