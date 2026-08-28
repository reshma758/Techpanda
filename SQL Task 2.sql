create database jp ;
use jp;

create table department (
Dep_ID int primary key,
Dep_Name varchar (20) not null );
insert into department(Dep_ID, Dep_Name)values(101, "HR");

insert into department(Dep_ID, Dep_Name)values(102, "Finance");
insert into department(Dep_ID, Dep_Name)values(103, "Sales");
insert into department(Dep_ID, Dep_Name)values(104, "IT");
insert into department(Dep_ID, Dep_Name)values(105, "Marketing"); 
 select *from department
 
 create table Employees (
Emp_ID int primary key auto_increment,
Emp_Name varchar(20) not null,
Dep_ID int,
Email_ID varchar(50) unique,
Salary decimal (10,2) check (salary > 20000),
City varchar (50) default "chennai",
foreign key (Dep_ID) references department (Dep_ID));

select*from employees

insert into employees values (1001,"Ammu", 101,"ammu@gmail.com", 25000,"Chennai");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city )values ("Prakash", 103,"prakash@gmail.com", 22000,"Chennai");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city )values ("lavanya", 104,"lavanya@gmail.com", 23000,"Null");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city )values("Arun", 102, "arun@gmail.com", 22500, "Trichy");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary)values("Dhviya", 105, "dhivya@gmail.com", 23500);
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city)values("Priya", 103, "priya@gmail.com", Null,"coimbatore");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city)values("Karthik", 102, 'karthik@gmail.com', 28000, "Madurai");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city)values("Gowtham", 104, "gowtham@gmail.com", 26500, "Chennai");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city)values("Harini", 103, "harini@gmail.com", 24500, "Madurai");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city)values("Dinesh", 102, "dinesh@gmail.com", 28500, "Salem");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city)values("Rahul", 101, "rahul@gmail.com", 30000, "Bangalore");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city)values("Swetha", 102, "swetha@gmail.com", 23500, "Pondicherry");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city)values("Vijay", 104, "vijay@gmail.com", 27500, "Chenna");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city)values("Vignesh",105, "vignesh@gmail.com", 26000, "Salem");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city)values("Meena", 101, "meena@gmail.com", 22000, "Chennai");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city)values("Manoj", 103, "manoj@gmail.com", 32000, "Bangalore");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city)values("Keerthana",103, "keerthana@gmail.com", null, "Trichy");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city)values("Manju", 102, "manju@gmail.com", 26000, "karur");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city)values("Vasu", 102, "vasu@gmail.com", 22000, "Cuddalore");
insert into employees (Emp_Name, Dep_ID, Email_ID, salary,city)values("Bhavani", 103, "Bhavani@gmail.com", 32000, "Kodaikanal");
select* from employees