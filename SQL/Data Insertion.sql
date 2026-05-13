SET datestyle = 'ISO, DMY';

COPY patient_visits
FROM 'C:/IDE/Projects/hospital-Operations-Analytics/Data/cleaned_patient_data.csv'
WITH (
    FORMAT CSV,
    HEADER,
    DELIMITER ',',
    ENCODING 'UTF8'
);