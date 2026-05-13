--Total records
SELECT COUNT(*) 
FROM patient_visits;

--Check NULLs
SELECT
    COUNT(*) FILTER (WHERE patient_id IS NULL) AS null_patient_id,
    COUNT(*) FILTER (WHERE age IS NULL) AS null_age,
    COUNT(*) FILTER (WHERE wait_time_minutes IS NULL) AS null_wait_time,
    COUNT(*) FILTER (WHERE satisfaction_score IS NULL) AS null_satisfaction
FROM patient_visits;

--Validate invalid or abnormal values
SELECT *
FROM patient_visits
WHERE age < 0
   OR age > 120
   OR wait_time_minutes < 0;
