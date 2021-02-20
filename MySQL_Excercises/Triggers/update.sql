USE `classicmodels`;
CREATE TABLE `employees_audit` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `employeeNumber` INT NOT NULL,
    `lastname` VARCHAR(50) NOT NULL,
    `changedat` DATETIME DEFAULT NULL,
    action VARCHAR(50) DEFAULT NULL
);
USE `classicmodels`;
CREATE 
    TRIGGER  `before_employee_update`
 BEFORE UPDATE ON `employees` FOR EACH ROW 
    INSERT INTO `employees_audit` 
    SET ACTION = 'update' ,
		`employeeNumber` = OLD.`employeeNumber`,
        `lastname` = OLD.`lastname` ,
        `changedat` = NOW();
SHOW TRIGGERS;

USE `classicmodels`;
UPDATE employees 
SET 
    lastName = 'Phan'
WHERE
    employeeNumber = 1056;