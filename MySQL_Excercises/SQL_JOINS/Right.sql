SELECT 
	`employees`.`employeeNumber`,
    `customers`.`customerNumber`
FROM
	`customers`
RIGHT JOIN `employees`
	ON `customers`.`salesRepEmployeeNumber` = `employees`.`employeeNumber` 