CREATE TABLE wizards (id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20), age INTEGER);
CREATE TABLE powers (id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20), damage INTEGER);
CREATE TABLE wizards_powers
(PRIMARY KEY (wizard_id, power_id),
wizard_id INTEGER REFERENCES wizards,  
power_id INTEGER REFERENCES powers);

INSERT INTO wizards (name, age) VALUES ("Harry Potter", 21);
INSERT INTO wizards (name, age) VALUES ("Ron Weasley", 21);
INSERT INTO powers (name, damage) VALUES ("Slug Vomiting", 50);
INSERT INTO powers (name, damage) VALUES ("Jelly-Legs Hex", 40);
INSERT INTO wizards_powers (wizard_id, power_id) VALUES (1, 2);
INSERT INTO wizards_powers (wizard_id, power_id) VALUES (2, 1);
