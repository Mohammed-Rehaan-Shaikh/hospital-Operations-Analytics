--Wait time by department
SELECT
    department_referral,
    ROUND(AVG(patient_waittime), 2) AS avg_wait
FROM patient_visits
GROUP BY department_referral
ORDER BY avg_wait DESC; 

--Satisfaction by department
SELECT
    department_referral,
    ROUND(AVG(patient_satisfaction_score), 2) AS avg_satisfaction
FROM patient_visits
GROUP BY department_referral
ORDER BY avg_satisfaction DESC;