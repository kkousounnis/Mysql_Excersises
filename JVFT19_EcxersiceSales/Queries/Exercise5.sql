SELECT 
    `salesmen`.`Scode`,
    `salesmen`.`Sname`,
    COUNT(`salesman`) AS family_members
FROM
    `family`
        INNER JOIN
    `salesmen` ON family.salesman = salesmen.Scode
GROUP BY salesman;
