SELECT 
    `Pcode`, SUM(Cost) AS TotalProfit
FROM
    `sales`
GROUP BY `Pcode`
HAVING TotalProfit > 1500;
