# Sales Trend Analysis Using SQL Aggregations

## Objective

Analyze monthly revenue and order volume using SQL aggregation functions.

## Dataset

Online Sales Data Dataset

Columns Used:
- Transaction ID
- Date
- Total Revenue

## Tools Used

- MySQL Workbench
- SQL
- GitHub

## SQL Concepts Used

- YEAR()
- MONTH()
- SUM()
- COUNT(DISTINCT)
- GROUP BY
- ORDER BY

## Main Query

```sql
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
```

## Output

The query provides:

- Monthly Revenue
- Monthly Order Volume
- Sales Trend Analysis

## Learning Outcomes

- Data aggregation using SQL
- Monthly trend analysis
- Revenue calculation
- Order volume analysis
- Data grouping and sorting

## Author

Vivek Vardhan
