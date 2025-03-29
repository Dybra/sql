WITH customer_pharm AS (
SELECT
  pharmacy_name,
  pharma_orders.customer_id
FROM pharma_orders
JOIN customers as cu_t USING(customer_id)
) 
SELECT
	pharmacy_name,
	COUNT(DISTINCT customer_id) as cnt_cus
FROM customer_pharm
GROUP by pharmacy_name
ORDER by COUNT(DISTINCT customer_id) DESC
--5. Запрос "Количество клиентов в аптеках"
--    a. Соединить таблицы заказов и клиентов (JOIN)
--    b. Посчитать кол-во уникальных клиентов на каждую аптеку (DISTINCT)
--    c. Отсортировать аптеки по убыванию кол-ва клиентов (ORDER BY)