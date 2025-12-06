-- =========================================================
-- Project: Healthcare Database 
-- Database Design & Normalization
-- Description: Creating normalized tables in 3NF with Primary Keys (PKs) and Foreign Keys (FKs)
-- =========================================================


-- Step 1: Create Department Table
-- department_id is auto-increment (SERIAL)
-- department_name is unique to avoid duplicates
CREATE TABLE department (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

-- Verify table creation
SELECT * FROM department;