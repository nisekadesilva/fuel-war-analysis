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

## Combining the Data

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

This page provides a high-level analysis of global fuel pricing trends using key performance indicators (KPIs) and time-based visualizations. It helps understand overall market behavior before analyzing the impact of geopolitical events. <br>

<img width="1154" height="791" alt="Screenshot 2026-05-01 134630" src="https://github.com/user-attachments/assets/677790b1-29dd-4ca5-a40c-3177a4c6313b" />

#### Key Metrics (KPIs)
  ────── 
 - Average Petrol Price: $2.28
 - Average Diesel Price: $2.13
 - Maximum Brent Crude Price: $130

These KPIs show that petrol prices are slightly higher than diesel globally, reflecting differences in refining costs, taxation, and distribution. Brent crude oil demonstrates significantly higher volatility compared to retail fuel prices, indicating its role as a global benchmark for energy markets.


#### Fuel Price Trends Over Time
────── 

<img width="512" height="553" alt="Screenshot 2026-05-01 141220" src="https://github.com/user-attachments/assets/01c3614d-eb29-40db-a255-2793b50ced51" />
<br>
The time-series analysis shows that petrol and diesel prices follow closely aligned patterns across the study period.

In 2020, fuel prices declined significantly due to reduced global demand
In 2022, prices increased sharply due to supply disruptions and geopolitical tensions
In 2023, prices declined slightly but remained above pre-2020 levels

Overall, petrol and diesel trends demonstrate strong correlation, indicating shared global market drivers.

#### Brent Crude Oil Trends
────── 

Brent crude oil prices show higher volatility compared to retail fuel prices.

A sharp decline occurred in 2020
A strong recovery and peak occurred in 2022
A moderate decline followed in 2023

This confirms that global crude oil price movements are a major driver of retail fuel price fluctuations worldwide.



#### Regional Fuel Consumption Analysis 
  ────── 
  
<img width="605" height="715" alt="Screenshot 2026-05-01 141503" src="https://github.com/user-attachments/assets/e688c27c-9a99-4744-86bb-879f6fda63d4" />
<br>

Regional analysis highlights significant differences in fuel consumption patterns across the world.

Consumption Patterns
Europe records the highest consumption of both petrol and diesel, driven by strong industrial activity and transportation demand
North America shows the lowest fuel usage, suggesting more efficient consumption patterns or alternative energy adoption
Asia and Africa show moderate and balanced consumption levels, with similar usage of petrol and diesel
 Petrol vs Diesel Usage

Across all regions, petrol and diesel consumption trends remain closely aligned.

Europe shows slightly higher petrol usage compared to diesel
North America maintains low and balanced usage for both fuel types
Asia and Africa show nearly equal consumption patterns

This indicates that both fuel types play an equally important role in global transportation systems.

#### Brent Crude Sensitivity by Region
────── 
Europe shows the highest sensitivity to Brent crude price fluctuations
Asia and Africa show moderate sensitivity
Oceania shows the lowest impact due to smaller market scale and lower consumption

This highlights unequal regional exposure to global oil price volatility.

#### <ins> Key Insight </ins>

The analysis highlights a strong dependency between retail fuel prices and Brent crude oil prices. Additionally, regional consumption patterns show that developed economies are more exposed to fuel price fluctuations, while developing regions exhibit more balanced and moderate usage patterns.

