SELECT 
    `Ccode`, `Cname`
FROM
    customers
WHERE
    `Ccode` IN (SELECT 
            `Ccode`
        FROM
            `sales`
                INNER JOIN
            `products` ON `products`.`Pcode` = `sales`.`Pcode`
        WHERE
            `Pdescr` LIKE '%HDD%'
                AND `Quant` BETWEEN 3 AND 7);

