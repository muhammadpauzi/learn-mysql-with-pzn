-- CREATE wallet TABLE
CREATE TABLE wallet(
    id INT NOT NULL AUTO_INCREMENT,
    id_customer INT NOT NULL,
    balance INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    UNIQUE KEY id_customer_unique (id_customer),
    FOREIGN KEY fk_wallet_customer (id_customer) REFERENCES customers (id)
) ENGINE = INNODB;

INSERT INTO wallet(id_customer) VALUES (1);

-- ONE TO ONE JOIN
SELECT customers.email, wallet.balance  
FROM wallet JOIN customers ON (wallet.id_customer = customers.id);