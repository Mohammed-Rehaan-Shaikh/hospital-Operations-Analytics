--Total patients
SELECT COUNT(*) AS total_patients
FROM patient_visits;
--Query Objective
--Determine the total number of patient visit records in the dataset.

--Observation
--The dataset contains all recorded patient visits during the selected analysis period.

--Insight
--Total patient volume provides a baseline understanding of hospital operational demand and service utilization.

--Recommendation
--Patient volume trends should be monitored regularly to support future hospital capacity planning and resource allocation.

--Average wait time
SELECT ROUND(AVG(patient_waittime), 2) AS avg_wait_time
FROM patient_visits;
--Query Objective
--Calculate the overall average patient waiting time.

--Observation
--Patients experience varying waiting durations before receiving treatment or consultation.

--Insight
--High average waiting times may indicate operational inefficiencies or increased patient congestion during peak periods.

--Recommendation
--The hospital should identify factors contributing to long wait times and implement operational improvements to reduce delays.

--Average satisfaction
SELECT ROUND(AVG(patient_satisfaction_score), 2) AS avg_satisfaction
FROM patient_visits;
--Query Objective
--Evaluate the overall patient satisfaction level.

--Observation
--Patient satisfaction scores provide an overview of healthcare service quality and patient experience.

--Insight
--Overall satisfaction levels can be used as a key performance indicator for evaluating operational effectiveness and service delivery quality.

--Recommendation
--Hospital management should continuously monitor patient satisfaction trends to identify and address service quality issues.