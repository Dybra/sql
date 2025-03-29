SELECT 
	pharmacy_name,
    sum(price*count) as val_prod
FROM pharma_orders
GROUP by pharmacy_name
ORDER by sum(price*count) DESC
LIMIT 3

--1. Запрос "Топ-3 аптеки"
--   a. Вывести топ 3 аптеки по объему продаж (GROUP BY, LIMIT) 