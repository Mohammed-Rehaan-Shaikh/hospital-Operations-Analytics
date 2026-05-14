--Wait time by department
SELECT
    department_referral,
    ROUND(AVG(patient_waittime), 2) AS avg_wait
FROM patient_visits
GROUP BY department_referral
ORDER BY avg_wait DESC;
--Query Objective
--Analyze average patient waiting times across hospital departments.

--Observation
--Some departments report significantly higher average waiting times than others.

--Insight
--Departments with prolonged waiting periods may be experiencing resource shortages, higher patient demand, or workflow inefficiencies.

--Recommendation
--Operational reviews should be conducted for departments with excessive wait times to improve service efficiency and patient flow management.

--Satisfaction by department
SELECT
    department_referral,
    ROUND(AVG(patient_satisfaction_score), 2) AS avg_satisfaction
FROM patient_visits
GROUP BY department_referral
ORDER BY avg_satisfaction DESC;
--Query Objective
--Compare patient satisfaction levels across hospital departments.

--Observation
--Patient satisfaction scores vary across departments.

--Insight
--Lower satisfaction levels in specific departments may indicate operational inefficiencies, communication issues, or inconsistent patient service quality.

--Recommendation
--Departments with lower satisfaction scores should undergo service quality evaluation and operational improvement planning.