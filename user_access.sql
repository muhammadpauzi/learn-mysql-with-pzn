-- USERS
CREATE USER 'pauzi'@'localhost';
CREATE USER 'muhammad'@'127.0.0.1';
CREATE USER 'pauzi'@'%';

DROP USER 'pauzi'@'localhost';
DROP USER 'muhammad'@'127.0.0.1';
DROP USER 'pauzi'@'%';

-- GRANTS
GRANT SELECT ON belajar_mysql.* TO 'pauzi'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON belajar_mysql.* TO 'muhammad'@'localhost';

SHOW GRANTS FOR 'pauzi'@'localhost';
SHOW GRANTS FOR 'muhammad'@'localhost';

-- DELETE GRANTS
REVOKE SELECT ON belajar_mysql.* FROM 'pauzi'@'localhost';
REVOKE SELECT, INSERT, UPDATE, DELETE ON belajar_mysql.* FROM 'muhammad'@'localhost';

-- ADD/EDIT PASSWORD
SET PASSWORD FOR 'pauzi'@'localhost' = '123';
SET PASSWORD FOR 'muhammad'@'localhost' = '';

SELECT * FROM products;

INSERT INTO products(name, price, quantity, id_category)
VALUES ('Product X', 12000, 80, 'C0001');
