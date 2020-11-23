/* The name of the table to the right is People.
Write a statement that returns the First Name
and City of the people that are older than 60
years old and her/his First Name starts with M.
The result must be ordered by City
*/

USE `ftjv19`;

SELECT 
    `first_name`, `city`
FROM
    `people`
WHERE
    `age` > 60 AND `first_name` LIKE 'M%'
ORDER BY `city`;