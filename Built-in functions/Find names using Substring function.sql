USE `soft_uni`;

SELECT `first_name`, `last_name`
FROM employees
WHERE LOWER(SUBSTRING(`first_name`, 1, 2)) = "sa"
ORDER BY `employee_id`;
