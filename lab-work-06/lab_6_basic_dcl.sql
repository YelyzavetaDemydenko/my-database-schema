-- 1. Створюємо нового користувача 'web_client'
-- Доступ дозволено тільки з локального комп'ютера
CREATE USER 'web_client'@'localhost' IDENTIFIED BY 'secure_pass_123';

-- 2. Надаємо йому право ЛИШЕ ЧИТАТИ дані
-- Наприклад, доступ тільки до таблиці Product
GRANT SELECT ON Product TO 'web_client'@'localhost';


-- 3. Оновлення привілеїв

FLUSH PRIVILEGES;
