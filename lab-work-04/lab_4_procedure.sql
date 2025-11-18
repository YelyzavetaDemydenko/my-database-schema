-- Змінюємо стандартний роздільник ";" на "//"
DELIMITER //

-- 1. Створення процедури "Додати Новий Товар"
CREATE PROCEDURE `sp_AddNewProduct`(
    IN p_name VARCHAR(255),
    IN p_description TEXT,
    IN p_price DECIMAL(10,2),
    IN p_quantity INT,
    IN p_category_id INT,
    IN p_sku VARCHAR(100),
    IN p_material VARCHAR(100),
    IN p_brand VARCHAR(100)
)
BEGIN
    INSERT INTO `Product`
        (`name`, `description`, `price`, `quantity`, `category_id`, `sku`, `material`, `brand`)
    VALUES
        (p_name, p_description, p_price, p_quantity, p_category_id, p_sku, p_material, p_brand);
END //

-- Повертаємо стандартний роздільник ";"
DELIMITER ;
