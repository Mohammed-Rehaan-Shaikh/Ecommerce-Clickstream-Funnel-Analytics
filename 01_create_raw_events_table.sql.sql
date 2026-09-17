CREATE DATABASE ecommerce_analytics;

CREATE TABLE events_raw (
    event_time TIMESTAMPTZ,
    event_type TEXT,
    product_id BIGINT,
    category_id BIGINT,
    category_code TEXT,
    brand TEXT,
    price NUMERIC,
    user_id BIGINT,
    user_session TEXT
);

copy events_raw
FROM 'C:\IDE\Projects\Ecommerce-Clickstream-Funnel-Analytics\events.csv'
WITH (
    FORMAT CSV,
    HEADER True,
    DELIMITER ',',
    ENCODING 'UTF8'
)
