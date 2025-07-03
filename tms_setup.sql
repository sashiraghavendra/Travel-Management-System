USE tms;

CREATE TABLE account (
    username VARCHAR(30) PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    password VARCHAR(30) NOT NULL,
    security VARCHAR(30) NOT NULL,
    answer VARCHAR(30) NOT NULL
);

CREATE TABLE customer (
    username VARCHAR(30),
    id VARCHAR(30) PRIMARY KEY,
    id_number VARCHAR(30),
    name VARCHAR(30),
    gender VARCHAR(30),
    country VARCHAR(30),
    address VARCHAR(30),
    phone VARCHAR(30),
    email VARCHAR(30)
);

CREATE TABLE bookpackage (
    username VARCHAR(30),
    package VARCHAR(30),
    persons INT(10),
    id VARCHAR(30),
    id_number VARCHAR(30),
    phone VARCHAR(30) PRIMARY KEY,
    price VARCHAR(30)
);

CREATE TABLE bookhotel (
    username VARCHAR(30),
    hotel VARCHAR(30),
    persons INT(10),
    days INT(10),
    ac VARCHAR(30),
    food VARCHAR(30),
    id VARCHAR(30),
    id_number VARCHAR(30),
    phone VARCHAR(30),
    price VARCHAR(30)
);

CREATE TABLE hotel (
    hotel VARCHAR(30) PRIMARY KEY,
    cost_per_day INT(10),
    food_charges INT(10),
    ac_charges INT(10)
);

CREATE TABLE users (
    username VARCHAR(30),
    id VARCHAR(30),
    id_number VARCHAR(30),
    name VARCHAR(30),
    country VARCHAR(30),
    gender VARCHAR(30),
    address VARCHAR(30),
    phone VARCHAR(30),
    email VARCHAR(30)
);

DELIMITER $$
CREATE TRIGGER trigger_on_login
AFTER INSERT ON customer
FOR EACH ROW
BEGIN
    INSERT INTO users (username, id, id_number, name, country, gender, address, phone, email)
    VALUES (NEW.username, NEW.id, NEW.id_number, NEW.name, NEW.country, NEW.gender, NEW.address, NEW.phone, NEW.email);
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE getCustomer()
BEGIN
    SELECT * FROM customer;
END$$
DELIMITER ;
