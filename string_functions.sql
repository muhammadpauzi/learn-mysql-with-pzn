-- https://dev.mysql.com/doc/refman/8.0/en/string-functions.html 

SELECT id, LOWER(name) FROM products;

SELECT id, 
    LOWER(name) AS Name, 
    UPPER(name) AS Name, 
    LENGTH(name) AS "Length of Name"
FROM products;