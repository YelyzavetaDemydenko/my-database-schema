EXPLAIN SELECT * FROM `Product` WHERE `price` = 400.00;

CREATE INDEX `idx_products_price` ON `Product` (`price`);