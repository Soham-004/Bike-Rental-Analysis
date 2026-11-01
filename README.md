# Bike Rental Analysis | SQL & Microsoft Excel

## Project Overview

This project focuses on analysing bike rental demand, customer behaviour, and rental patterns using **MySQL and Microsoft Excel**.

The objective was to explore historical bike rental data, identify important business trends, and present meaningful insights through SQL queries and an interactive Excel dashboard.

The analysis covers customer segmentation, monthly and seasonal demand, weather conditions, weekday patterns, working versus non-working days, and year-over-year performance.

## Project Objectives

- Analyse overall bike rental demand and customer usage patterns.
- Compare registered and casual customer behaviour.
- Identify the months and seasons with the highest rental demand.
- Understand the impact of weather conditions on bike rentals.
- Compare rental demand across weekdays and working versus non-working days.
- Evaluate year-over-year rental performance.
- Build an interactive Excel dashboard to communicate key findings.

## Tools & Technologies

| Tool | Purpose |
|---|---|
| MySQL | Data analysis, querying, aggregations and business insights |
| Microsoft Excel | Data analysis, PivotTables, PivotCharts and dashboard creation |
| GitHub | Project documentation and version control |

## Dataset Information

The project uses the Bike Sharing dataset, containing historical rental information from 2011 and 2012.

The dataset includes information about:

- Date and year
- Season and month
- Weekday and working-day classification
- Weather conditions
- Temperature and humidity
- Wind speed
- Casual rentals
- Registered rentals
- Total rentals

**Important columns used in the analysis:**

| Column | Description |
|---|---|
| `dteday` | Date of rental activity |
| `season` | Season (1–4) |
| `yr` | Year (0 = 2011, 1 = 2012) |
| `mnth` | Month (1–12) |
| `weekday` | Day of the week |
| `workingday` | Working-day indicator |
| `weathersit` | Weather condition |
| `casual` | Rentals by casual users |
| `registered` | Rentals by registered users |
| `cnt` | Total bike rentals |

## Project Workflow

### 1. Data Analysis Using MySQL

Used MySQL to explore the dataset, perform aggregations, and answer business-related questions.

The SQL analysis focused on:

- Calculating total bike rentals.
- Comparing registered and casual rentals.
- Identifying the highest-demand month.
- Analysing seasonal rental patterns.
- Evaluating weekday and working-day demand.
- Understanding the relationship between weather conditions and rentals.
- Comparing rental performance between 2011 and 2012.
- Identifying the date with the highest daily rental demand.

SQL concepts applied included:

- SELECT and WHERE
- Aggregate Functions (SUM, COUNT, AVG, MAX)
- GROUP BY and ORDER BY
- CASE WHEN
- Filtering and sorting
- Date-based analysis

### 2. Data Analysis Using Microsoft Excel

Used Microsoft Excel to perform additional analysis and validate findings through PivotTables.

Created the following worksheets:

| Worksheet | Purpose |
|---|---|
| `Raw_Data` | Original dataset |
| `PT_Overall_KPIs` | Overall rental metrics |
| `PT_Monthly` | Month-wise rental analysis |
| `PT_Seasonal` | Season-wise rental analysis |
| `PT_Day_Type` | Working vs non-working day analysis |
| `PT_Weather` | Weather-wise rental analysis |
| `PT_Weekday` | Day-wise rental analysis |
| `PT_Yearly` | Year-wise rental comparison |
| `Dashboard` | Interactive dashboard |

### 3. Interactive Excel Dashboard

Developed an interactive Excel dashboard featuring:

- 5 KPI cards
- 6 PivotCharts
- 6 interactive slicers

**KPI Cards**

1. Total Rentals: 3,292,679
2. Registered Rentals: 2,672,662
3. Casual Rentals: 620,017
4. Peak Daily Rentals: 8,714
5. Registered User Share: 81.17%

**PivotCharts**

| No. | Chart Title | Analysis |
|---|---|---|
| 1 | Monthly Bike Rental Trend | Month-wise rental demand |
| 2 | Seasonal Demand Comparison | Rental demand across four seasons |
| 3 | Working vs Non-Working Day Analysis | Comparison of daily rental activity |
| 4 | Weather Impact on Demand | Rental patterns across weather conditions |
| 5 | Weekday Rental Pattern | Rental demand across weekdays |
| 6 | Year-over-Year Bike Rental Performance | Comparison of 2011 and 2012 |

**Interactive Slicers**

- Year
- Season
- Weather

The slicers allow users to filter the dashboard and explore rental patterns across different categories.

## Key Business Findings

The analysis of **3,292,679 total bike rentals** revealed the following insights:

**1. Customer Segmentation**

- Registered users generated 2,672,662 rentals, accounting for 81.17% of total rentals.
- Casual users generated 620,017 rentals, accounting for 18.83% of total rentals.

**2. Registered vs Casual Users**

Registered users generated approximately 4.31 times more rentals than casual users, demonstrating their significantly higher contribution to overall rental activity.

**3. Peak Daily Demand**

The highest number of rentals recorded in a single day was 8,714.

**4. Monthly Demand**

August recorded the highest rental demand among all months.

**5. Seasonal Demand**

Season 3 (Fall/Autumn) recorded the highest rental demand among the four seasons.

**6. Year-over-Year Performance**

| Year | Total Rentals |
|---|---:|
| 2011 | 1,243,103 |
| 2012 | 2,049,576 |
| **Grand Total** | **3,292,679** |

Rental volume increased by approximately **64.88% in 2012 compared with 2011**, indicating substantial year-over-year growth.

## Project Outcomes

Through this project, I gained practical experience in:

- Writing SQL queries to solve business-related questions.
- Analysing structured datasets using MySQL.
- Applying aggregate functions and conditional logic.
- Performing data analysis using Excel PivotTables.
- Creating interactive dashboards using PivotCharts and slicers.
- Calculating and interpreting business KPIs.
- Translating analytical results into meaningful business insights.

## Project Files

The repository contains:

- **SQL File:** SQL queries used for data exploration and business analysis.
- **Excel Workbook:** Contains the raw dataset, analytical PivotTables, KPI calculations, and interactive dashboard.
- **README.md:** Project documentation, methodology, and key findings.

## Conclusion

This project demonstrates the practical application of MySQL and Microsoft Excel in analysing bike rental data and identifying meaningful business trends.

By combining SQL-based analysis with an interactive Excel dashboard, the project provides insights into customer behaviour, rental demand, seasonal patterns, and year-over-year performance.