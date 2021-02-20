USE `classicmodels`;
DELIMITER //
	CREATE PROCEDURE getAllProducts()
	BEGIN
		SELECT * FROM products;
	END //
    
DELIMITER ;

DELIMITER //
	CREATE PROCEDURE getAllCustomers()
	BEGIN
		SELECT * FROM customers;
	END //
    
DELIMITER ;

CALL getAllProducts();
CALL getAllCustomers();