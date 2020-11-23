USE sales;
SELECT 
    `sales`.`Pcode`, `Pdescr`, AVG(`Quant`)
FROM
    `sales`
        INNER JOIN
    `products` ON `sales`.`Pcode` = `products`.`Pcode`
GROUP BY `Pcode`;