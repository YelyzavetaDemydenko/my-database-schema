-- 1. Створюємо користувача 'app_backend'
CREATE USER 'app_backend'@'localhost' IDENTIFIED BY 'pass_secure_456';

-- 2. Дозволяємо ТІЛЬКИ ЧИТАТИ товари, категорії та клієнтів
GRANT SELECT ON Product TO 'app_backend'@'localhost';
GRANT SELECT ON Category TO 'app_backend'@'localhost';
GRANT SELECT ON Client TO 'app_backend'@'localhost';

-- 3. Дозволяємо ЧИТАТИ ТА ДОДАВАТИ замовлення
GRANT SELECT, INSERT ON `Order` TO 'app_backend'@'localhost';
GRANT SELECT, INSERT ON OrderItem TO 'app_backend'@'localhost';

-- 4. Оновлюємо привілеї
FLUSH PRIVILEGES;
