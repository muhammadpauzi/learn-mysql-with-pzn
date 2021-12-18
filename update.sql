ALTER TABLE products
ADD COLUMN category ENUM('Makanan', "Minuman", "Lain-Lain")
AFTER name;

-- UPDATE COLUMN
UPDATE products
SET category = "Makanan"
WHERE id = 'P0001';

-- ERROR ENUM
UPDATE products
SET category = "as"
WHERE id = 'P0001';

UPDATE products
SET category = 'Makanan',
    description = 'Mie Ayam Original + Ceker'
WHERE id = 'P0003';

-- UPDATE COLUMN BY CURRENT VALUE
UPDATE products
SET price = price + 5000
WHERE id = 'P0001';