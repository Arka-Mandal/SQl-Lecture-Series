DROP DATABASE IF EXISTS `Parks_and_Recreation`;
create database `Parks_and_Recreation`;
use `Parks_and_Recreation`;

create table Employee_Basics(
	Employee_id int not null,
    First_name varchar(50),
    Last_name varchar(50),
    Gender varchar(6),
    Age int,
    Date_of_birth date,
    primary key(Employee_id)
);

create table Employee_Salary_Table(
	Employee_id int not null,
    First_name varchar(50) not null,
    Last_name varchar(50) not null,
    Salary int,
    Post varchar(50),
    Dept_id int
);

insert into Employee_Basics (Employee_id, First_name, Last_name, Gender, Age, Date_of_birth)
values
(1, 'Arka', 'Mandal', 'Male', 33, '1993-06-19'),
(2, 'Arnab', 'Nayek', 'Male', '37', '1990-05-10'),
(3, 'Saparshi', 'Banarjee', 'Male', '30', '1996-05-25'),
(4, 'APC', 'Roy', 'Female', 29, '1994-03-27'),
(5, 'JChandra', 'Basu', 'Male', 61, '1962-08-28'),
(6, 'RNath', 'Tagore', 'Female', 46, '1977-07-30'),
(7, 'Matongini', 'Hazra', 'Female', 35, '1988-12-01'),
(8, 'Rani', 'Rasmoni', 'Male', 43, '1980-11-11'),
(9, 'IChandra', 'Bandyopadhyay', 'Male', 38, '1985-07-26'),
(10, 'SChandra', 'Bose', 'Male', 34, '1989-03-25'),
(11, 'Satyajit', 'Roy', 'Male', 40, '1983-06-14'),
(12, 'Manna', 'Dey', 'Male', 37, '1986-07-27');