SELECT *
FROM `Order`
WHERE status IN ('in progress', 'new');

SELECT *
FROM Client
WHERE email LIKE '%@gmail.com';

SELECT *
FROM Product
ORDER BY price DESC;