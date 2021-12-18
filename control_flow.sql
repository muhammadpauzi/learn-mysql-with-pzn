-- CASE/SWITCH CASE
SELECT id,
    CASE category
        WHEN 'Makanan' THEN 'Enak'
        WHEN 'Minuman' THEN 'Segar'
        ELSE 'Apa itu?'
        END AS category
FROM products;

-- IF (condition, if true, if false)
SELECT id, price,
   IF(price <= 20000, 'Murah', IF(price <= 25000, 'Mahal', 'Mahal Banget!')) AS 'Mahal?'
FROM products;

-- IF NULL
SELECT id, IFNULL(description, 'KOSONG') FROM products;