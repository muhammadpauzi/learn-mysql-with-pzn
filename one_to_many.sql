CREATE TABLE categories(
    id  VARCHAR(10) NOT NULL,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = INNODB;

ALTER TABLE products
    DROP COLUMN category;

ALTER TABLE products
    ADD COLUMN id_category VARCHAR(10) AFTER quantity;

ALTER TABLE products
    ADD CONSTRAINT fk_product_categories
        FOREIGN KEY (id_category) REFERENCES categories (id);

INSERT INTO categories(id, name) VALUES ('C0001', 'Makanan'), ('C0002', 'Minuman'), ('C0003', 'Lain-Lain');

-- UPDATE CATEGORY TO 'MAKANAN'
UPDATE products
SET id_category = 'C0001'
WHERE id NOT IN ('P0018', 'P0019', 'P0020', 'P0021', 'P0022', 'P0023', 'P0024');

-- UPDATE CATEGORY TO 'MINUMAN'
UPDATE products
SET id_category = 'C0002'
WHERE id IN ('P0018', 'P0019', 'P0020', 'P0021', 'P0022', 'P0023', 'P0024');

-- UPDATE CATEGORY TO 'LAIN-LAIN'
UPDATE products
SET id_category = 'C0003'
WHERE id IN ('P0025', 'P0026');

-- ONE TO MANY JOIN
SELECT products.id, products.name, categories.name
FROM products
JOIN categories ON (categories.id = products.id_category);

    