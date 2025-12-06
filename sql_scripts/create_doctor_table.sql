-- Step 2: Create Doctor Table
-- doctor_department is a foreign key referencing department
CREATE TABLE doctor (
    doctor_id SERIAL PRIMARY KEY,
    doctor_first_name VARCHAR(50),
    doctor_last_name VARCHAR(50),
    doctor_specialty VARCHAR(100),
    doctor_department INT REFERENCES department(department_id)
);

-- Verify table
SELECT * FROM doctor;
