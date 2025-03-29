WITH gorzdrav AS (
  SELECT
  	customer_id,
  	COUNT(order_id) AS cnt_order
  FROM pharma_orders
  JOIN customers USING(customer_id)
  WHERE LOWER(pharmacy_name) = 'горздрав'
  GROUP by customer_id
  ORDER by cnt_order DESC
  LIMIT 10
),
zdravsiti AS (
  SELECT
  	customer_id,
  	COUNT(order_id) AS cnt_order
  FROM pharma_orders
  JOIN customers USING(customer_id)
  WHERE LOWER(pharmacy_name) = 'здравсити'
  GROUP by customer_id
  ORDER by cnt_order DESC
  LIMIT 10
)
SELECT *
FROM gorzdrav
UNION
SELECT *
FROM zdravsiti
--8. Запрос "Самые частые клиенты аптек Горздрав и Здравсити"
--    a Сделать две временные таблицы: для аптеки горздрав и здравсити (WITH)
--    b. Внутри каждой соединить таблицы заказов и клиентов (JOIN)
--    c. Внутри каждой привести данные в формат "клиент - кол-во заказов в аптеке"
--    d. Внутри каждой оставить топ 10 клиентов каждой аптеки
--    e. Объединить клиентов с помощью UNION