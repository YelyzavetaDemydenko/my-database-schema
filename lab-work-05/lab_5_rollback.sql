SELECT * FROM `Product` WHERE `id` = 6;

START TRANSACTION;

UPDATE `Product`
SET `price` = 999.00 
WHERE `id` = 6;

SELECT * FROM `Product` WHERE `id` = 6;

ROLLBACK;

SELECT * FROM `Product` WHERE `id` = 6;
