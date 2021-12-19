START TRANSACTION;
INSERT INTO guestbooks (email, title, content)
VALUES  ('contoh1@gmail.com', 'Contoh1', 'Contoh1...'),
        ('contoh2@gmail.com', 'Contoh2', 'Contoh2...'),
        ('contoh3@gmail.com', 'Contoh3', 'Contoh3...');
COMMIT;

START TRANSACTION;
DELETE FROM guestbooks;
ROLLBACK;