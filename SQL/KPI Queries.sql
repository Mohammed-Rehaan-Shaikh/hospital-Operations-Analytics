--Total patients
SELECT COUNT(*) AS total_patients
FROM patient_visits;

--Average wait time
SELECT ROUND(AVG(wait_time_minutes), 2) AS avg_wait_time
FROM patient_visits;

--Average satisfaction
SELECT ROUND(AVG(satisfaction_score), 2) AS avg_satisfaction
FROM patient_visits;