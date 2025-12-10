-- Формуємо JSON-об'єкт з даними клієнта, у якого id = 1
SELECT 
    JSON_OBJECT(
        'client_id', id,               -- ключ 'client_id' → поле id
        'name', name,                  -- ключ 'name' → поле name
        'email', email,                -- ключ 'email' → поле email
        'registration_date', registration_date  -- ключ → дата реєстрації
    ) AS client_json_data
FROM 
    Client
WHERE 
    id = 1;
