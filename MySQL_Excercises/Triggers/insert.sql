USE `classicmodels`;
DROP TABLE IF EXISTS `WorkCenters`;

CREATE TABLE `WorkCenters` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `capacity` INT NOT NULL
);
DROP TABLE IF EXISTS WorkCenterStats;

CREATE TABLE WorkCenterStats(
    `totalCapacity` INT NOT NULL
);

USE `classicmodels`;
DELIMITER $$

CREATE TRIGGER `before_workcenters_insert`
BEFORE INSERT ON `WorkCenters` FOR EACH ROW 
BEGIN
	DECLARE rowcount INT;
    
    SELECT COUNT(*)
    INTO rowcount
    FROM `WorkCentersStats`;
    
    IF rowcount > 0 THEN 
		UPDATE `WorkCentersStats`
        SET `totalCapacity` = `totalCapacity` + new.Capacity;
	ELSE
		INSERT INTO `WorkCentersStats`(`totalCapacity`)
        VALUES(new.`capacity`);
	END IF;
END $$

USE `classicmodels`;
INSERT INTO `WorkCenters`(`name`, `capacity`)
VALUES('Mold Machine',130);