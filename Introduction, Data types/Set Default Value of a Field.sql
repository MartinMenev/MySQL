
ALTER TABLE people
	ADD COLUMN last_login_time INT;
    
    ALTER TABLE people
	MODIFY COLUMN `last_login_time` DATETIME DEFAULT NOW();
