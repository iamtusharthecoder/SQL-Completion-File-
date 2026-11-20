# create a department table with dept_id as primmary key and 
# dept_name of type varchar(50) as not null.

create table department (
dept_id int primary key,
dept_name varchar(50) not null
);

# insert into 3 records depthname (computer science,mechanical,electrical)

insert into department values
(1, 'computer science'),
(2,'mechanical'),
(3,'electrical');


create table studentC(
id int primary key,
name varchar(50) not null,
marks int check (marks between 0 and 100),
email varchar(50) unique,
city varchar (50) default 'pune',
grade char(1),
satae varchar(50),
dept_id int,
foreign key (dept_id) references department(dept_id)
);



INSERT INTO studentC 
(ID, Name, Marks, Email, City, Grade, Satae, Dept_ID) 
VALUES
(1, 'Amit',   85, 'amit@gmail.com',   'Pune',     'A', 'Maharashtra', 1),
(2, 'Rohit',  72, 'rohit@gmail.com',  'Mumbai',   'B', 'Maharashtra', 2),
(3, 'Sneha',  90, 'sneha@gmail.com',  'Pune',     'A', 'Maharashtra', 1),
(4, 'Priya',  65, 'priya@gmail.com',  'Delhi',    'C', 'Delhi',       3),
(5, 'Karan',  55, 'karan@gmail.com',  'Pune',     'C', 'Maharashtra', 2),
(6, 'Neha',   78, 'neha@gmail.com',   'Nagpur',   'B', 'Maharashtra', 1),
(7, 'Vikas',  88, 'vikas@gmail.com',  'Pune',     'A', 'Maharashtra', 1),
(8, 'Pooja',  92, 'pooja@gmail.com',  'Bangalore','A', 'Karnataka',   3),
(9, 'Rahul',  60, 'rahul@gmail.com',  'Chennai',  'B', 'Tamil Nadu',  2),
(10,'Anita',  70, 'anita@gmail.com',  'Pune',     'B', 'Maharashtra', 1);

select * from studentC;
select * from department;



