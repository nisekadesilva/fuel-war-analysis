--! Before vs After War !--
SELECT 
    war_active,
    AVG(petrol_price) AS avg_petrol,
    AVG(diesel_price) AS avg_diesel,
    AVG(brent_price) AS avg_oil
FROM fuel_with_war
GROUP BY war_active;

--! Price Trends Over Time !--
SELECT 
    date,
    AVG(petrol_price) AS avg_petrol,
    AVG(diesel_price) AS avg_diesel,
    AVG(brent_price) AS avg_oil

FROM fuel_with_war
GROUP BY date   
ORDER BY date;

--! Regional Price Differences !--
SELECT
    region,
    AVG(petrol_price) AS avg_petrol,
    AVG(diesel_price) AS avg_diesel,
    AVG(brent_price) AS avg_oil
FROM fuel_with_war
GROUP BY region
ORDER BY avg_petrol DESC;

--! Income-Level Impact !--
SELECT
    income_level,
    AVG(petrol_price) AS avg_petrol,
    AVG(diesel_price) AS avg_diesel,
    AVG(brent_price) AS avg_oil
FROM fuel_with_war
GROUP BY income_level
ORDER BY avg_petrol DESC;

--! Price Control Effects !--
SELECT
    price_control,
    AVG(petrol_price) AS avg_petrol,
    AVG(diesel_price) AS avg_diesel,
    AVG(brent_price) AS avg_oil
FROM fuel_with_war
GROUP BY price_control
ORDER BY avg_petrol DESC;

--!Percentage change in fuel prices before and after the war

SELECT 
    (AVG(CASE WHEN war_active=1 THEN petrol_price END) -
     AVG(CASE WHEN war_active=0 THEN petrol_price END))
     / AVG(CASE WHEN war_active=0 THEN petrol_price END) * 100 AS petrol_change_percent
FROM fuel_with_war;

--!Yearly trend of fuel prices
SELECT 
    strftime('%Y', date) AS year,
    AVG(brent_price) AS oil_price
FROM fuel_with_war
GROUP BY year
ORDER BY year;