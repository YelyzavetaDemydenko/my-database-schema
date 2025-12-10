SELECT 
    JSON_OBJECT(
        'client_name', c.name,
        'client_email', c.email,
        'orders_history', CONCAT('[', 
            GROUP_CONCAT(
                JSON_OBJECT(
                    'order_id', o.id,
                    'status', o.status,
                    'order_date', o.order_date,
                    'total', o.total
                )
            ), 
        ']')
    ) AS client_full_data
FROM 
    Client AS c
JOIN 
    `Order` AS o ON c.id = o.client_id
WHERE 
    c.id = 1
GROUP BY 
    c.id;
