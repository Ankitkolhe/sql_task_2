create table employee(
employee_id int primary key,
employee_name varchar,
salary int,
address varchar,
joining_date date)
select * from employee

create table manager(
manager_id int primary key,
mobile_number int not null,
manager_name varchar,
address varchar,
joining_date date
)

create table job_title(
job_id int primary key,
job_title varchar,
employee_id int,

foreign key (employee_id) REFERENCES employee(employee_id
))

create table department(
department_id int primary key,
department_name varchar,
manager_id int,
manager_name varchar,
foreign key(manager_id) references manager(manager_id


create table comp_employee_data(
job_id int,
employee_name varchar,
joining_date date,
department_id int,
department_name varchar,
manager_id int,
manager_name varchar,
foreign key(job_id) references job_title(job_id),
foreign key(department_id) references department(department_id)
)