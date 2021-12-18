-- EXAMPLE
CREATE TABLE products(
    id          VARCHAR(10) NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantitiy   INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FULLTEXT product_search (name, description)
) ENGINE = InnoDB;

-- ADD FULLTEXT INDEX
ALTER TABLE products
ADD FULLTEXT product_search (name, description);

-- DELETE FULLTEXT INDEX
ALTER TABLE products
DROP INDEX product_search;

-- USING LIKE
SELECT * FROM products WHERE name LIKE '%ayam%' OR description LIKE '%ayam%';

-- USING NATURAL LANGUAGE MODE
SELECT * FROM products
WHERE MATCH(name, description)
AGAINST('ayam' IN NATURAL LANGUAGE MODE);

-- USING BOOLEAN MODE
SELECT * FROM products
WHERE MATCH(name, description)
AGAINST('+ayam -bakso' IN BOOLEAN MODE);

-- USING QUERY EXPANSION MODE
SELECT * FROM products
WHERE MATCH(name, description)
AGAINST('bakso' WITH QUERY EXPANSION);