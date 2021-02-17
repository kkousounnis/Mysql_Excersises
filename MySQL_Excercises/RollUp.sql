USE `classicmodels`;
CREATE TABLE sales SELECT productLine,
    YEAR(orderDate) orderYear,
    SUM(quantityOrdered * priceEach) orderValue FROM
    orderdetails
        INNER JOIN
    orders USING (ordernumber)
        INNER JOIN
    products USING (productcode)
GROUP BY productLine , YEAR(orderdate);
-- -------------------------------------------- 
SELECT 
    *
FROM
    sales;
SELECT 
    productline, SUM(orderValue) totalOrderValue
FROM
    sales
GROUP BY productline;
-- --------------------------------------------
SELECT 
    productLine, SUM(orderValue) totalOrderValue
FROM
    sales
GROUP BY productline WITH ROLLUP;
    
-- ---------------------------------------------
SELECT 
    productLine, orderYear, SUM(orderValue) AS totalOrderValue
FROM
    sales
GROUP BY productline , orderYear WITH ROLLUP;

-- ----------------------------------------------
SELECT 
    IF(GROUPING(orderYear),
        'All Years',
        orderYear) orderYear,
    IF(GROUPING(productLine),
        'All Product Lines',
        productLine) productLine,
    SUM(orderValue) totalOrderValue
FROM
    sales
GROUP BY orderYear , productline WITH ROLLUP; 