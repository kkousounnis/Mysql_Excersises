USE `classicmodels`;
CREATE TABLE `billings` (
    `billingNo` INT AUTO_INCREMENT,
    `customerNo` INT,
    `billingDate` DATE,
    `amount` DEC(10 , 2 ),
    PRIMARY KEY (billingNo)
);