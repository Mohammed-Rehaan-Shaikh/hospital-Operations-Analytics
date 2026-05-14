--Peak admission hours
SELECT
    EXTRACT(HOUR FROM patient_admission_time) AS hour,
    COUNT(*) AS total_visits
FROM patient_visits
GROUP BY hour
ORDER BY total_visits DESC;
--Query Objective
--Identify the busiest patient admission hours throughout the day.

--Observation
--Certain hours experience significantly higher patient admission volumes compared to others.

--Insight
--Peak-hour patient surges may create operational bottlenecks, increase staff workload, and contribute to longer patient wait times.

--Recommendation
--Hospital staffing schedules and operational resources should be aligned with high-admission periods to improve patient flow efficiency.

--Busiest weekdays
SELECT
    TO_CHAR(patient_admission_date, 'Day') AS weekday,
    COUNT(*) AS total_visits
FROM patient_visits
GROUP BY weekday
ORDER BY total_visits DESC;
--Query Objective
--Determine which weekdays receive the highest patient traffic.

--Observation
--Patient visits are unevenly distributed across weekdays, with certain days showing consistently higher volumes.

--Insight
--Uneven patient inflow across weekdays may increase operational pressure on specific days and affect service efficiency.

--Recommendation
--Hospital administration should optimize staffing and scheduling strategies based on weekday admission trends.