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