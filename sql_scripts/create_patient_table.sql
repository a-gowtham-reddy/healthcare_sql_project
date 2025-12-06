-- Step 3: Create Patient Table
-- doctor_id references doctor table
CREATE TABLE patient (
    patient_id SERIAL PRIMARY KEY,
    patient_name VARCHAR(100),
    patient_gender VARCHAR(20),
    patient_dob DATE,
    patient_address VARCHAR(200),
    patient_city VARCHAR(50),
    patient_state CHAR(2),
    patient_zip_code VARCHAR(20),
    patient_phone_number VARCHAR(50),
    doctor_id INT REFERENCES doctor(doctor_id)
);

-- Verify
SELECT * FROM patient;
