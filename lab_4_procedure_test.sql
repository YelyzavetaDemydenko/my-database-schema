CALL sp_AddNewProduct(
    'Sakura Brush Pen PRO',
    'Професійна кисть-ручка для леттерингу, м\'який гнучкий накінечник.',
    89.50,
    150,
    1,
    'SKU-BRUSH-001',     
    'plastic',           
    'Sakura'             
);


SELECT *
FROM `Product`
WHERE `name` = 'Sakura Brush Pen PRO';