# Student Mental Wellbeing Analysis Project

## Project Overview

This project explores student mental wellbeing using Python, SQL, Azure SQL, and Power BI. The aim of the project was to analyse patterns relating to anxiety, depression, panic attacks, treatment, and academic performance while also developing practical data analytics skills using industry-style tools and workflows.

The project followed a complete analytics workflow, including:

- Data cleaning
- Exploratory Data Analysis (EDA)
- SQL querying
- Database management
- Data visualisation
- Dashboard creation
- Documentation and reflection

The project was completed as part of my development into a data analyst role and helped strengthen my understanding of Python, SQL, cloud databases, and business intelligence tools.

---

# Tools & Technologies Used

- Python
- Pandas
- Matplotlib
- Jupyter Notebook
- SQL
- Azure SQL Database
- VS Code
- Power BI

---

# Project Structure

student-wellbeing-project/
│
├── data/
│   ├── student_wellbeing.csv
│   └── student_wellbeing_cleaned.csv
│
├── docs/
│   └── dashboard_screenshot.png
│
├── python/
│   ├── student_wellbeing_analysis.ipynb
│   └── upload_to_azure_sql.ipynb
│
├── sql/
│   ├── 01_create_table.sql
│   ├── 02_insert_data.sql
│   └── 03_analysis_queries.sql
│
├── powerbi/
│   └── student_wellbeing_dashboard.pbix
│
└── README.md

---

# Dataset Information

The dataset used in this project focused on student academic performance and mental wellbeing indicators.

The main columns included:

- gender
- age
- course
- year_of_study
- cgpa
- depression
- anxiety
- panic_attack
- treatment

The dataset was relatively small and focused mainly on descriptive wellbeing analysis rather than predictive modelling.

---

# Data Cleaning Process

The data cleaning stage was completed in Python using Pandas.

The following tasks were carried out:

- Checked the dataset structure
- Renamed columns for consistency
- Checked for missing values
- Verified data types
- Cleaned formatting issues
- Exported a cleaned CSV file for SQL and Power BI analysis

Example cleaning steps:

```python
df.columns = df.columns.str.lower()
df.isnull().sum()
df.info()

The cleaned dataset was then exported and prepared for database analysis.

Azure SQL Database Setup

The cleaned CSV dataset was uploaded into an Azure SQL Database for querying and analysis.

Originally, I attempted to upload the dataset directly into Azure SQL using Python. Although the database connection itself worked correctly, the actual CSV upload repeatedly failed during the process.

Because of this, I switched to manually uploading the cleaned CSV file using the VS Code SQL extension instead. This allowed the project to continue successfully and also highlighted the importance of troubleshooting and adapting workflows when technical issues occur.

Even though the automated Python upload did not fully work, the SQL database connection itself was still successfully established.

SQL Analysis

SQL queries were used to explore trends within the dataset and summarise the mental wellbeing indicators.

The SQL analysis included:

Total student count
Anxiety breakdown
Depression breakdown
Panic attack breakdown
Treatment breakdown
Mental health comparisons

Example query:

SELECT anxiety, COUNT(*) AS total_students
FROM student_wellbeing
GROUP BY anxiety
ORDER BY total_students DESC;
Python Visualisations

Visualisations were created in Python using Matplotlib to better understand trends within the dataset.

The analysis included charts relating to:

Anxiety distribution
Depression distribution
Panic attack distribution
Treatment comparisons

The visualisations helped make patterns within the dataset easier to interpret compared to viewing raw SQL outputs and tables alone.

Power BI Dashboard

A Power BI dashboard was created using the cleaned CSV dataset.

The dashboard includes:

Anxiety distribution
Depression distribution
Panic attack distribution
Treatment distribution
CGPA range distribution
Interactive year-of-study slicers
Interactive gender slicers

The dashboard was designed to provide a simple and interactive overview of student mental wellbeing indicators.

This stage of the project helped develop practical business intelligence and dashboarding skills using Power BI Desktop.

Dashboard Preview

Key Findings

Some of the main findings from the analysis included:

Anxiety appeared more frequently than panic attacks within the dataset
Depression was reported by a noticeable proportion of students
Most students fell within the higher CGPA ranges
Treatment uptake appeared relatively low compared to reported wellbeing concerns

Because the dataset was relatively small, the findings should be viewed as exploratory rather than generalisable.

Challenges Faced

One of the biggest technical challenges during the project involved uploading the cleaned CSV file into Azure SQL using Python.

Although the database connection itself worked correctly, the actual upload process repeatedly failed. After troubleshooting connection settings and driver issues, I decided to manually upload the dataset using the VS Code SQL extension instead.

This ended up being a useful learning experience because it reinforced the importance of adaptability and problem-solving when working with databases and cloud systems.

Another challenge involved learning Power BI for the first time and understanding how to:

import datasets
create visuals
configure slicers
arrange dashboards
manage formatting and layouts

Working through these issues helped improve my confidence using business intelligence tools.

Skills Demonstrated

This project demonstrates skills in:

Data cleaning
Exploratory Data Analysis
SQL querying
Azure SQL exposure
Database management
Data visualisation
Dashboard creation
Power BI fundamentals
Problem-solving
Technical troubleshooting
Documentation
Future Improvements

Possible future improvements for the project include:

Using a larger dataset
Performing deeper statistical analysis
Adding predictive analytics or machine learning
Improving Power BI dashboard interactivity
Fully automating the Azure SQL upload process through Python
Expanding the dashboard with additional visuals and KPIs
Conclusion

Overall, this project helped strengthen my practical data analytics skills by taking a dataset through the full analytics workflow from cleaning and SQL querying to visualisation and dashboard creation.

The project also provided valuable experience troubleshooting technical issues involving Azure SQL and adapting workflows when planned solutions did not work as expected.

Completing the Power BI dashboard additionally helped develop my confidence using business intelligence tools and presenting data visually in a more interactive format.