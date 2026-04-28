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

Then I created two tables,

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

Instead of directly joining both datasets, I created a new feature called `war_active`.

This is based on the start date of the  
:contentReference[oaicite:0]{index=0}  

- If date is before 2022 → 0  
- If date is after 2022 → 1  

Then I created a new table:

- `fuel_with_war`

This table includes all fuel data + war indicator.



