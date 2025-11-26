START TRANSACTION;

INSERT INTO `Order` (`client_id`, `status`) 
VALUES (1, 'pending');

SET @new_order_id = LAST_INSERT_ID();

INSERT INTO `OrderItem` (`order_id`, `product_id`, `quantity`, `price`)
VALUES (@new_order_id, 2, 2, 800.00);

UPDATE `Product`
SET `quantity` = `quantity` - 2
WHERE `id` = 2;

COMMIT;
