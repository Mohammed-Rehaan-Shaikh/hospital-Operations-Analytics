--Peak admission hours
SELECT
    EXTRACT(HOUR FROM patient_admission_time) AS hour,
    COUNT(*) AS total_visits
FROM patient_visits
GROUP BY hour
ORDER BY total_visits DESC;

--Busiest weekdays
SELECT
    TO_CHAR(patient_admission_date, 'Day') AS weekday,
    COUNT(*) AS total_visits
FROM patient_visits
GROUP BY weekday
ORDER BY total_visits DESC;