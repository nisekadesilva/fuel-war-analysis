CREATE TABLE fuel_prices (
    date DATE,
    country TEXT,
    region TEXT,
    income_level TEXT,
    price_control TEXT,
    petrol_price FLOAT,
    diesel_price FLOAT,
    lpg_price FLOAT,
    brent_price FLOAT,
    tax_percent FLOAT
);

CREATE TABLE conflicts (
    conflict_id INT,
    country TEXT,
    start_date DATE,
    end_date DATE
);