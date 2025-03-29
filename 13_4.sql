SELECT 
	pharmacy_name,
    report_date,
    price*count as prod,
    SUM(price*count) OVER (PARTITION BY pharmacy_name ORDER BY report_date) AS aggr_sum
FROM
    pharma_orders
ORDER BY
    pharmacy_name
    
--4. Запрос "Накопленная сумма продаж по каждой аптеке" (OVER)
