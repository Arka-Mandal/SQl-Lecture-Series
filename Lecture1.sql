create database ARKA;
USE ARKA;
-- 1------------------------------------------------------------------------------------
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

SELECT *
from products;

-- Q1. Show products priced above ₹500 but not made in Delhi or Pune

SELECT *
from products
where price > 500
and 
city_of_manufacture not in ("Delhi" , "Pune");
-- 2-------------------------------------------------------------------------------

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

select *
from employees;

-- Q2. Display all employees who earn between ₹30,000 and ₹60,000 and live in either Bangalore or Hyderabad

select *
from employees
where salary between 30000 and 60000
and
city in('Bangalore', 'Hyderabad');
-- 3---------------------------------------------------------------------------

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

select *
from medicines;

-- Q3. List all medicines where name starts with 'Par' and cost more than ₹50

select *
from medicines
where medicine_name like "Par%"
and
cost > 50;
-- 4-----------------------------------------------------------------------------

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

select *
from train_routes;

-- Q4. Find all train routes where destination ends with 'pur' and distance is more than 400 km

select *
from train_routes
where destination like "%pur"
and
distance_km > 400;
-- 5----------------------------------------------------------------------------------------

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

select *
from courses;

-- Q5. Show all courses that don’t include 'Data' in the name and are priced below ₹1500

select *
from courses
where course_name not like "%Data%";
-- 6--------------------------------------------------------------------------

CREATE TABLE cricket_players (
player_id INT,
player_name VARCHAR(50),
country VARCHAR(30),
icc_rank INT
);
INSERT INTO cricket_players VALUES
(1, 'Virat Kohli', 'India', 2),
(2, 'Steve Smith', 'Australia', 4),
(3, 'Joe Root', 'England', 3),
(4, 'Kane Williamson', 'New Zealand', 1),
(5, 'Rohit Sharma', 'India', 6);

select *
from cricket_players;

-- Q6. Show the name and rank of all players who are either from ‘India’ or ‘Australia’

select Player_name, icc_rank
from cricket_players
where country in('India', 'Australia');
-- 7----------------------------------------------------------------------------------------

create table customers2(
customer_id int,
name varchar(50),
email varchar(50));

insert into customers2 value
(1, 'Anjali Verma', 'anjali@gmail.com'),
(2, 'Rakesh Yadav', NULL),
(3, 'Divya Menon', ''),
(4, 'Manoj Rawat', 'manojr@xyz.com'),
(5, 'Kavita Das', NULL);

select *
from customers2;

-- Q7. Display the names of all customers who haven’t provided their email
select *
from customers2
where email is null 
or email = '';
-- 8-----------------------------------------------------------------------------------------

CREATE TABLE movies (
movie_id INT,
title VARCHAR(100),
genre VARCHAR(30),
rating DECIMAL(3,1)
);
INSERT INTO movies VALUES
(1, 'Inception', 'Sci-Fi', 8.8),
(2, 'DDLJ', 'Romance', 8.2),
(3, 'Race 3', 'Action', 4.5),
(4, '3 Idiots', 'Drama', 8.4),
(5, 'Dhoom 2', 'Action', 7.0);

select *
from movies;

-- Q8. Show all movies with ratings between 7 and 9, sorted in descending order of rating
select *
from movies
where rating between 7 and 9
order by rating desc;
-- 9----------------------------------------------------------------------------------------------

CREATE TABLE students2 (
student_id INT,
name VARCHAR(50),
class VARCHAR(10)
);
INSERT INTO students2 VALUES
(1, 'Anjali Singh', '10A'),
(2, 'Bhavesh Chauhan', '10B'),
(3, 'Aarav Kapoor', '10A'),
(4, 'Meera Shah', '10C'),
(5, 'Aman Tiwari', '10B');

select *
from students2;

-- Q9. Get the names of students whose names start with ‘A’

select *
from students2
where name like "A%";
-- 10------------------------------------------------------------------------

CREATE TABLE employees2 (
emp_id INT,
emp_name VARCHAR(50),
department VARCHAR(30)
);
INSERT INTO employees2 VALUES
(1, 'Aarti Nair', 'HR'),
(2, 'Siddharth Rao', 'IT'),
(3, 'Karan Bhatia', 'IT'),
(4, 'Nisha Verma', 'HR'),
(5, 'Rahul Deshmukh', 'Finance');

select *
from employees2;
-- Q10. Show the count of employees in each department

select department, count(emp_id) emp_count
from employees2
group by department;
-- 11-----------------------------------------------------------------------

