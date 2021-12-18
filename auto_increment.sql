CREATE TABLE admin(
    id      INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

-- INSERT TO TABLE WITH AUTO INREMENT
INSERT INTO admin(first_name, last_name)
VALUES  ('Muhammad', 'Pauzi'),
        ('Muhammad', 'Sukri'),
        ('Muhammad', 'Ilham');

DELETE FROM admin WHERE id = 3;

INSERT INTO admin(first_name, last_name)
VALUES  ('Muhammad', 'Pauzi');

UPDATE admin
SET last_name = 'Ilham'
WHERE id = 4;

SELECT LAST_INSERT_ID();