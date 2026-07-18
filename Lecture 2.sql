-- 1-------------------------------------------------------------------------
CREATE TABLE students (
student_id SERIAL PRIMARY KEY,
student_name VARCHAR(50)
);
CREATE TABLE borrow_records (
record_id SERIAL PRIMARY KEY,
student_id INTEGER,
book_title VARCHAR(100),
borrow_date DATE
);
INSERT INTO students (student_name) VALUES
('Ravi Kumar'),
('Neha Sharma'),
('Anjali Verma'),
('Ramesh Singh');
INSERT INTO borrow_records (student_id, book_title, borrow_date) VALUES
(1, 'SQL Basics', '2023-05-01'),
(2, 'Python for Data', '2023-05-03'),
(1, 'Advanced SQL', '2023-05-05'),
(3, 'Machine Learning', '2023-05-07'),
(1, 'Data Structures', '2023-05-10'),
(2, 'Statistics 101', '2023-05-12');

select *
from students;

select *
from borrow_records;
-- Q1. List each student's name and the total number of books they borrowed from the library

select student_name, count(b.student_id) No_of_Books
from students a
join borrow_records b
on a.student_id = b.student_id
group by b.student_id;
-- --------------------------------------------------------------------------

CREATE TABLE customers (
customer_id SERIAL PRIMARY KEY,
customer_name VARCHAR(50)
);
CREATE TABLE orders (
order_id SERIAL PRIMARY KEY,
customer_id INTEGER,
order_date DATE
);
INSERT INTO customers (customer_name) VALUES
('Priya Patel'),
('Sahil Mehra'),
('Kavita Jain'),
('Rohit Sen');
INSERT INTO orders (customer_id, order_date) VALUES
(1, '2023-04-01'),
(2, '2023-04-02'),
(1, '2023-04-05'),
(3, '2023-04-06'),
(1, '2023-04-07'),
(2, '2023-04-08');

select *
from customers;

select *
from orders;

-- Q2. Show names of customers who placed more than 2 orders in total

select customer_name, count(o.order_id) order_count
from customers c
join orders o 
on c.customer_id = o.customer_id
group by c.customer_id
having count(o.order_id) >= 2;
-- -------------------------------------------------------------------------------

CREATE TABLE medicines3 (
medicine_id SERIAL PRIMARY KEY,
medicine_name VARCHAR(50),
cost INTEGER
);
INSERT INTO medicines3 (medicine_name, cost) VALUES
('Paracetamol', 65),
('Paraglow', 45),
('Pantocid', 75),
('Paracare', 80),
('Ibuprofen', 50);

select *
from medicines3;

-- Q3. List all medicines where name starts with 'Par' and cost more than ₹50

select *
from medicines3
where medicine_name like 'Par%'
and cost > 50;
-- ---------------------------------------------------------------------------

CREATE TABLE train_routes2 (
route_id SERIAL PRIMARY KEY,
train_name VARCHAR(50),
destination VARCHAR(50),
distance_km INTEGER
);
INSERT INTO train_routes2 (train_name, destination, distance_km) VALUES
('Rajdhani Express', 'Jaipur', 420),
('Duronto', 'Chennai', 2100),
('Shatabdi', 'Kanpur', 380),
('Superfast Express', 'Nagpur', 610),
('Garib Rath', 'Rampur', 410);

select *
from train_routes2;

-- Q4. Find all train routes where destination ends with 'pur' and distance is more than 400 km

select *
from train_routes2
where destination like '%pur'
and distance_km > 400;
-- ---------------------------------------------------------------------------

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

-- Q5. Show all courses that don’t include 'Data' in the name and are priced below ₹1500

select *
from courses
where course_name not in('Data')
and price < 1500;
-- ------------------------------------------------------------------------------