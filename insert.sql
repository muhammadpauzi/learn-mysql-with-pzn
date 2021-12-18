CREATE TABLE products(
    id          VARCHAR(10) NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantitiy   INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;

-- RENAME COLUMN
ALTER TABLE products
CHANGE quantitiy quantity INT UNSIGNED NOT NULL DEFAULT 0 AFTER price;

-- INSERT DATA
INSERT INTO products (id, name, price, quantity)
VALUES ('P0001', 'Mie Ayam Original', 15000, 100);

INSERT INTO products (id, name, description, price, quantity)
VALUES ('P0002', 'Mie Ayam Bakso', 'Mie Ayam Original + Bakso', 20000, 100);

INSERT INTO products (id, name, price, quantity)
VALUES  ('P0003', 'Mie Ayam Ceker', 20000, 100),
        ('P0004', 'Mie Ayam Special', 25000, 100),
        ('P0005', 'Mie Ayam Yamin', 15000, 100);

INSERT INTO products (id, name, price, quantity)
VALUES  ('P0006', 'Nasi Goreng Ayam Semur', 22000, 200),
        ('P0007', 'Mie Hun Goreng', 12000, 10),
        ('P0008', 'Sate Ayam Bumbu Kacang', 23000, 50),
        ('P0009', 'Ayam Bakar Kecap Pedas', 35000, 70),
        ('P0010', 'Ayam Goreng Bumbu Manis', 27000, 120),
        ('P0011', 'Nasi Lemak Special', 17000, 65),
        ('P0012', 'Pangsit', 11000, 100),
        ('P0013', 'Sate Lembu', 40000, 150),
        ('P0014', 'Product 1', 25000, 100),
        ('P0015', 'Product 2', 25000, 100),
        ('P0016', 'Product 3', 25000, 100),
        ('P0017', 'Product 4', 25000, 100),
        ('P0018', 'Product 5', 15000, 100);