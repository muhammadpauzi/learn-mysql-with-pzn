CREATE TABLE customers(
    id      INT NOT NULL AUTO_INCREMENT,
    email   VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    PRIMARY KEY (id),
    UNIQUE KEY email_unique (email)
) ENGINE = InnoDB;

ALTER TABLE customers
    ADD CONSTRAINT email_unique UNIQUE (email);

-- DROP CONSTRAINT (I DON'T IF THIS ERROR)
ALTER TABLE customers
    DROP CONSTRAINT email_unique;

-- DROP CONSTRAINT
ALTER TABLE customers
    DROP INDEX email_unique;

-- TEST
INSERT INTO customers(email, first_name)
VALUES ('pauzi@gmail.com', 'Muhammad');

-- (I DON'T KNOW IF IT CAN'T)
ALTER TABLE products
    ADD CONSTRAINT price_check CHECK ( price >= 1000 );

ALTER TABLE products
    DROP CHECK price_check;

-- TEST
INSERT INTO products(id, name, category, price, quantity)
VALUES ('P0025', 'Product 5', 'Lain-Lain', 500, 100);

CREATE TABLE products(
    id          VARCHAR(10) NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantitiy   INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT price_check CHECK ( price >= 1000)
) ENGINE = InnoDB;
