SELECT
    event_type,
    COUNT(*) AS event_count
FROM events_raw
GROUP BY event_type
ORDER BY event_count DESC;

SELECT
    COUNT(*) AS purchase_events,
    SUM(price) AS total_revenue,
    AVG(price) AS average_purchase_value
FROM events_raw
WHERE event_type = 'purchase';

SELECT
    category_code,
    COUNT(*) AS purchase_events,
    SUM(price) AS total_revenue
FROM events_raw
WHERE event_type = 'purchase'
GROUP BY category_code
ORDER BY total_revenue DESC LIMIT 10;