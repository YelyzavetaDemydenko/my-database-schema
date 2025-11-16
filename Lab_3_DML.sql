INSERT INTO Client (name, email, password_hash)
VALUES ('Viktor Pavlenko', 'viktor.pavlenko@gmail.com', 'hash_xyz_9');

INSERT INTO Product 
(category_id, sku, name, description, price, quantity, is_active, material, brand)
VALUES
(1, 'BP-002', 'Pentel Fude Brush Pen', 
'Soft-tip brush pen perfect for modern calligraphy.', 
59.50, 80, true, 'Synthetic bristles', 'Pentel');

UPDATE Product
SET price = 50
WHERE name = 'Pentel Fude Brush Pen';

DELETE FROM OrderItem
WHERE `order_id` = 1 AND `product_id` = 6;

