Delimiter $$

CREATE PROCEDURE usp_get_employees_by_salary_level(level VARCHAR(10))
BEGIN
SELECT `first_name`, `last_name`
FROM `employees`
WHERE level IN (SELECT ufn_get_salary_level(`salary`))
ORDER BY `first_name` DESC, `last_name` DESC;
END$$

CALL usp_get_employees_by_salary_level("High");
