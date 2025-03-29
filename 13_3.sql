SELECT 
	pharmacy_name,
    sum(price*count) as val_prod
FROM pharma_orders
GROUP by pharmacy_name
HAVING sum(price*count) > 1800000
ORDER by sum(price*count) DESC

--3. Запрос "Аптеки от 1.8 млн оборота"
--    a. Вывести аптеки, имеющие более 1.8 млн оборота (HAVING)