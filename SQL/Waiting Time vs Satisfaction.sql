--Satisfaction vs Wait Time
SELECT
    CASE
        WHEN patient_waittime < 15 THEN 'Short Wait'
        WHEN patient_waittime BETWEEN 15 AND 30 THEN 'Medium Wait'
        ELSE 'Long Wait'
    END AS wait_category,

    ROUND(AVG(patient_satisfaction_score), 2) AS avg_satisfaction,
    COUNT(*) AS patients

FROM patient_visits

GROUP BY wait_category
ORDER BY avg_satisfaction DESC;