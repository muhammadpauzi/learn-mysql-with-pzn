-- ARITHMETIC OPERATOR
-- %, MOD
-- *
-- - (MINUS/CHANGE SING OF THE ARGUMENT)
-- /
-- DIV (INTEGER DIVISION)
-- +

SELECT 10 + 10, 10 * 10 AS Hasil;

SELECT id, name, price, price * 1000 AS "Price in K" FROM products;
SELECT id, name, price, price / 1000 AS "Price in K" FROM products;
SELECT id, name, price, price DIV 1000 AS "Price in K" FROM products;