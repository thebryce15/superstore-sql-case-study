# Superstore Sales Performance Analysis (SQL + Tableau Case Study)

**Author**: Bryce Smith  
**Tools**: SQL (SQLite via DBeaver), Tableau, Excel  
**Dataset**: Superstore Sales (via Tableau Public)

---

## Overview

This case study explores profitability and sales performance using a retail dataset from a fictional Superstore. The objective is to identify underperforming products, regional trends, and customer segments to inform pricing and targeting strategy.

---

## Business Objectives (ASK)

- Which product categories and sub-categories are most and least profitable?
- Which states or regions underperform or drive the most profit?
- Which customer segments are most valuable?
- Are there high-sales products losing money?
- How do profit margins change over time?

---

## Tools & Process (PREPARE, PROCESS)

- **SQLite**: Data cleaning, parsing dates, aggregation
- **DBeaver**: Query execution and export
- **Tableau**: Visual dashboards for trend analysis
- **Excel**: For export formatting and quick charting

Prepared the data by:
- Loading CSV into SQLite
- Converting MM/DD/YYYY strings to valid dates
- Using `GROUP BY`, `STRFTIME`, and `HAVING` for analytical queries

---

## Analyses (ANALYZE)

### 1. Profit by Category and Sub-Category

- Identified low-margin products like Tables and Bookcases
- High-margin winners: Phones, Copiers

[View CSV](analysis1_profit_by_category.csv)

---

### 2. Profit by Region and State

- Texas and Ohio showed strong sales but **net losses**
- Western region had the highest profit margin

[View CSV](analysis2_profit_by_region.csv)

---

### 3. Customer Segment Value

- Corporate segment led in both margin and volume
- Consumer segment was largest by count, but lower margin

[View CSV](analysis3_segment_profit.csv)

---

### 4. Loss-Leader Products

- Found high-revenue items selling at a loss
- Targets for price review or bundling

[View CSV](analysis4_loss_leaders.csv)

---

### 5. Monthly Profit Margin Trends

- Margin dips in December and July — likely due to discounts or seasonal factors
- Stable growth in Q1-Q3 months

[View CSV](analysis5_monthly_trends.csv)

---

## Tableau Dashboard

I also built a Tableau dashboard to visually highlight trends in profit, sales, and regional breakdowns.

[**View Tableau Dashboard**](https://public.tableau.com/app/profile/bryce.smith4541/viz/SuperstoreSalesPerformanceAnalysis_17497681544780/SuperstorePerformanceProfitSalesRegionalTrends)

### Screenshot:
![Tableau Dashboard](images/tableau_dashboard.png)

---

## Key Business Recommendations (ACT)

- Re-evaluate pricing for loss-leading furniture items
- Target Corporate segment for expansion and upsell
- Investigate causes for low margins in Texas and Ohio
- Prepare for seasonal dips with leaner inventory or adjusted campaigns

---

## Skills Demonstrated

- Advanced SQL: `GROUP BY`, `HAVING`, `STRFTIME`, aggregation, filtering
- Trend analysis & KPI reporting
- Tableau dashboard design for non-technical stakeholders
- Framing data-driven recommendations

---

## Project Files

| File | Description |
|------|-------------|
| `superstore_sql_case_study.sql` | Full SQL script with queries and comments |
| `*.csv` | Output of each analysis query |
| `images/*.png` | Tableau screenshots |
| `README.md` | Project summary |
| `superstore_case_study.pdf` | 📄 Full PDF version of this project *(Coming soon)* |

---

## Credits & Source

- Dataset originally from Tableau Public Sample Data
- For educational and portfolio purposes only

