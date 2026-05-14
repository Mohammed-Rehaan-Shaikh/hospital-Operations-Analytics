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
--Query Objective
--Examine the relationship between patient waiting time and satisfaction levels.

--Observation
--Patient satisfaction decreases as waiting time increases.

--Insight
--Long waiting periods negatively affect patient experience and overall perception of healthcare service quality.

--Recommendation
--Reducing excessive waiting times should be prioritized to improve patient satisfaction outcomes and operational performance.