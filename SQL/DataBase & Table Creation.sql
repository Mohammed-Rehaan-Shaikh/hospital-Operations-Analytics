CREATE DATABASE Hospital_analytics_db;

CREATE TABLE patient_visits (
    patient_id VARCHAR(20),
    patient_admission_date DATE,
    patient_admission_time TIME,
    patient_name VARCHAR(100),
    patient_gender VARCHAR(20),
    patient_age INT,
    patient_race VARCHAR(50),
    department_referral VARCHAR(100),
    patient_admission_flag VARCHAR(30),
    patient_satisfaction_score DECIMAL(3,1),
    patient_waittime INT
);