CREATE TABLE staff (
emp_id INT,
emp_name VARCHAR(50),
department VARCHAR(30)
);
INSERT INTO staff VALUES
(1, 'Rajiv Khanna', 'Sales'),
(2, 'Mona Goyal', 'IT'),
(3, 'Harsh Patel', 'HR'),
(4, 'Sana Shaikh', 'Sales'),
(5, 'Aman Agarwal', 'Admin');

select *
from staff;

-- Q11. Show list of employees not from the Sales department

select *
from staff
where department not in ('sales');
-- 12-------------------------------------------------------------------------

CREATE TABLE medicines2 (
med_id INT,
med_name VARCHAR(50),
category VARCHAR(30),
price INT
);
INSERT INTO medicines2 VALUES
(1, 'Paracetamol', 'Fever', 45),
(2, 'Aspirin', 'Pain Relief', 90),
(3, 'Dolo 650', 'Fever', 120),
(4, 'Zincovit', 'Vitamin', 180),
(5, 'Cetrizine', 'Allergy', 60);

select *
from medicines2;

-- Q12. Find all medicines priced between ₹50 and ₹150

select *
from medicines2
where price between 50 and 150;
-- 13--------------------------------------------------------------------------

CREATE TABLE contacts (
contact_id INT,
full_name VARCHAR(50),
phone_number VARCHAR(15)
);
INSERT INTO contacts VALUES
(1, 'Rishi Kapoor', '9876543289'),
(2, 'Aarti Mishra', '9810023456'),
(3, 'Vivek Dubey', '9867543289'),
(4, 'Nikita Shah', '9822331144'),
(5, 'Samar Khan', '9898989888');

select *
from contacts;

-- Q13. Show the names of people whose phone number ends with '89'

select *
from contacts
where phone_number like "%89";
-- 14-----------------------------------------------------------------------

CREATE TABLE exam_scores (
student_id INT,
student_name VARCHAR(50),
subject VARCHAR(30),
score INT
);
INSERT INTO exam_scores VALUES
(1, 'Tanya Joshi', 'Maths', 88),
(2, 'Amit Sinha', 'Science', 76),
(3, 'Ishaan Roy', 'Maths', 67),
(4, 'Priya Rawat', 'Maths', 92),
(5, 'Zoya Khan', 'English', 83);

select *
from exam_scores;

-- Q14. Show names of students who scored more than 80 in Maths

select *
from exam_scores
where subject like 'Maths'
and score > 80;
-- 15------------------------------------------------------------------------

CREATE TABLE books (
book_id INT PRIMARY KEY,
title VARCHAR(100),
author VARCHAR(50),
price INT
);
INSERT INTO books VALUES
(1, 'Intro to Economics', 'Ankit Mehta', 250),
(2, 'Advanced Finance', 'Neha Desai', 400),
(3, 'Startup Growth', 'Ankit Mehta', 300),
(4, 'World History', 'Raj Malhotra', 350),
(5, 'Python Basics', 'Ankit Mehta', 200);

select *
from books;

-- Q15. Show the prices of all books written by ‘Ankit Mehta’

select *
from books
where author like 'Ankit Mehta';
-- 16--------------------------------------------------------------------------

CREATE TABLE menu_items (
item_id INT PRIMARY KEY,
item_name VARCHAR(50),
price DECIMAL(10,2)
);
INSERT INTO menu_items (item_id, item_name, price) VALUES
(1, 'Dosa', 70.00),
(2, 'Samosa', 15.00),
(3, 'Paneer Roll', 80.00),
(4, 'Tea', 10.00),
(5, 'Biryani', 120.00);

select *
from menu_items;

-- Q16. How many food items are listed in the menu?

select count(*) Total_Items
from menu_items;
-- 17------------------------------------------------------------------------

CREATE TABLE delivery_hubs (
hub_id INT PRIMARY KEY,
company_name VARCHAR(50),
location_city VARCHAR(50)
);
INSERT INTO delivery_hubs (hub_id, company_name, location_city) VALUES
(1, 'Amazon', 'Bangalore'),
(2, 'Flipkart', 'Pune'),
(3, 'Amazon', 'Ahmedabad'),
(4, 'Delhivery', 'Mumbai'),
(5, 'Amazon', 'Bangalore');

select *
from delivery_hubs;

-- Q17. List all cities where Amazon has delivery hubs

select distinct location_city
from delivery_hubs
where company_name like 'Amazon';
-- 18-------------------------------------------------------------------------

