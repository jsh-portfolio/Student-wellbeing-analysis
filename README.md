# Student Mental Wellbeing Analysis Project

## Project Overview

This project explores student mental wellbeing using Python, SQL, Azure SQL, and Power BI. The aim of the project was to analyse patterns relating to anxiety, depression, panic attacks, treatment, and academic performance while also developing practical data analytics skills using industry-style tools and workflows.

The project followed a complete analytics workflow including:

- Data cleaning
- Exploratory Data Analysis (EDA)
- SQL querying
- Database management
- Data visualisation
- Dashboard creation
- Documentation and reflection

---

## Tools & Technologies Used

- Python
- Pandas
- Matplotlib
- Jupyter Notebook
- SQL
- Azure SQL Database
- VS Code
- Power BI
- GitHub

---

## Project Structure

```text
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
```

---

## Dataset Information

The dataset focused on student academic performance and mental wellbeing indicators.

Main columns included:

- gender
- age
- course
- year_of_study
- cgpa
- depression
- anxiety
- panic_attack
- treatment

---

## Data Cleaning

The data cleaning stage was completed in Python using Pandas.

Tasks included:

- Checking missing values
- Renaming columns
- Verifying data types
- Cleaning formatting inconsistencies
- Exporting a cleaned CSV file

Example:

```python
df.columns = df.columns.str.lower()
df.isnull().sum()
df.info()
```

---

## Azure SQL Database Setup

The cleaned CSV dataset was uploaded into an Azure SQL Database for querying and analysis.

Originally, I attempted to upload the dataset directly into Azure SQL using Python. Although the database connection itself worked correctly, the actual CSV upload repeatedly failed during the process.

Because of this, I switched to manually uploading the cleaned CSV file using the VS Code SQL extension instead. This allowed the project to continue successfully and also highlighted the importance of troubleshooting and adapting workflows when technical issues occur.

---

## SQL Analysis

SQL queries were used to explore trends within the dataset and summarise the mental wellbeing indicators.

The SQL analysis included:

- Total student count
- Anxiety breakdown
- Depression breakdown
- Panic attack breakdown
- Treatment breakdown

Example query:

```sql
SELECT anxiety, COUNT(*) AS total_students
FROM student_wellbeing
GROUP BY anxiety
ORDER BY total_students DESC;
```

---

## Python Visualisations

Visualisations were created in Python using Matplotlib to better understand trends within the dataset.

Charts included:

- Anxiety distribution
- Depression distribution
- Panic attack distribution
- Treatment comparisons

---

## Power BI Dashboard

A Power BI dashboard was created using the cleaned CSV dataset.

The dashboard includes:

- Anxiety distribution
- Depression distribution
- Panic attack distribution
- Treatment distribution
- CGPA range distribution
- Interactive slicers

---

## Dashboard Preview

![Dashboard Screenshot](docs/dashboard_screenshot.png)

---

## Key Findings

Some of the main findings included:

- Anxiety appeared more frequently than panic attacks
- Depression was reported by a noticeable proportion of students
- Most students fell within higher CGPA ranges
- Treatment uptake appeared relatively low compared to reported wellbeing concerns

---

## Challenges Faced

One of the biggest technical challenges involved uploading the cleaned CSV file into Azure SQL using Python.

Although the database connection itself worked correctly, the upload repeatedly failed. After troubleshooting connection settings and driver issues, I decided to manually upload the dataset using the VS Code SQL extension instead.

Another challenge involved learning Power BI for the first time and understanding how to:

- import datasets
- create visuals
- configure slicers
- arrange dashboards
- manage formatting and layouts

---

## Skills Demonstrated

This project demonstrates skills in:

- Data cleaning
- Exploratory Data Analysis
- SQL querying
- Azure SQL exposure
- Data visualisation
- Dashboard creation
- Power BI fundamentals
- Technical troubleshooting
- Documentation

---

## Future Improvements

Possible future improvements include:

- Using a larger dataset
- Performing deeper statistical analysis
- Adding predictive analytics
- Improving Power BI dashboard interactivity
- Fully automating the Azure SQL upload process through Python

---

## Conclusion

Overall, this project helped strengthen my practical data analytics skills by taking a dataset through the full analytics workflow from cleaning and SQL querying to visualisation and dashboard creation.

The project also provided valuable experience troubleshooting technical issues involving Azure SQL and adapting workflows when planned solutions did not work as expected.