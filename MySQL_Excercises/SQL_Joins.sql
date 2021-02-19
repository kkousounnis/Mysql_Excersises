USE `classicmodels`;
SELECT 
    `products`.`productCode`,
    `products`.`productName`,
    `productlines`.`textDescription`
FROM
    `products`
        INNER JOIN
    `productlines` ON `products`.`productLine` = `productlines`.`productLine`;