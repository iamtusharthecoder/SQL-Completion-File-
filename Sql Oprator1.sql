# oprator 

#Q1 show student who are from pune and marks greater than 80

select* from studentc

select *
from studentc
where city = 'pune' and marks > 80;

#Q2 show students who are from pune or mumbai

select * from studentc
where city ='pune' or city ='mumbai';

#Q3 show student who name start with 'a'

select * from studentc 
where name like 'a%';#(a+anything)

#Q4 show student who name ends with 'a'

select * from studentc 
where name like '%a';#(a+anything)

#Q5 show student whose name contain 'oo'

select * from studentc
where name like '%oo%';#('oo'anywhere)

#Q6 show student whose name cobtain 'a' in second place

select * from studentc
where name like '_a%';

#Q7 show student whose name contain five charater

select*from studentc
where name like '_____%';


#Q8 show student whose name contain 'a' at second position and 
# name contain total five charater 

select* from studentc 
where name like '_a____';

# show student whose name contain 't' at last position 
# and name contain total five charater 

select * from studentc
where name like '____t';


#Q9 show student from pune,mumbai

select * from studentc
where city ='pune' or city ='mumbai';


select * from studentc 
where city in ('pune','mumbai');


# show student with grade a,b 

select * from studentc
where grade in ('a','b');

#Q10 show student has marks between 70 to 90

select * from studentc
where marks between 70 and 90;


select * from studentc
where marks  >= 70 and  marks <= 90;

#Q11 show student whose grade is not null

select * from studentc
where grade is not null;

#Q12 show student whose grade is null

select * from studentc 
where grade is null;

