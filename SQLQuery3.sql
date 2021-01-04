CREATE DATABASE applicatio_07

USE applicatio_07

CREATE TABLE users (
id INT PRIMARY KEY IDENTITY,
name VARCHAR(50),
password VARCHAR(15)
);

INSERT INTO users (name, password) VALUES ('Peter','123'),('Jenny','345'),('John','567');

SELECT * FROM users 
WHERE name LIKE 'j%';

SELECT * FROM users
WHERE id>1 AND id<5;


CREATE TABLE statuses(
id INT PRIMARY KEY IDENTITY,
name VARCHAR(30)
);

INSERT INTO statuses (name) VALUES ('user');
INSERT INTO statuses (name) VALUES ('administrator');
INSERT INTO statuses (name) VALUES ('superadministrator');

SELECT * FROM users
SELECT * FROM statuses

ALTER TABLE users ADD status INT;

UPDATE users SET status = 2 WHERE name = 'John';
UPDATE users SET status = 3 WHERE name = 'Jenny';
UPDATE users SET status = 1 WHERE name = 'Peter';

SELECT users.name, statuses.name 
FROM users
JOIN statuses ON users.status = statuses.id
WHERE users.id = '2'



