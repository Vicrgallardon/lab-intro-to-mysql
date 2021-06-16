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
