CREATE TABLE products(
    id          VARCHAR(10) NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantitiy   INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

ALTER TABLE products
ADD PRIMARY KEY (id);