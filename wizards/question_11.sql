CREATE TABLE wizards (id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20), age INTEGER);
CREATE TABLE powers(id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20), damage INTEGER, wizard_id INTEGER REFERENCES wizards);
INSERT INTO wizards (name, age) VALUES ("Harry Potter", 21);
INSERT INTO powers (name, damage, wizard_id) VALUES ("Expelliarmus", 10, 1);
INSERT INTO powers (name, damage, wizard_id) VALUES ("Sectumsempra", 100, 1);

CREATE TABLE wizards (id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20), age INTEGER, power1 VARCHAR(20), power2 VARCHAR(20));
INSERT INTO wizards (name, age, power1, power2) VALUES ("Harry Potter", 21, "Expelliarmus", "Sectumsempra");