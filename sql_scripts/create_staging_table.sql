-- Step 4: Create Staging Table
-- This table stores raw CSV data before normalization
CREATE TABLE raw_hospital_data (
    patient_name VARCHAR(100),
    patient_gender VARCHAR(20),
    patient_dob VARCHAR(20), -- will convert to DATE
    patient_address VARCHAR(200),
    patient_city VARCHAR(50),
    patient_state CHAR(2),
    patient_zip_code VARCHAR(20),
    patient_phone_number VARCHAR(50),
    doctor_first_name VARCHAR(50),
    doctor_last_name VARCHAR(50),
    doctor_specialty VARCHAR(100),
    doctor_department VARCHAR(50),
    department_name VARCHAR(100)
);

-- Verify
SELECT * FROM raw_hospital_data;
