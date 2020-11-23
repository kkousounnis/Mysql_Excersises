SELECT 
    *
FROM
    `salesmen`
WHERE
    `Scom` > 0.15 AND `Scom` < 0.18
        AND `Scom` <> 0.165;