Delimiter $$

CREATE FUNCTION ufn_get_salary_level (salary DECIMAL)
RETURNS VARCHAR(50) DETERMINISTIC
BEGIN
DECLARE level VARCHAR(50);
SET level := "Low";
IF (`salary` >= 30000 AND `salary` <= 50000) THEN SET level := "Average";
ELSEIF (`salary` > 50000) THEN SET level := "High";
END IF;
RETURN level;
END$$

SELECT `salary`, (SELECT ufn_get_salary_level (`salary`)) AS `salary_Level`
FROM `employees`;