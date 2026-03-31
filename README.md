# Olympic Athletes Data Analysis (SQL)

## Overview

This project analyzes **Olympic athlete data using SQL** to understand athlete demographics, medal distribution, participation trends, and gender representation across Olympic Games.

The project includes **data cleaning, relational constraints, aggregation queries, and analytical views** to generate insights from historical Olympic data.

---

## Tools

* PostgreSQL / SQL
* Data Cleaning
* Data Analysis using Aggregations and Views

---

## Data Preparation

Performed data cleaning and preprocessing:

* Converted `"NA"` values to **NULL**
* Casted **Age, Height, Weight** to numeric types
* Created cleaned dataset: `athlete_events_clean`
* Added **primary key (`record_id`)**
* Added **foreign key constraint with NOC regions table**

---

## Analysis Performed

### Athlete Demographics

* Minimum, maximum, average and **mode of athlete age**
* Average **height and weight distribution**
* Detection of **extreme age values (youngest and oldest athletes)**

### Participation Trends

* Total athletes participating per **Olympic year**
* Gender distribution per year
* Female participation growth over time

### Medal Analysis

* Total medals won by athletes
* Medal count per athlete
* Teams with the **highest medal efficiency ratio**

### Country / Team Insights

* Average **age, height, and weight of athletes by team**
* Total medals won by teams

### Event Analysis

* Average athlete age per **Olympic event**

---

## Key SQL Techniques Used

* Data cleaning using `NULLIF` and type casting
* Aggregations: `COUNT`, `AVG`, `MIN`, `MAX`
* Conditional aggregation with `CASE`
* `GROUP BY` analysis
* `HAVING` clause for duplicate detection
* Foreign key constraints
* SQL **Views** for analytical metrics

---

## Analytical Views Created

**Medals per Year**
Tracks medal distribution by gender across Olympic years.

**Medal Adequacy Ratio**
Measures team efficiency based on medals won per athlete.

**Female Participation Growth**
Analyzes percentage growth of female athletes over Olympic years.

---

## Example Insights

* Female participation has **steadily increased across Olympic years**.
* Medal distribution varies significantly across teams and events.
* Some teams demonstrate **higher medal efficiency relative to athlete count**.

---

## Repository Files

* Olympics_athlete_analysis.sql – SQL queries for cleaning and analysis
* Olympic athlete dataset

---

## Author

Jitesh
Aspiring Data Analyst | SQL | Power BI | Python
