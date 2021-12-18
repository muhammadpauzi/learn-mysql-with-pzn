-- https://dev.mysql.com/doc/refman/8.0/en/aggregate-functions.html

SELECT COUNT(id) AS 'Total Data' FROM products;
-- ERROR
SELECT COUNT(id), name AS 'Total Data' FROM products;

SELECT MAX(price) AS 'Product Termahal' FROM products;

SELECT MIN(price) AS 'Product Termahal' FROM products;

SELECT AVG(price) AS 'Rata-Rata Harga Product' FROM products;

SELECT SUM(price) AS 'Total Harga Product' FROM products;