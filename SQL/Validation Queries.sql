--Total records
SELECT COUNT(*) 
FROM patient_visits;

--Check NULLs
SELECT 
    COUNT(*) FILTER (WHERE patient_id IS NULL) AS null_patient_id,
    COUNT(*) FILTER (WHERE patient_admission_date IS NULL) AS null_patient_admission_date,
    COUNT(*) FILTER (WHERE patient_admission_time IS NULL) AS null_patient_admission_time,
    COUNT(*) FILTER (WHERE patient_name IS NULL) AS null_patient_name,
    COUNT(*) FILTER (WHERE patient_gender IS NULL) AS null_patient_gender,
    COUNT(*) FILTER (WHERE patient_age IS NULL) AS null_patient_age,
    COUNT(*) FILTER (WHERE patient_race IS NULL) AS null_patient_race,
    COUNT(*) FILTER (WHERE department_referral IS NULL) AS null_department_referral,
    COUNT(*) FILTER (WHERE patient_admission_flag IS NULL) AS null_patient_admission_flag,
    COUNT(*) FILTER (WHERE patient_satisfaction_score IS NULL) AS null_patient_satisfaction_score,
    COUNT(*) FILTER (WHERE patient_waittime IS NULL) AS null_patient_waittime
FROM patient_visits;

--Validate invalid or abnormal values
SELECT *
FROM patient_visits
WHERE patient_age < 0
   OR patient_age > 120
   OR patient_waittime < 0;
