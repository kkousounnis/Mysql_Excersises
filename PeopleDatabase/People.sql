DROP DATABASE IF EXISTS `ftjv19`;
CREATE DATABASE IF NOT EXISTS `ftjv19`;
USE `ftjv19`;
CREATE TABLE IF NOT EXISTS `people` (
    `first_name` VARCHAR(255),
    `last_name` VARCHAR(255),
    `address` VARCHAR(255),
    `city` VARCHAR(255),
    `age` INT
);

INSERT INTO `people`(`first_name`,`last_name`,`address`,`city`,`age`)
VALUES('Mickey','Mouse','123 Fantasy Way','Anahein',73),
('Bat','Man','321 Cavern Ave','Gotham',54),
('Qonder','Woman','987 Truth Way','Paradise',39),
('Donald','Duck','555 Quack Street','Mallard',65),
('Bugs','Bunny','567 Carrot Street','Rascal',58),
('Wiley','Coyote','999 Acme Way','Canyon',61),
('Cat','Woman','234 Purrfect Street','Heairball',32),
('Tweety','Bird','543 Down Street','Itotltaw',28);

