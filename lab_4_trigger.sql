-- Змінюємо стандартний роздільник ";" на "//"
DELIMITER //

-- Створення тригера, який спрацьовує
-- BEFORE UPDATE на таблиці Product
CREATE TRIGGER `trg_Product_BeforeUpdate`
BEFORE UPDATE ON `Product`
FOR EACH ROW
BEGIN
    -- Автоматично встановлюємо час останнього оновлення
    SET NEW.updated_at = NOW();
END //
-- Закінчили тригер новим роздільником "//"

-- Повертаємо стандартний роздільник ";"
DELIMITER ;