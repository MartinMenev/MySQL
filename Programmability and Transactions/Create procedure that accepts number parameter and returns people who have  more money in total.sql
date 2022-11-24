Delimiter $$

CREATE PROCEDURE usp_get_holders_with_balance_higher_than (number DECIMAL(9,4))
BEGIN
SELECT `first_name`, `last_name` 
FROM `account_holders` AS ah
JOIN `accounts` AS a ON a.`account_holder_id` = ah.`id`
GROUP BY a.`account_holder_id`
HAVING SUM(a.`balance`) > number
ORDER BY a.`account_holder_id`;
END$$

CALL usp_get_holders_with_balance_higher_than (7000);