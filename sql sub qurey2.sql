# creating database
create database college;

#using database college
use college;

#creating table student

create table student(
Roll_no int primary key ,
name varchar(20),
Marks int not null,
Grade varchar(3),
City varchar(25)
);

insert into student values
(101,"Snehal",65,"c","pune"),
(102,"Sakshi",50,"c","mumbai"),
(103,"Rahul",65,"B","khed"),
(104,"Ram",40,"c","narayangaon"),
(105,"nehal",80,"B","junnar"),
(106,"Atul",65,"B","nashik"),
(107,"Ajay",70,"B","latur"),
(108,"Rutik",95,"A","pune"),
(109,"Govind",92,"A","pune"),
(110,"Arti",97,"A","chakan");


# selecting data from student table
use college;

select Roll_no from student;
select Name from student;
select Name,city from student;
select*from student;

use college;

#add a new column age to student table

alter table student
add age int;

update student set age = 20;
# update student set age = 21 where roll_no =102;

set sql_safe_updates =0;
set sql_safe_updates =1;



alter table student
modify age varchar (3);

describe student;
show columns from student;

alter table student
drop column age;


#rename table student to student details


rename table student to student_details;
select*from student_details

# delete all data but keep table

truncate table student_details;
select*from student_details;

#delete table permantly

drop table student_details;


# insert one new record in student table



create table Student(
id int primary key,
name varchar(20),
marks int not null,
grade varchar(3),
city varchar(25),
state varchar(50)
);

insert into student values
(1,"Snehal",65,"c","pune","maharashtra"),
(2,"ram",50,"c","mumbai","gujrat"),
(3,"Rahul",65,"B","khed","karnatka"),
(4,"Ram",40,"c","narayangaon","tamil nadu"),
(5,"nehal",80,"B","junnar","maharashatra"),
(6,"Atul",65,"B","nashik","punjab"),
(7,"Ajay",70,"B","latur","goa"),
(8,"Rutik",95,"A","pune","gujrat"),
(9,"Govind",92,"A","pune","punjab"),
(10,"Arti",97,"A","chakan","maharashtra");

select * from student;

#update marks of nehal 90
update student
set marks = 90
where id = 5;

#update city of ram from mumbai to nagpur
update student 
set city = "nagpur"
where name = 'ram';

select * from student;

# delete record of student ehere id = 3

delete from student
where id = 3;

select * from student;

#delete all students from gujarat

delete from student 
where state ="gujrat";

select * from student;

# display all record
select * from student;

# display student from pune city
select * from student
where city ="pune";

#display students with marks > 50
select * from student
where marks > 50;

# disable safe updsade mode 
set sql_safe_updates=0;

select name,marks from student
where marks >50;

#TCL

start transaction;

delete from student where marks < 70;
delete from student where marks < 60;

select * from student;

rollback;
 
select * from student; 


update student 
set marks = marks + 5
where city = "pune";

savepoint sp1;

delete from student 
where marks = 70 ;

rollback to sp1;


#turn on auto commit 
set autocommit = 0;

select*from student;

commit;

#DLC

