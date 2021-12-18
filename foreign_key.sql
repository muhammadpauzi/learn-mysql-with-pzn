CREATE TABLE wishlist(
    id      INT NOT NULL AUTO_INCREMENT,
    id_product  VARCHAR(10) NOT NULL, -- RECOMEND SAME TO THE ID OF PRODUCT
    description TEXT,
    PRIMARY KEY (id),
    CONSTRAINT fk_wishlist_product
        FOREIGN KEY (id_product) REFERENCES products (id)
            ON DELETE CASCADE ON UPDATE CASCADE -- THE DEFAULT IS RESTRICT
) ENGINE = INNODB;

-- ADD FOREIGN KEY
ALTER TABLE wishlist
    ADD CONSTRAINT fk_wishlist_product
        FOREIGN KEY (id_product) REFERENCES products (id);

-- DELETE FOREIGN KEY
ALTER TABLE wishlist
    DROP FOREIGN KEY fk_wishlist_product;

-- SUCCESS
INSERT INTO wishlist (id_product, description)
VALUES ('P0001', 'Makanan Kesukaan');

-- ERROR BECAUSE ID 'SALAH' DOES NOT EXISTS IN products
INSERT INTO wishlist (id_product, description)
VALUES ('SALAH', 'Makanan Kesukaan');

-- ERROR BECAUSE THE BEHAVIOR IS RESTRICT
DELETE FROM products
WHERE id = 'P0001';

-- BEHAVIOR FOREIGN KEY :
-- - RESTRICT (DITOLAK)
-- - CASCADE (DIHAPUS, DIUBAH)
-- - NO ACTION (DATA DIBIARKAN)
-- - SET NULL (DIBUAH MENJADI NULL)

-- SET CASCADE
ALTER TABLE wishlist
ADD CONSTRAINT fk_wishlist_product
    FOREIGN KEY (id_product) REFERENCES products (id)
        ON DELETE CASCADE ON UPDATE CASCADE;

-- TEST
INSERT INTO products (id, name, category, price, quantity)
VALUES ('PXXXX', 'Product X', 'Makanan', 10000, 100);

INSERT INTO wishlist (id_product, description)
VALUES ('PXXXX', 'Makanan Kesukaan');

DELETE FROM products
WHERE id = 'PXXXX';
