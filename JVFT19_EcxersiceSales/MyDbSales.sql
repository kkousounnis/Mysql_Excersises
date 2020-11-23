DROP DATABASE IF EXISTS sales;
/*Create database*/
CREATE DATABASE IF NOT EXISTS `sales`;

USE `sales`;
/*Create database*/
DROP TABLE IF EXISTS `customers`;

/*Create table Customers*/

CREATE TABLE `customers` (
    `Ccode` INT(10) UNSIGNED NOT NULL,
    `Cname` VARCHAR(20) NOT NULL,
    PRIMARY KEY (`Ccode`)
);

insert  into `customers`(`Ccode`,`Cname`)
values (100102,'Aleksiadis'),
 (100103,'Papadopoulos'),
 (100104,'Ioannou'),
 (100105,'Apostolou'),
 (100106,'Papamarkou'),
 (100107,'Drakopoulos');

/*Create table Family*/

CREATE TABLE `family` (
    `fname` VARCHAR(20) DEFAULT NULL,
    `frelationship` VARCHAR(20) DEFAULT NULL,
    `dob` DATE DEFAULT NULL,
    `salesman` INT(10) UNSIGNED DEFAULT NULL,
    KEY `fk_family` (`salesman`),
    CONSTRAINT `fk_family` FOREIGN KEY (`salesman`)
	REFERENCES `salesmen` (`Scode`)
);

INSERT INTO `family` (`fname`, `frelationship`, `dob`, `salesman`) VALUES ('Giorgos', 'Son', '1981-02-11', 101), ('Chrysa', 'Wife', '1981-02-11', 101);

/*Create table family*/

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
    `Pcode` INT(10) UNSIGNED NOT NULL,
    `Pdescr` VARCHAR(45) NOT NULL,
    `Pprice` DECIMAL(7 , 2 ) UNSIGNED DEFAULT NULL,
    PRIMARY KEY (`Pcode`)
);

insert  into `products`(`Pcode`,`Pdescr`,`Pprice`)
values (1310,'FooBar','50.00'),
	(1311,'Keyboard','100.00'),
	(1312,'HDD 250MB','60.00'),
	(1313,'Printer 24pin','81.00'),
	(1314,'TV 17\"','250.00'),
	(1315,'Printer inkjet','135.00');

/*Create table Sales*/
CREATE TABLE `sales`(
	`Scode` int(10) unsigned NOT NULL,
	`Pcode` int(10) unsigned NOT NULL,
	`Sdate` date DEFAULT NULL,
	`Ccode` int(10) unsigned NOT NULL,
	`Smcode` int(10) unsigned NOT NULL,
	`Quant` int(10) unsigned DEFAULT NULL,
	`Cost` decimal(7,2) unsigned DEFAULT NULL,
    PRIMARY KEY (`Scode`),
  KEY `Icode_idx` (`Pcode`),
  KEY `Ccode_idx` (`Ccode`),
  KEY `FK_sales` (`Smcode`),
  CONSTRAINT `Ccode` FOREIGN KEY (`Ccode`) REFERENCES `customers` (`Ccode`),
  CONSTRAINT `FK_sales` FOREIGN KEY (`Smcode`) REFERENCES `salesmen` (`Scode`),
  CONSTRAINT `Icode` FOREIGN KEY (`Pcode`) REFERENCES `products` (`Pcode`)
);

insert  into `sales`(`Scode`,`Pcode`,`Sdate`,`Ccode`,`Smcode`,`Quant`,`Cost`)
 values (10001,1310,'1993-06-10',100107,104,20,'800.00'),
 (10002,1313,'1993-07-12',100102,101,10,'700.00'),
 (10003,1312,'1993-03-15',100104,105,16,'760.00'),
 (10004,1310,'1993-04-21',100106,103,12,'400.00'),
 (10005,1310,'1992-12-02',100103,102,25,'1250.00'),
 (10006,1311,'1992-11-03',100107,104,30,'120.00'),
 (10007,1313,'1993-05-17',100105,104,20,'1600.00'),
 (10008,1312,'1993-02-12',100107,104,5,'100.00'),
 (10009,1310,'1992-12-02',100102,101,10,'500.00'),
 (10010,1311,'1992-11-03',100106,103,20,'80.00'),
 (10011,1313,'1993-04-04',100104,105,15,'1150.00');

/*Create table Salesmen*/

CREATE TABLE `salesmen`(
	`Scode` int(10) unsigned NOT NULL,
    `Sname` varchar(20) NOT NULL,
    `Scitty` varchar(15) DEFAULT NULL,
    `Scom` decimal(5,2) unsigned DEFAULT NULL,
    PRIMARY KEY (`Scode`)    
);

INSERT INTO `salesmen` (`Scode`, `Sname`, `Scitty`, `Scom`) 
VALUES (101,'Antoniou','Athens','0.14'),
		(102,'Dimou','Athens','0.15'),
		(103,'Vasileiou','Patra','0.17'),
		(104,'Raptis','Thessaloniki','0.16'),
		(105,'Lamprinakis','Irakleio','0.15');
