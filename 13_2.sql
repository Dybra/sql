SELECT 
	drug,
    sum(price*count) as val_prod
FROM pharma_orders
GROUP by drug
ORDER by sum(price*count) DESC
LIMIT 3

--2. Запрос "Топ-3 лекарства"
--   a.  Вывести топ 3 лекарства по объему продаж