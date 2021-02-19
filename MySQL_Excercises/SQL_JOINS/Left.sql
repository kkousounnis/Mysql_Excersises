-- LEFT OUTER JOIN
USE `classicmodels`;
SELECT
	`customers`.`customerNumber`,
    `customers`.`customerName`,
    `orders`.`orderNumber`,
    `orders`.`status`
FROM
	`customers`
LEFT OUTER JOIN	`orders`
ON `customers`.`customerNumber` = `orders`.`customerNumber`;