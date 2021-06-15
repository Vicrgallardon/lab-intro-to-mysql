CREATE DATABASE lab_mysql;
USE lab_mysql;


CREATE TABLE cars (
  id INT PRIMARY KEY,
  cars_VIN VARCHAR(20),
  cars_manufacturer VARCHAR(40) NOT NULL, 
  cars_model VARCHAR(10) NOT NULL,
  cars_year DATE NOT NULL,
  cars_color VARCHAR(10) 
  );

CREATE TABLE customers (
	id INT PRIMARY KEY,
    customers_id CHAR(5),
	cust_name VARCHAR(40),
	cust_phone CHAR(12),
	cust_email VARCHAR(40),
    cust_adress VARCHAR(40) NOT NULL,
    cust_city VARCHAR(40) NOT NULL,
    cust_state VARCHAR(40) NOT NULL,
    cust_country VARCHAR(40) NOT NULL,
    cust_postal CHAR(5) NOT NULL
);

CREATE TABLE salespersons (
	id INT PRIMARY KEY,
    staff_id CHAR(5),
	staff_name VARCHAR(40) NOT NULL,
	staff_store CHAR(12)
);

CREATE TABLE invoices (
    invoice_number INT PRIMARY KEY,
	invoice_date DATE NOT NULL,
	cars VARCHAR(20),
	customers INT,
    salespersons INT 
);


INSERT INTO cars VALUES
(0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019-01-01', 'Blue'),
(1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019-01-01', 'Red'),
(2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018-01-01', 'White'),
(3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018-01-01', 'Silver'),
(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019-01-01', 'Gray');


INSERT INTO customers VALUES
(0, '10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(1, '20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(2, '30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Miami', 'Île-de-France', 'France', '75008');

INSERT INTO salespersons VALUES
(0, '00001', 'Petey Cruiser', 'Madrid'),
(1, '00002', 'Anna Sthesia', 'Barcelona'),
(2, '00003', 'Paul Molive', 'Berlin'),
(3, '00004', 'Gail Forcewind', 'Paris');

INSERT INTO invoices VALUES
(852399038, '2018-08-22', 0, 1, 3),
(731166526, '2018-12-31', 3, 0, 5),
(271135104, '2019-01-22', 2, 2, 7);





    
