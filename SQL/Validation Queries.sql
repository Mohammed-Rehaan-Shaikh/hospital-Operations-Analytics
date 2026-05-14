--Total records
SELECT COUNT(*) 
FROM patient_visits;
--Query Objective
--Verify the total number of records available in the patient visit dataset.

--Observation
--The dataset contains all imported patient visit records for analysis.

--Insight
--Record validation ensures dataset completeness before performing advanced analytics and reporting.

--Recommendation
--Data validation checks should be performed regularly to maintain analytical reliability and reporting accuracy.

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
--Query Objective
--Identify missing values across critical dataset columns.

--Observation
--Some columns contain NULL or missing values.

--Insight
--Missing data may reduce analytical accuracy and indicate incomplete data collection or operational recording inconsistencies.

--Recommendation
--Missing values should be cleaned, standardized, or appropriately categorized before advanced analysis and dashboard development.

--Validate invalid or abnormal values
SELECT *
FROM patient_visits
WHERE patient_age < 0
   OR patient_age > 120
   OR patient_waittime < 0;
--Query Objective
--Detect abnormal or invalid patient records within the dataset.

--Observation
--Potential abnormal values such as negative wait times or unrealistic patient ages may exist within the dataset.

--Insight
--Invalid records can significantly affect analytical accuracy and produce misleading business insights.

--Recommendation
--Data validation and quality control procedures should be implemented to identify and correct abnormal records before analysis.