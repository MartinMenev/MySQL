<<<<<<< HEAD
=======
### Task 09. Set Default Value of a Field
>>>>>>> 2fb1d696de1291b677ff7783a4e1b12cb9cdf56a

ALTER TABLE people
	ADD COLUMN last_login_time INT;
    
    ALTER TABLE people
	MODIFY COLUMN `last_login_time` DATETIME DEFAULT NOW();