-- 1. Initial inspection of the dataset following import into Azure SQL
SELECT TOP 10 *
FROM student_wellbeing;

-- 2. Total number of student records contained within the dataset
SELECT COUNT(*) AS total_students
FROM student_wellbeing;

-- 3. Overall distribution of students reporting depression
SELECT depression, COUNT(*) AS total_students
FROM student_wellbeing
GROUP BY depression
ORDER BY total_students DESC;

-- 4. Overall distribution of students reporting anxiety
SELECT anxiety, COUNT(*) AS total_students
FROM student_wellbeing
GROUP BY anxiety
ORDER BY total_students DESC;

-- 5. Overall distribution of students reporting panic attacks
SELECT panic_attack, COUNT(*) AS total_students
FROM student_wellbeing
GROUP BY panic_attack
ORDER BY total_students DESC;

-- 6. Analysis of students reporting current or previous treatment seeking behaviour
SELECT treatment, COUNT(*) AS total_students
FROM student_wellbeing
GROUP BY treatment
ORDER BY total_students DESC;

-- 7. Comparison of reported mental wellbeing indicators across gender categories
SELECT 
    gender,
    depression,
    anxiety,
    panic_attack,
    COUNT(*) AS total_students
FROM student_wellbeing
GROUP BY gender, depression, anxiety, panic_attack
ORDER BY gender, total_students DESC;

-- 8. Analysis of reported depression across different courses of study
SELECT 
    course,
    depression,
    COUNT(*) AS total_students
FROM student_wellbeing
GROUP BY course, depression
ORDER BY course, total_students DESC;

-- 9. Analysis of reported anxiety across different courses of study
SELECT 
    course,
    anxiety,
    COUNT(*) AS total_students
FROM student_wellbeing
GROUP BY course, anxiety
ORDER BY course, total_students DESC;

-- 10. Exploration of treatment seeking behaviour alongside reported wellbeing indicators
SELECT 
    depression,
    anxiety,
    panic_attack,
    treatment,
    COUNT(*) AS total_students
FROM student_wellbeing
GROUP BY depression, anxiety, panic_attack, treatment
ORDER BY total_students DESC;

-- 11. Average age analysed according to reported depression status
SELECT 
    depression,
    AVG(age) AS average_age,
    COUNT(*) AS total_students
FROM student_wellbeing
GROUP BY depression;

-- 12. Distribution of CGPA values analysed by depression status
SELECT 
    cgpa,
    depression,
    COUNT(*) AS total_students
FROM student_wellbeing
GROUP BY cgpa, depression
ORDER BY cgpa, depression;

-- 13. Analysis of anxiety levels across different years of study
SELECT 
    year_of_study,
    anxiety,
    COUNT(*) AS total_students
FROM student_wellbeing
GROUP BY year_of_study, anxiety
ORDER BY year_of_study;

-- 14. Exploration of students reporting multiple wellbeing indicators simultaneously
SELECT 
    depression,
    anxiety,
    panic_attack,
    COUNT(*) AS total_students
FROM student_wellbeing
GROUP BY depression, anxiety, panic_attack
ORDER BY total_students DESC;

-- 15. Total number of students reporting at least one wellbeing-related concern
SELECT COUNT(*) AS students_with_any_concern
FROM student_wellbeing
WHERE depression = 'Yes'
   OR anxiety = 'Yes'
   OR panic_attack = 'Yes';

## SQL Reflection

SQL was used within this project to explore patterns contained within the student mental wellbeing dataset following the successful upload of the cleaned CSV file into Azure SQL Database. The queries focused primarily on descriptive analysis, including the distribution of reported anxiety, depression, panic attacks, treatment-seeking behaviour, and demographic comparisons across variables such as gender, course, age, CGPA, and year of study.

Using SQL provided a more structured way of examining the dataset and allowed patterns within the data to be identified efficiently through grouping, filtering, aggregation, and counting functions. In particular, the use of GROUP BY and COUNT statements helped highlight the prevalence of different wellbeing indicators across the student sample.

The SQL phase also demonstrated the practical integration of cloud-based database technologies within a broader data analysis workflow. Uploading the dataset into Azure SQL Database allowed the analysis to move beyond local spreadsheet-based exploration and provided experience working with relational database systems commonly used within professional data environments.

Although the findings are descriptive and do not establish causal relationships, the SQL analysis provided useful insight into several observable trends relating to student mental wellbeing and treatment-seeking behaviour.