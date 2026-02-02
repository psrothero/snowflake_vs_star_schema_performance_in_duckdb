-- Total sales by zipcode (snowflake schema)
SELECT
    l.zipcode,
    SUM(a.sales) AS total_sales
FROM snow.workstation_sales a
JOIN snow.companies c
    ON a.company_id = c.company_id
JOIN snow.locations l
    ON c.location_id = l.location_id
GROUP BY l.zipcode
ORDER BY total_sales DESC;