CREATE TABLE payment_logs (
payment_id INT PRIMARY KEY,
platform VARCHAR(50),
amount_paid DECIMAL(10,2)
);
INSERT INTO payment_logs (payment_id, platform, amount_paid) VALUES
(1, 'Paytm', 400.00),
(2, 'PhonePe', 350.00),
(3, 'Paytm', 500.00),
(4, 'Google Pay', 300.00),
(5, 'Paytm', 800.00);

select *
from payment_logs;

-- Q18. Calculate total payment collected from Paytm users

select sum(amount_paid) Paytm_users_total_payment
from payment_logs
where platform like 'Paytm';
-- 19--------------------------------------------------------------------------

CREATE TABLE volunteers (
volunteer_id INT PRIMARY KEY,
volunteer_name VARCHAR(50),
contact_number VARCHAR(15)
);
CREATE TABLE events (
event_id INT PRIMARY KEY,
event_name VARCHAR(100),
volunteer_id INT
);
INSERT INTO volunteers VALUES
(1, 'Samar Khan', '9876543210'),
(2, 'Isha Kapoor', '9012345678'),
(3, 'Manav Mehta', '7894561230');
INSERT INTO events VALUES
(1, 'Youth Clean-Up Drive', 1),
(2, 'Tree Plantation', 2),
(3, 'Youth Clean-Up Drive', 3);

select * from volunteers;
select * from events;

-- Q19. List all volunteers participating in ‘Youth Clean-Up Drive’ along with their contact details

select v.volunteer_id, volunteer_name, contact_number
from volunteers v
join events e
on v.volunteer_id = e.volunteer_id
where event_name like "Youth Clean-Up Drive";
-- 20-------------------------------------------------------------------------

CREATE TABLE appointments (
appointment_id INT PRIMARY KEY,
doctor_id INT,
appointment_date DATE
);
INSERT INTO appointments VALUES
(1, 101, '2024-04-01'),
(2, 102, '2024-04-01'),
(3, 101, '2024-04-03'),
(4, 103, '2024-04-04'),
(5, 101, '2024-04-05');

select *
from appointments;

-- Q20. Count the number of appointments taken per doctor

select doctor_id, count(appointment_id) no_of_appointments
from appointments
group by doctor_id;
-- 21-------------------------------------------------------------------------

CREATE TABLE course_enrollments (
enrollment_id INT PRIMARY KEY,
course_name VARCHAR(50),
student_id INT
);
INSERT INTO course_enrollments VALUES
(1, 'Python Basics', 201),
(2, 'Python Basics', 202),
(3, 'Python Basics', 203),
(4, 'Data Analytics', 204),
(5, 'Data Analytics', 205),
(6, 'Web Design', 206),
(7, 'Python Basics', 207),
(8, 'Web Design', 208),
(9, 'Data Analytics', 209),
(10, 'Python Basics', 210),
(11, 'Python Basics', 211),
(12, 'Python Basics', 212),
(13, 'Python Basics', 213),
(14, 'Python Basics', 214),
(15, 'Python Basics', 215),
(16, 'Python Basics', 216);

select *
from course_enrollments;

-- Q21. Find all courses with more than 15 enrolled students

select course_name, count(*) student_count
from course_enrollments
group by course_name
having count(*) >= 2;
-- 22-----------------------------------------------------------------------

CREATE TABLE customers3(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50)
);
CREATE TABLE orders2 (
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE
);
INSERT INTO customers3 VALUES
(1, 'Aman Ojha'),
(2, 'Mrinal Sen'),
(3, 'Kunal Arora');
INSERT INTO orders2 VALUES
(1, 1, '2024-05-01'),
(2, 2, '2024-05-01'),
(3, 1, '2024-05-03'),
(4, 3, '2024-05-04'),
(5, 1, '2024-05-06');

select * from customers3;
select * from orders2;

-- Q22. Show names of customers who placed more than one order

select customer_name, count(*) order_count
from customers3 c
join orders2 o
on c.customer_id = o.customer_id
group by customer_name
having count(*) > 1;
-- 23---------------------------------------------------------------------------

CREATE TABLE quiz_scores (
record_id INT PRIMARY KEY,
student_name VARCHAR(50),
quiz_score INT
);
INSERT INTO quiz_scores VALUES
(1, 'Mehul', 80),
(2, 'Ananya', 90),
(3, 'Mehul', 85),
(4, 'Kavya', 78),
(5, 'Ananya', 95),
(6, 'Kavya', 84);

select *
from quiz_scores;

-- Q23. Show the average score of each student across all quizzes

select student_name, avg(quiz_score) avg_score
from quiz_scores
group by student_name
order by avg_score desc;
-- ----------------------------------------------------------------------------