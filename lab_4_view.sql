CREATE VIEW v_Detailed_Orders AS
SELECT
    o.id AS order_id,
    o.status AS order_status,
    o.order_date,
    c.name AS client_name,
    c.email AS client_email,
    p.name AS product_name,
    p.price AS product_price,
    oi.quantity,
    oi.price AS price_at_purchase
FROM
    `Order` AS o
JOIN
    Client AS c ON o.client_id = c.id
JOIN
    OrderItem AS oi ON o.id = oi.order_id
JOIN
    Product AS p ON oi.product_id = p.id
ORDER BY
    o.id DESC;