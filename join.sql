-- JOIN TO ONE TABLE
SELECT * FROM wishlist
    JOIN products ON (wishlist.id_product = products.id);

SELECT products.id, products.name, wishlist.description FROM wishlist
    JOIN products ON (wishlist.id_product = products.id);

-- WITH ALIAS/AS
SELECT 
    w.id AS 'Wishlist ID', 
    p.id AS 'Product ID',
    p.name AS 'Product Name',
    w.description AS 'Wishlist Description'
FROM wishlist as w
    JOIN products AS p ON (w.id_product = p.id);

ALTER TABLE wishlist
    ADD COLUMN id_customer INT NOT NULL;

ALTER TABLE wishlist
    MODIFY COLUMN id_customer INT;

TRUNCATE wishlist;

ALTER TABLE wishlist
ADD CONSTRAINT fk_wishlist_customer
FOREIGN KEY (id_customer) REFERENCES customers (id);

UPDATE wishlist
SET id_customer = 1
WHERE id = 1;

-- JOIN TO MULTIPLE TABLES
SELECT customers.email, products.id, products.name, wishlist.description
FROM wishlist
JOIN products ON (products.id = wishlist.id_product)
JOIN customers ON (customers.id = wishlist.id_customer);


-- INNER JOIN (DEFAULT)
INSERT INTO categories(id, name) VALUES ('C0004', 'Oleh-Oleh'), ('C0005', 'Gadget');

INSERT INTO products (id, name, price, quantity)
VALUES  ('X0001', 'X Satu', 25000, 100),
        ('X0002', 'X Dua', 10000, 100),
        ('X0003', 'X Tiga', 10000, 100);

SELECT * FROM categories
INNER JOIN products ON (products.id_category = categories.id);

-- LEFT JOIN
SELECT * FROM categories
LEFT JOIN products ON (products.id_category = categories.id);

-- RIGHT JOIN
SELECT * FROM categories
RIGHT JOIN products ON (products.id_category = categories.id);

-- CROSS JOIN
SELECT * FROM categories
CROSS JOIN products;

CREATE TABLE numbers(
    id  INT NOT NULL,
    PRIMARY KEY (id)
) ENGINE = INNODB;

INSERT INTO numbers(id) VALUES (1), (2), (3), (4), (5);

-- JUST FOR EXAMPLE
SELECT numbers1.id, numbers2.id, (numbers2 * numbers2)
FROM numbers AS numbers1
    CROSS JOIN numbers AS numbers2
ORDER BY numbers1.id, numbers2.id;
