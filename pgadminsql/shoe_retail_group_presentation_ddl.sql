drop table if exists distributor;
drop table if exists customer;
drop table if exists product;
drop table if exists inventory;
drop table if exists store;
drop table if exists employee;
drop table if exists purchase;

CREATE TABLE distributor (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone VARCHAR(50) NOT NULL
);

CREATE TABLE customer (
	id SERIAL PRIMARY KEY
	,name VARCHAR(255) NOT NULL
	,email TEXT NOT NULL UNIQUE
	,phone VARCHAR (50) NOT NULL
	,dob DATE NOT NULL
	,address VARCHAR (255) NOT NULL
);

CREATE TABLE product (
	id SERIAL PRIMARY KEY
	,name VARCHAR(255) NOT NULL
	,description TEXT 
	,price DECIMAL(10,2) NOT NULL
	,distributor_id INT REFERENCES distributor(id) ON DELETE SET NULL
);


CREATE TABLE store (
	id SERIAL PRIMARY KEY
	,name VARCHAR(255) NOT NULL
	,location VARCHAR(255) NOT NULL
);

CREATE TABLE inventory(
	id SERIAL PRIMARY KEY
	,product_id INT REFERENCES product(id) ON DELETE CASCADE
	,quantity INT NOT NULL
	,inventory_date DATE NOT NULL
	,store_id INT REFERENCES store(id) ON DELETE CASCADE
);

CREATE TABLE employee (
	id SERIAL PRIMARY KEY
	,name VARCHAR(255) NOT NULL
	,email TEXT NOT NULL UNIQUE
	,role VARCHAR(50) NOT NULL
	,store_id INT REFERENCES store(id) ON DELETE CASCADE
);

CREATE TABLE purchase (
	id SERIAL PRIMARY KEY
	,customer_id INT REFERENCES customer(id) ON DELETE CASCADE
	,employee_id INT REFERENCES employee(id) ON DELETE CASCADE
	,product_id INT REFERENCES product(id) ON DELETE CASCADE
	,total_amount DECIMAL(10,2) NOT NULL
	,date DATE NOT NULL
);