CREATE TABLE people (
id INT  AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(200) NOT NULL,
picture longblob,
height DOUBLE,
weight DOUBLE,
gender CHAR(1) NOT NULL,
birthdate DATE NOT NULL,
biography TEXT
);

INSERT INTO people
	(name, height, weight, gender, birthdate, biography)
    VALUES
    ("Martin",181, 75, "m", "1985-05-27", "I am Martin"),
    ("Pesho", 181, 75, "m", "1985-05-27", "I am learning at Softuni"),
    ("Gosho", 181, 75, "m", "1985-05-27", "I am Goshko"),
    ("Tosho", 181, 75, "m", "1985-06-27", "I am Toshko"),
    ("Ivan", 181, 75, "m", "1985-01-01", "something");