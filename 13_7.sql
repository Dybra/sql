WITH customer_orders AS (
SELECT
  	price*count as money,
  	CONCAT(cu_t.last_name, ' ', cu_t.first_name, ' ', cu_t.second_name ) as fio
FROM pharma_orders
JOIN customers as cu_t USING(customer_id)
) 
SELECT
	fio,
    sum(money) as sum_cust
FROM customer_orders
GROUP by fio
ORDER by sum(money) DESC

--7. Запрос "Накопленная сумма по клиентам"
--    a. Соединить таблицы заказов и клиентов
--    b. Соединить ФИО в одно поле
--    c. Рассчитать накопленную сумму по каждому клиенту