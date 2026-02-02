-- Total sales by zipcode (star schema)
SELECT
    c.zipcode,
    SUM(a.sales) AS total_sales
FROM star.workstation_sales a
JOIN star.companies c
    ON a.company_id = c.company_id
GROUP BY c.zipcode
ORDER BY total_sales DESC;
