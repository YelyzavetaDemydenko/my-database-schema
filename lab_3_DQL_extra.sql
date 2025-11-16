SELECT
  category_id,
  COUNT(*) AS total_products
FROM
  Product
GROUP BY
  category_id;

SELECT
  SUM(price * quantity) AS total_stock_value
FROM
  Product;

SELECT
  AVG(price) AS average_price,
  MIN(price) AS min_price,
  MAX(price) AS max_price
FROM
  Product
WHERE
  category_id = 1;

SELECT
  c.name,
  SUM(oi.quantity * oi.price) AS total_spent
FROM
  Client AS c
JOIN
  `Order` AS o ON c.id = o.client_id
JOIN
  OrderItem AS oi ON o.id = oi.order_id
GROUP BY
  c.id, c.name 
ORDER BY
  total_spent desc
  
SELECT
  c.name,
  SUM(oi.quantity * oi.price) AS total_spent
FROM
  Client AS c
JOIN
  `Order` AS o ON c.id = o.client_id
JOIN
  OrderItem AS oi ON o.id = oi.order_id
GROUP BY
  c.id, c.name
HAVING
  total_spent > 1000 
ORDER BY
  total_spent desc
  
 SELECT
  c.name AS customer_name,
  p.name AS product_name,
  oi.quantity,
  o.status
FROM
  Client AS c
INNER JOIN
  `Order` AS o ON c.id = o.client_id
INNER JOIN
  OrderItem AS oi ON o.id = oi.order_id
INNER JOIN
  Product AS p ON oi.product_id = p.id
WHERE
  o.status = 'completed'
ORDER BY
  c.name
  
SELECT
  c.name AS customer_name,
  o.id AS order_id
FROM
  Client AS c
LEFT JOIN
  `Order` AS o ON c.id = o.client_id
ORDER BY
  c.name
  
SELECT
  p.name
FROM
  Product AS p
WHERE
  p.id NOT IN (
      SELECT DISTINCT oi.product_id
      FROM OrderItem AS oi
  )
  
  
  
  
  
  
SELECT
  c.name AS item_name,
  'Client' AS item_type 
FROM
  Client AS c

UNION

SELECT
  cat.name AS item_name,
  'Category' AS item_type 
FROM
  Category AS cat

ORDER BY
  item_type, item_name