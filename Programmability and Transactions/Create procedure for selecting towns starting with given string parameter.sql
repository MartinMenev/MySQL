Delimiter $$

CREATE PROCEDURE usp_get_towns_starting_with (string VARCHAR(50))
BEGIN
SELECT `name` AS `town_name`
FROM `towns`
WHERE LOWER(`name`) LIKE LOWER(concat(string,"%"))
ORDER BY `name`;
END$$

CALL usp_get_towns_starting_with ("b");