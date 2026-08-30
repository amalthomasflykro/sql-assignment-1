create database employee;
use employee;
create table departments (department_id int,department_name varchar(100));
create table location (location_id int,location varchar(30));
create table employees (employee_id int,employee_name varchar(50),gender enum("M","F"),age int,
hire_date date,designation varchar(50),department_id int,location_id int,salary decimal(10.2));
desc departments;
desc location;
desc employees;
ALTER TABLE employees add column email varchar(100);
ALTER TABLE employees modify column designation varchar(100);
ALTER TABLE employees drop column age;
ALTER TABLE employees rename column hire_date to date_of_joining;
desc employees;
rename table departments to departments_info;
desc departments_info;
rename table location to locations;
desc locations;
truncate table employees;
drop table employees;
desc employees;
drop database employee;

CREATE DATABASE EMPLOYEE;
use EMPLOYEE;
create table departments (department_id int primary key,department_name varchar(100)not null);
desc departments;
create table location (location_id int auto_increment primary key,location varchar(30)unique);
desc location;
create table employees (employee_id int primary key,employee_name varchar(50)not null,gender char(1) check (gender IN('M','F')),age int check (age>=18),
email varchar(100),hire_date date default(current_date),designation varchar(100),department_id int primary key,location_id int,salary decimal(10.2)
foreign key(location_id)references location(location_id)
foreign key(department_id)references departments(department_id));