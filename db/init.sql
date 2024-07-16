CREATE DATABASE IF NOT EXISTS class;
CREATE USER IF NOT EXISTS 'dmitry'@'%' IDENTIFIED BY '54321';
GRANT SELECT,UPDATE,INSERT ON class.* TO 'dmitry'@'%';
FLUSH PRIVILEGES;
USE `class`;
CREATE TABLE IF NOT EXISTS classmates (
surname VARCHAR (40) NOT NULL,
name VARCHAR (20) NOT NULL,
second_name VARCHAR (40) NOT NULL,
year_of_birth VARCHAR (20) NOT NULL
);
INSERT INTO classmates (surname, name, second_name, year_of_birth)
VALUES
('Ivanov', 'Boris', 'Ivanovich', '1987'),
('Petrov', 'Vladimir', 'Vladimirovich', '1988'),
('Medvedev', 'Dmitriy', 'Ivanovich', '1995');
