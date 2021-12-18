-- ALIAS FOR COLUMN
SELECT  id   AS Kode,
        name AS 'Name of Product',
        category AS Category,
        price AS 'Price (Rp.)',
        quantity AS Quantity
FROM products;

-- ALIAS FOR TABLE
SELECT  p.id   AS Kode,
        p.name AS 'Name of Product',
        p.category AS Category,
        p.price AS 'Price (Rp.)',
        p.quantity AS Quantity
FROM products as p;