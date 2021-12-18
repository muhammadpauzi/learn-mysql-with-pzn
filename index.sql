CREATE TABLE sellers(
    id      INT NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    -- name2    VARCHAR(100) NOT NULL,
    -- name3    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY email_unique (email),
    INDEX name_index (name),
    -- INDEX name2_index (name2),
    -- INDEX name1_name2_name3_index (name, name2, name3)
) ENGINE = INNODB;                  -- ⬆
                                    -- ⬆
SELECT * FROM sellers WHERE name = "X" AND name2 = "X" AND name3 = "X"; -- ✅
SELECT * FROM sellers WHERE name2 = "X" AND name3 = "X"; -- ❌

-- NOT RECOMMENDED IF ADD INDEX TO A DATABASE THAT TOO BIG
ALTER TABLE sellers
ADD INDEX name_index (name);

ALTER TABLE sellers
DROP INDEX name_index;