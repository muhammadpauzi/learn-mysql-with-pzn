UPDATE products
SET category = 'Makanan';

INSERT INTO products (id, name, category, price, quantity)
VALUES  ('P0018', 'Kopi', "Minuman", 5000, 30),
        ('P0019', 'Teh Hijau', "Minuman", 6000, 25),
        ('P0020', 'Teh Susu', "Minuman", 8000, 40),
        ('P0021', 'Teh Biasa', "Minuman", 2000, 12),
        ('P0022', 'Jus Jeruk', "Minuman", 4000, 50),
        ('P0023', 'Jus Alpukat', "Minuman", 6000, 70),
        ('P0024', 'Bandrek', "Minuman", 9000, 120);

-- COMPARISON OPERATORS (=, <>/!=, <, <=, >, >=)
SELECT * FROM products WHERE quantity > 100;
SELECT * FROM products WHERE quantity >= 100;
SELECT * FROM products WHERE category <> "Makanan";
SELECT * FROM products WHERE category != "Minuman";

-- (AND, OR) OPERATORS
-- AND
SELECT * FROM products WHERE quantity >= 100 AND price >= 20000;
SELECT * FROM products WHERE quantity > 100 AND price > 20000;
SELECT * FROM products WHERE category = "Makanan" AND price < 20000;
SELECT * FROM products WHERE category = "Makanan" AND price < 20000;
-- OR
SELECT * FROM products WHERE quantity >= 100 OR price >= 20000;
SELECT * FROM products WHERE quantity > 100 OR price > 20000;
SELECT * FROM products WHERE category = "Makanan" OR price < 20000;
SELECT * FROM products WHERE category = "Makanan" OR price < 20000;

-- PRIORITAS ()
SELECT * FROM products WHERE (category = "Makanan" OR quantity > 100) AND price < 20000;

-- LIKE OPERATOR ('b%', '%a', '%pauzi%', NOT LIKE)
SELECT * FROM products WHERE name LIKE '%mie%';
SELECT * FROM products WHERE name LIKE '%bakso%';

-- NULL OPERATOR
SELECT * FROM products WHERE description IS NULL;
SELECT * FROM products WHERE description IS NOT NULL;

-- BETWEEN OPERATORS
SELECT * FROM products WHERE price BETWEEN 10000 AND 20000;
SELECT * FROM products WHERE price NOT BETWEEN 10000 AND 20000;

-- IN OPERATOR
SELECT * FROM products WHERE category IN ("Makanan", "Minuman");
SELECT * FROM products WHERE category NOT IN ("Makanan", "Minuman");

-- ORDER BY CLAUSE
SELECT * FROM products ORDER BY price DESC, id ASC;
SELECT * FROM products ORDER BY price DESC;
SELECT * FROM products ORDER BY price ASC;

-- LIMIT CLAUSE
SELECT * FROM products LIMIT 10;

-- SKIP/OFFSET LIMIT CLAUSE (SKIP/OFFSET, LIMIT)
SELECT * FROM products ORDER BY id LIMIT 5, 10;



