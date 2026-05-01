# <img src="https://cdn.jsdelivr.net/npm/lucide-static/icons/fuel.svg" width="20" style="filter: invert(55%) sepia(98%) saturate(600%) hue-rotate(350deg) brightness(95%)contrast(95%);"/> Fuel Price vs War Impact Analysis (2020–2026)

## <img src="https://cdn.jsdelivr.net/npm/lucide-static/icons/fuel.svg" width="18" color = "white" /> Project Overview
This project analyzes global fuel price trends and examines the impact of geopolitical conflict on fuel markets.  
The study focuses on how fuel prices (petrol, diesel, LPG) change before and after the 2022 global conflict period.

The dataset includes weekly fuel prices across 84 countries along with economic and policy indicators.

### <ins> Data Collection </ins>

First, I searched for datasets related to fuel prices and global conflicts.

I found two datasets,

  - Fuel Prices Dataset (2020–2026) – contains weekly fuel prices for different countries  
  - Conflict Dataset – contains information about global conflicts and their timelines

### <ins>  Creating the Database </ins>
I used SQLite to create a database for this project.

 I then created two tables,

- `fuel_prices`
- `conflicts`

After that, I imported both datasets into these tables.

### <ins> Data Cleaning </ins>

Before analysis, I checked and cleaned the data,

- Made sure date format is correct  
- Checked missing values  
- Verified numeric columns like fuel prices  
- Ensured all columns are properly structured  

### Combining the Data

Instead of directly joining both datasets, I engineered a feature (war_active) to represent the impact of the 2022 conflict period.


- If date is before 2022 → 0  
- If date is after 2022 → 1  

Finally, I created a new table,

- `fuel_with_war`

This table includes all fuel data + war indicator.

### <ins> Analysis </ins>

This approach allowed me to transform raw data into meaningful insights using SQL-based aggregation and filtering.
Using SQL, I analyzed,

- Fuel prices before vs after war  
- Price trends over time  
- Differences between regions  
- Impact based on income levels  
- Effect of government price controls  

---

### <ins> Preparing for Visualization </ins>

Finally, I exported the cleaned dataset (`fuel_with_war`) as a CSV file.

This was then used in Power BI to create dashboards and visualize insights.

## <ins> PAGE 1 | Global Fuel Market Overview </ins>

This page provides a high-level analysis of global fuel pricing trends using key performance indicators (KPIs) and time-based visualizations. It helps understand overall market behavior before analyzing the impact of geopolitical events.
<img width="1154" height="791" alt="Screenshot 2026-05-01 134630" src="https://github.com/user-attachments/assets/677790b1-29dd-4ca5-a40c-3177a4c6313b" />

Key Metrics (KPIs)
 - Average Petrol Price: $2.28
 - Average Diesel Price: $2.13
 - Maximum Brent Crude Price: $130

These KPIs show that petrol prices are slightly higher than diesel globally, reflecting differences in refining costs, taxation, and distribution. Brent crude oil demonstrates significantly higher volatility compared to retail fuel prices, indicating its role as a global benchmark for energy markets.




