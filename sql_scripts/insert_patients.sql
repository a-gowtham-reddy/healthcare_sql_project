/*---------------------------------------------
  8. Insert Patients
-----------------------------------------------*/
INSERT INTO patient (
    patient_name, patient_gender, patient_dob,
    patient_address, patient_city, patient_state,
    patient_zip_code, patient_phone_number, doctor_id
)
SELECT
    rh.patient_name,
    rh.patient_gender,
    TO_DATE(rh.patient_dob, 'YYYY-MM-DD'),   
    rh.patient_address,
    rh.patient_city,
    rh.patient_state,
    rh.patient_zip_code,
    rh.patient_phone_number,
    d.doctor_id
FROM raw_hospital_data rh
JOIN doctor d
  ON rh.doctor_first_name = d.doctor_first_name
 AND rh.doctor_last_name = d.doctor_last_name
 AND rh.doctor_specialty = d.doctor_specialty;
