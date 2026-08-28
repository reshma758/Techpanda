create database DA_11 ;
use DA_11 ;

create table staff (
Staff_ID int primary key auto_increment,
Staff_Name varchar(30) not null,
Email_iD varchar(60) unique,
Phone_No bigint unique,
Location Varchar(20) default "Chennai");

INSERT INTO Staff (Staff_ID,Staff_Name, Email_ID, Phone_No, Location)
VALUES
(101,'Jennifer', 'jennifer@gmail.com', 9876543210, 'Chennai');
INSERT INTO Staff (Staff_Name, Email_ID, Phone_No, Location)
VALUES
('Sowmya', 'sowmya@gmail.com', 9876543211, 'Bangalore'),
('Maran', 'maran@gmail.com', 9876543212, 'Trichy'),
('Anitha', 'anitha@gmail.com', 9876543213, 'Cuddalore'),
('Akash', 'akash@gmail.com', 9876543214, 'Pondicherry');

select* from staff

create table Students (
Roll_No int primary key auto_increment,
Std_Name varchar(30)not null,
Gender char (1),
Std_Age int check ( Std_Age=14 or Std_Age=15),
DOB date,
Location varchar(20) default "Chennai",
Staff_ID int,
foreign key (Staff_ID ) references Staff ( Staff_ID ));

Select* from students

INSERT INTO students
(Roll_No,Std_Name, Gender, Std_Age, DOB, Location, Staff_ID)
VALUES
(1000,'Arun', 'M', 15, '2011-05-12', 'Chennai', 101);
INSERT INTO students
(Std_Name, Gender, Std_Age, DOB, Location, Staff_ID)
VALUES
('Priya', 'F', 14, '2012-02-18', 'Chennai', 101),
('Karthik', 'M', 15, '2011-08-25', 'Cuddalore', 101),
('Divya', 'F', 14, '2012-06-10', 'Chennai', 101),
('Vijay', 'M', 15, '2011-11-03', 'Pondicherry', 101),
('Keerthana', 'F', 14, '2012-09-21', 'Chennai', 101),

-- Staff_ID 102 → 6 students
('Rahul', 'M', 15, '2011-04-15', 'Bangalore', 102),
('Sneha', 'F', 14, '2012-01-28', 'Bangalore', 102),
('Manoj', 'M', 15, '2011-07-19', 'Trichy', 102),
('Harini', 'F', 14, '2012-05-06', 'Bangalore', 102),
('Surya', 'M', 15, '2011-10-14', 'Bangalore', 102),
('Nandhini', 'F', 14, '2012-08-30', 'Trichy', 102),

-- Staff_ID 103 → 6 students
('Madhan', 'M', 15, '2011-03-11', 'Trichy', 103),
('Pavithra', 'F', 14, '2012-04-22', 'Trichy', 103),
('Gokul', 'M', 15, '2011-06-17', 'Chennai', 103),
('Aishwarya', 'F', 14, '2012-07-09', 'Trichy', 103),
('Dinesh', 'M', 15, '2011-09-26', 'Cuddalore', 103),
('Swetha', 'F', 14, '2012-11-15', 'Trichy', 103),

-- Staff_ID 104 → 6 students
('Sanjay', 'M', 15, '2011-02-05', 'Cuddalore', 104),
('Lakshmi', 'F', 14, '2012-03-16', 'Cuddalore', 104),
('Praveen', 'M', 15, '2011-05-29', 'Chennai', 104),
('Janani', 'F', 14, '2012-06-24', 'Cuddalore', 104),
('Ashwin', 'M', 15, '2011-08-13', 'Pondicherry', 104),
('Meena', 'F', 14, '2012-10-07', 'Cuddalore', 104),

-- Staff_ID 105 → 6 students
('Akshay', 'M', 15, '2011-01-20', 'Pondicherry', 105),
('Kavya', 'F', 14, '2012-02-12', 'Pondicherry', 105),
('Rohit', 'M', 15, '2011-04-27', 'Chennai', 105),
('Bhavya', 'F', 14, '2012-05-19', 'Pondicherry', 105),
('Naveen', 'M', 15, '2011-07-31', 'Cuddalore', 105),
('Deepika', 'F', 14, '2012-09-05', 'Pondicherry', 105);

select* from students