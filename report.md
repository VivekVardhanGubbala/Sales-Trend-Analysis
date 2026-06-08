# TASK 6: Sales Trend Analysis Using Aggregations

## Objective

Analyze monthly revenue and order volume using SQL aggregation functions.

## Dataset

Online Sales Data Dataset

## Tools Used

* MySQL Workbench
* SQL
* GitHub

## Methodology

### Revenue Calculation

```sql
SUM(`Total Revenue`)
```

### Order Volume Calculation

```sql
COUNT(DISTINCT `Transaction ID`)
```

### Month Extraction

```sql
MONTH(STR_TO_DATE(`Date`, '%m/%d/%Y'))
```

### Year Extraction

```sql
YEAR(STR_TO_DATE(`Date`, '%m/%d/%Y'))
```

### Grouping

```sql
GROUP BY YEAR(...), MONTH(...)
```

### Sorting

```sql
ORDER BY year, month
```

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

## Results

The query generated monthly revenue and order volume, helping identify sales trends over time.

## Conclusion

SQL aggregation functions such as SUM(), COUNT(), GROUP BY, and ORDER BY are effective for analyzing business performance and identifying monthly sales trends.
