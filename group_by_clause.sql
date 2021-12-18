SELECT COUNT(id) AS 'Total Product', category FROM products GROUP BY category;

SELECT MAX(price) AS 'Product Termahal', category FROM products GROUP BY category;

SELECT MIN(price) AS 'Product Termahal', category FROM products GROUP BY category;

SELECT AVG(price) AS 'Rata-Rata Harga Product', category FROM products GROUP BY category;

SELECT SUM(quantity) AS 'Total Harga Product', category FROM products GROUP BY category;