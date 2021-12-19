CREATE TABLE guestbooks(
    id      INT NOT NULL AUTO_INCREMENT,
    email   VARCHAR(100),
    title   VARCHAR(100),
    content TEXT,
    PRIMARY KEY (id)
) ENGINE = INNODB;

INSERT INTO customers(email, first_name, last_name)
VALUES  ('sukri@gmail.com', 'Muhammad', 'Sukri'),
        ('ilham@gmail.com', 'Muhammad', 'Ilham');

INSERT INTO guestbooks(email, title, content)
VALUES  ('guest@gmail.com', 'Hello', 'Hello...'),
        ('guest2@gmail.com', 'Hello', 'Hello...'),
        ('guest3@gmail.com', 'Hello', 'Hello...'),
        ('pauzi@gmail.com', 'Hello', 'Hello...');


-- UNION
SELECT DISTINCT email FROM customers
UNION
SELECT DISTINCT email FROM guestbooks;

-- UNION ALL
SELECT DISTINCT email FROM customers
UNION ALL
SELECT DISTINCT email FROM guestbooks;

SELECT emails.email, COUNT(emails.email) FROM 
(SELECT DISTINCT email FROM customers
UNION ALL
SELECT DISTINCT email FROM guestbooks) AS emails
GROUP BY emails.email;

-- INTERSECT
SELECT DISTINCT email FROM customers
WHERE email IN (
    SELECT DISTINCT email FROM guestbooks
);

SELECT DISTINCT customers.email FROM customers
INNER JOIN guestbooks ON (guestbooks.email = customers.email);

-- MINUS
SELECT DISTINCT customers.email, guestbooks.email FROM customers
LEFT JOIN guestbooks ON (customers.email = guestbooks.email)
WHERE guestbooks.email IS NULL;