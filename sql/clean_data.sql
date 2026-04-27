CREATE TABLE fuel_with_war AS
SELECT *,
CASE 
    WHEN date >= '2022-02-24' THEN 1
    ELSE 0
END AS war_active
FROM fuel_prices;