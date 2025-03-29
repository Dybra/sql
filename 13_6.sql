WITH customer_orders AS (
SELECT
  	pharma_orders.customer_id,
  	price*count as money
FROM pharma_orders
JOIN customers as cu_t USING(customer_id)
) 
SELECT
	customer_id,
    sum(money) as sum_cust
FROM customer_orders
GROUP by customer_id
ORDER by sum(money) DESC
LIMIT 10
--6. Запрос "Лучшие клиенты"
--    a. Соединить таблицы заказов и клиентов (JOIN)
--    b. Посчитать тотал сумму заказов для каждого клиента
--    c. Проранжировать клиентов по убыванию суммы заказа (row_number)
--    d. Оставить топ-10 клиентов