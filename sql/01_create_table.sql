-- Creating the main table for the student wellbeing dataset.
-- The column names are intentionally kept simple so that the analysis remains readable.

CREATE TABLE student_wellbeing (
    gender NVARCHAR(50),
    age INT,
    course NVARCHAR(100),
    year_of_study NVARCHAR(50),
    cgpa NVARCHAR(50),
    depression NVARCHAR(10),
    anxiety NVARCHAR(10),
    panic_attack NVARCHAR(10),
    treatment NVARCHAR(10)
);
-- This table will store the responses from the survey, with each row representing a unique respondent. The 'response_id' column is an auto-incrementing primary key to ensure each entry is uniquely identifiable.