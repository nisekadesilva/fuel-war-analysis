# <img src="https://cdn.jsdelivr.net/npm/lucide-static/icons/fuel.svg" width="20" style="filter: invert(55%) sepia(98%) saturate(600%) hue-rotate(350deg) brightness(95%)contrast(95%);"/> Fuel Price vs War Impact Analysis (2020–2026)

 ### <img src="https://cdn.simpleicons.org/target/F97316" width="20"/> |  <ins> Project Overview </ins>
 
This project analyzes global fuel price trends and examines the impact of geopolitical conflict on fuel markets.  
The study focuses on how fuel prices (petrol, diesel, LPG) change before and after the 2022 global conflict period.

The dataset includes weekly fuel prices across 84 countries along with economic and policy indicators.

### <img src="https://cdn.simpleicons.org/databricks/F97316" width="20"/> | <ins> Data Collection </ins>

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

### <img src="https://cdn.simpleicons.org/openrefine/F97316" width="20"/> | <ins> Data Cleaning </ins>

Before analysis, I checked and cleaned the data,

- Made sure date format is correct  
- Checked missing values  
- Verified numeric columns like fuel prices  
- Ensured all columns are properly structured  

  #### <ins> Combining the Data </ins>

Instead of directly joining both datasets, I engineered a feature (war_active) to represent the impact of the 2022 conflict period.


- If date is before 2022 → 0  
- If date is after 2022 → 1  

Finally, I created a new table,

- `fuel_with_war`

This table includes all fuel data + war indicator.

### <img src="https://cdn.simpleicons.org/googleanalytics/F97316" width="20"/>  | <ins> Analysis </ins>

This approach allowed me to transform raw data into meaningful insights using SQL-based aggregation and filtering.
Using SQL, I analyzed,

- Fuel prices before vs after war  
- Price trends over time  
- Differences between regions  
- Impact based on income levels  
- Effect of government price controls  



### <ins> Preparing for Visualization </ins>

Finally, I exported the cleaned dataset (`fuel_with_war`) as a CSV file.

This was then used in Power BI to create dashboards and visualize insights.

---
<br>

## <ins> PAGE 1 | Global Fuel Market Overview </ins>

This page provides a high-level analysis of global fuel pricing trends using key performance indicators (KPIs) and time-based visualizations. It helps understand overall market behavior before analyzing the impact of geopolitical events. <br>

<img width="1156" height="793" alt="Screenshot 2026-05-01 231107" src="https://github.com/user-attachments/assets/f50092dc-9a3b-4265-9440-27da6d7fd4e8" />


#### Key Metrics (KPIs)
  ────── 
 - Average Petrol Price: $2.28
 - Average Diesel Price: $2.13
 - Maximum Brent Crude Price: $130

These KPIs show that petrol prices are slightly higher than diesel globally, reflecting differences in refining costs, taxation, and distribution. Brent crude oil demonstrates significantly higher volatility compared to retail fuel prices, indicating its role as a global benchmark for energy markets.


#### Fuel Price Trends Over Time
────── 

<img width="451" height="465" alt="Screenshot 2026-05-01 231119" src="https://github.com/user-attachments/assets/b45e1aa6-07f6-42f5-aa92-55351d671ef0" />

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



#### Regional Fuel Price Analysis 
  ────── 

  <img width="570" height="628" alt="Screenshot 2026-05-01 231128" src="https://github.com/user-attachments/assets/1b554876-06dc-4274-87f4-74430ee8a294" />


<br>

Regional analysis highlights significant differences in fuel price patterns across the world.

- Price Patterns -

Europe records the highest price of both petrol and diesel, driven by strong industrial activity and transportation demand
North America shows the lowest fuel price, suggesting more efficient price patterns or alternative energy adoption
Asia and Africa show moderate and balanced price levels, with similar price of petrol and diesel
 Petrol vs Diesel price

Across all regions, petrol and diesel price trends remain closely aligned.

Europe shows slightly higher petrol price compared to diesel
North America maintains low and balanced price for both fuel types
Asia and Africa show nearly equal price patterns

This indicates that both fuel types play an equally important role in global transportation systems.

#### Brent Crude Sensitivity by Region
────── 

Europe shows the highest sensitivity to Brent crude price fluctuations
Asia and Africa show moderate sensitivity
Oceania shows the lowest impact due to smaller market scale and lower consumption

This highlights unequal regional exposure to global oil price volatility.

#### <ins> Key Insight </ins>

The analysis highlights a strong dependency between retail fuel prices and Brent crude oil prices. Additionally, regional consumption patterns show that developed economies are more exposed to fuel price fluctuations, while developing regions exhibit more balanced and moderate usage patterns.

<br>

## <ins> PAGE 2 | War Impact Analysis </ins>

This page focuses on evaluating the impact of the 2022 geopolitical conflict on global fuel prices. Using comparative analysis and time-based trends, the goal is to identify how fuel markets responded before and after the conflict period.

<img width="1150" height="794" alt="Screenshot 2026-05-01 225435" src="https://github.com/user-attachments/assets/8577fc79-aedd-4325-8c1d-e408f75a48f8" />


