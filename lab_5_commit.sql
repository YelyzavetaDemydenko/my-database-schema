SELECT * FROM `Product` WHERE `id` = 11;

START TRANSACTION;

UPDATE `Product`
SET `price` = 420.00 
WHERE `id` = 11;

COMMIT;

SELECT * FROM `Product` WHERE `id` = 11;