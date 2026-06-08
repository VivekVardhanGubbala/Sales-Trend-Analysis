USE sales_db;

SELECT * FROM `online sales data`;


SELECT *
FROM `online sales data`
LIMIT 10;


SELECT
    YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS year,
    MONTH(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS month,
    SUM(`Total Revenue`) AS total_revenue
FROM `online sales data`
GROUP BY
    YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y')),
    MONTH(STR_TO_DATE(`Date`, '%m/%d/%Y'))
ORDER BY year, month;


SELECT
    YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS year,
    MONTH(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS month,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM `online sales data`
GROUP BY
    YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y')),
    MONTH(STR_TO_DATE(`Date`, '%m/%d/%Y'))
ORDER BY year, month;


SELECT
    YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS year,
    MONTH(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS month,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM `online sales data`
GROUP BY
    YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y')),
    MONTH(STR_TO_DATE(`Date`, '%m/%d/%Y'))
ORDER BY year, month;

SELECT
    SUM(`Total Revenue`) AS overall_revenue
FROM `online sales data`;


SELECT
    COUNT(DISTINCT `Transaction ID`) AS total_orders
FROM `online sales data`;


SELECT
    YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS year,
    MONTH(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS month,
    SUM(`Total Revenue`) AS total_revenue
FROM `online sales data`
GROUP BY
    YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y')),
    MONTH(STR_TO_DATE(`Date`, '%m/%d/%Y'))
ORDER BY total_revenue DESC
LIMIT 1;


SELECT
    YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS year,
    MONTH(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS month,
    SUM(`Total Revenue`) AS total_revenue
FROM `online sales data`
GROUP BY
    YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y')),
    MONTH(STR_TO_DATE(`Date`, '%m/%d/%Y'))
ORDER BY total_revenue ASC
LIMIT 1;


SELECT
    YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS year,
    MONTH(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS month,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM `online sales data`
WHERE YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y')) = 2024
GROUP BY
    YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y')),
    MONTH(STR_TO_DATE(`Date`, '%m/%d/%Y'))
ORDER BY month;



SELECT
    YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS year,
    MONTH(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS month,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM `online sales data`
GROUP BY
    YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y')),
    MONTH(STR_TO_DATE(`Date`, '%m/%d/%Y'))
ORDER BY year, month;