#### Key Metrics (KPIs)
────── 

- Average Petrol Price (After War): $2.47
- Average Diesel Price (After War): $2.31
- Petrol Price Change: +28.16%
- Diesel Price Change: +28.15%

These KPIs clearly indicate a significant increase in fuel prices following the 2022 conflict. Both petrol and diesel exhibit nearly identical growth rates, suggesting a uniform impact across fuel types.

#### Before vs After Comparison
────── 

<img width="976" height="288" alt="Screenshot 2026-05-01 225233" src="https://github.com/user-attachments/assets/447aa600-b60b-4a59-9d3d-81f66191a4ee" /><br>


A comparative analysis was conducted using a derived feature (war_active) to distinguish between pre-war and post-war periods.

- Before War (war_active = 0): Lower average fuel prices
- After War (war_active = 1): Higher average fuel prices

This comparison highlights a clear upward shift in fuel prices after the onset of the conflict.

#### Fuel Price Trend with War Context
────── 
<img width="1103" height="218" alt="Screenshot 2026-05-01 225915" src="https://github.com/user-attachments/assets/95314442-ede9-490b-8b96-2521985eb69e" />

<br>

Time-series analysis provides additional context to the observed price changes.

- Fuel prices begin to rise noticeably around Q2 2022 (April)
- A peak period follows during mid-to-late 2022
- Prices show a decline around early 2023 (January), indicating partial market stabilization

Although the increase is gradual rather than a sharp spike, the trend confirms a sustained rise in prices following the conflict period.

#### Trend Interpretation
────── 

Unlike sudden spikes, global fuel markets often respond gradually due to,

Supply chain adjustments
Policy interventions (subsidies, price controls)
Regional variations in fuel demand

As a result, the impact of the war is better observed through average comparisons and smoothed trends rather than sharp point increases.

#### <ins> Key Insights </ins>


The analysis demonstrates that global fuel prices increased by approximately 28% after the 2022 conflict, confirming a strong relationship between geopolitical events and energy market behavior.

Both petrol and diesel prices respond consistently, indicating shared dependency on global crude oil supply conditions.

<br>

## <ins> PAGE 3 | Regional & Economic Analysis </ins>

This page explores the underlying economic and policy factors that influence global fuel prices. It focuses on how income levels, government subsidies, and country-level differences impact petrol and diesel pricing.

<img width="1160" height="788" alt="Screenshot 2026-05-01 224344" src="https://github.com/user-attachments/assets/4e969eb1-d40e-40c9-ab73-ee10c9267c4b" />

<br>

#### Income Level Impact
────── 

<img width="668" height="253" alt="Screenshot 2026-05-01 230649" src="https://github.com/user-attachments/assets/70713460-99c3-4d7e-a5fa-a3aa3642c7fd" />


Fuel prices vary significantly based on a country’s economic status.

High-income countries show higher average fuel prices
 - Petrol: ~$3.55
 - Diesel: ~$3.55 (approx.)

Low-income countries have lower fuel prices
 - Petrol: ~$1.39
 - Diesel: ~$1.28

This indicates that wealthier economies tend to have higher fuel prices, likely due to higher taxes, stronger currencies, and greater purchasing power.

#### Government Subsidy Impact
────── 

<img width="727" height="297" alt="Screenshot 2026-05-01 230940" src="https://github.com/user-attachments/assets/3c31dc4b-c418-40cd-bf81-cbfe53f6d1ff" />

<br>

Government intervention plays a major role in controlling fuel prices.

Low subsidy countries
 - Petrol: ~$3.45
 - Diesel: ~$3.24
   
Very high subsidy countries
 - Petrol: ~$0.15
 - Diesel: ~$0.13

This shows a dramatic reduction in fuel prices where strong subsidies are applied, highlighting how policy decisions can directly influence consumer costs.

#### Country-Level Analysis
────── 

The analysis identifies countries with the highest average fuel prices.

 Highest Petrol Price Countries:
 
 - Hong Kong
 - Norway
 - Netherlands
 - Ireland
 - Denmark

 Highest Diesel Price Countries:
 
 - Hong Kong
 - Ireland
 - Norway
 - Netherlands
 - Denmark

These countries are primarily high-income economies, suggesting a strong relationship between economic status and fuel pricing.

#### Income vs Price Relationship
────── 

Further analysis shows that countries with higher income levels (such as Australia, Ireland, and Denmark) also tend to have higher fuel prices.

This suggests that fuel pricing is influenced not only by supply factors but also by economic capacity and taxation structures.

#### Insight on Price Drivers
────── 

The analysis confirms that fuel prices are influenced by multiple factors:

- Economic strength (income level)
- Government policies (subsidies)
- Regional and country-level dynamics

Among these, government subsidies have the strongest direct impact on reducing fuel prices.

#### <ins> Key Insight </ins>


Fuel prices are not determined solely by global oil markets. Instead, they are significantly shaped by national economic conditions and policy decisions, with subsidies and income levels playing a critical role in price variation across countries.
