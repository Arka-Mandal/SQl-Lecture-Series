create database ARKA;
USE ARKA;

CREATE TABLE products (
product_id SERIAL PRIMARY KEY,
product_name VARCHAR(50),
category VARCHAR(30),
price INTEGER,
city_of_manufacture VARCHAR(30)
);
INSERT INTO products (product_name, category, price, city_of_manufacture) VALUES
('Mixer Grinder', 'Appliances', 1500, 'Mumbai'),
('Bluetooth Speaker', 'Electronics', 800, 'Delhi'),
('Pressure Cooker', 'Kitchenware', 1200, 'Pune'),
('Study Table', 'Furniture', 3000, 'Nagpur'),
('Shoe Rack', 'Furniture', 450, 'Hyderabad');
-- Q1. Show products priced above ₹500 but not made in Delhi or Pune

SELECT *
from products;

SELECT *
from products
where price > 500
and 
city_of_manufacture not in ("Delhi" , "Pune");
-- 

CREATE TABLE employees (
emp_id SERIAL PRIMARY KEY,
emp_name VARCHAR(50),
salary INTEGER,
city VARCHAR(30)
);
INSERT INTO employees (emp_name, salary, city) VALUES
('Ravi Sharma', 28000, 'Delhi'),
('Anjali Mehta', 50000, 'Bangalore'),
('Karan Kapoor', 62000, 'Hyderabad'),
('Priya Reddy', 45000, 'Hyderabad'),
('Neha Verma', 30000, 'Mumbai');
-- Q2. Display all employees who earn between ₹30,000 and ₹60,000 and live in either Bangalore or Hyderabad

select *
from employees;

select *
from employees
where salary between 30000 and 60000
and
city in('Bangalore', 'Hyderabad');
-- 

CREATE TABLE medicines (
medicine_id SERIAL PRIMARY KEY,
medicine_name VARCHAR(50),
cost INTEGER
);
INSERT INTO medicines (medicine_name, cost) VALUES
('Paracetamol', 65),
('Paraglow', 45),
('Pantocid', 75),
('Paracare', 80),
('Ibuprofen', 50);
-- Q3. List all medicines where name starts with 'Par' and cost more than ₹50

select *
from medicines;

select *
from medicines
where medicine_name like "Par%"
and
cost > 50;
-- 

CREATE TABLE train_routes (
route_id SERIAL PRIMARY KEY,
train_name VARCHAR(50),
destination VARCHAR(50),
distance_km INTEGER
);
INSERT INTO train_routes (train_name, destination, distance_km) VALUES
('Rajdhani Express', 'Jaipur', 420),
('Duronto', 'Chennai', 2100),
('Shatabdi', 'Kanpur', 380),
('Superfast Express', 'Nagpur', 610),
('Garib Rath', 'Rampur', 410);
-- Q4. Find all train routes where destination ends with 'pur' and distance is more than 400 km

select *
from train_routes;

select *
from train_routes
where destination like "%pur"
and
distance_km > 400;
--

CREATE TABLE courses (
course_id SERIAL PRIMARY KEY,
course_name VARCHAR(100),
price INTEGER
);
INSERT INTO courses (course_name, price) VALUES
('Data Science Fundamentals', 2500),
('Python for Beginners', 1200),
('Advanced Excel', 800),
('Data Analytics Bootcamp', 1800),
('SQL Mastery', 1400);
-- Q45. Show all courses that don’t include 'Data' in the name and are priced below ₹1500

select *
from courses;

select *
from courses
where course_name not like "%Data%"
;