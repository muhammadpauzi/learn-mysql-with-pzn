SELECT * FROM products;

SELECT id, name, price FROM products;
SELECT `id`, `name`, `price` FROM products;

-- WHERE CLAUSE (case-insensitive)
SELECT * FROM products
WHERE quantity = 100;

SELECT * FROM products
WHERE price = 15000;

SELECT * FROM products
WHERE id = 'P0001';

SELECT * FROM products
WHERE name = 'mie ayam bakso';

-- DISTINCT
SELECT DISTINCT category FROM products;