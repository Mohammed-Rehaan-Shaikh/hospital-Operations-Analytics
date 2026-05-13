CREATE DATABASE Hospital_analytics_db;

CREATE TABLE patient_visits (
    patient_id TEXT,
    admission_date DATE,
    admission_time TIME,
    patient_name TEXT,
    gender TEXT,
    age INT,
    race TEXT,
    department_referral TEXT,
    admission_status TEXT,
    satisfaction_score NUMERIC(3, 1),
    wait_time_minutes INT
);