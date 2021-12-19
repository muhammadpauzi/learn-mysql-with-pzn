SELECT AVG(price) FROM products;

SELECT * FROM products WHERE price > 16482.7586;

-- WITH SUBQUERY (WHERE CLAUSE)
SELECT * FROM products WHERE price > (SELECT AVG(price) FROM products);

-- WITH SUBQUERY (FROM)
UPDATE products
SET price = 100000
WHERE id = 'X0003';

SELECT MAX(CP.price) FROM (SELECT price FROM categories JOIN products ON (products.id_category = categories.id)) AS CP;




