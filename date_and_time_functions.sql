-- https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html

SELECT id, created_at,
    EXTRACT(YEAR FROM created_at) as Year,
    EXTRACT(MONTH FROM created_at) as Month,
    EXTRACT(DAY FROM created_at) as Day,
    EXTRACT(HOUR FROM created_at) as Hour
FROM products;

SELECT id, created_at,
    YEAR(created_at) as Year,
    MONTH(created_at) as Month,
    DAY(created_at) as Day,
    HOUR(created_at) as Hour
FROM products;