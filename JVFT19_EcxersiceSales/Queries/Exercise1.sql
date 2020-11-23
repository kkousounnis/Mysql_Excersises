SELECT 
    `smcode`,
    `Sname`,
    `Scitty`,
    `Scom`,
    AVG(`cost`) AS average_cost
FROM
    `sales`
        INNER JOIN
    salesmen ON sales.smcode = salesmen.scode
WHERE
    `sdate` > '1992-01-01'
        AND `sdate` < '1993-01-01';
