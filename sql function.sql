# 1 aggregate function

select * from studentc;

#Q1 find minimun marks from table studentc

select name,min(marks)from studentc;

# maximum marks 

select name ,max(marks)from studentc;
select * from studentc;

#Q3 count total number of students from table 

select count(*) from studentc;

#Q4 find total marks of all students from studentc table 

select sum(marks)from studentc;

#Q5 avrarge marks

select avg(marks) from studentc;

#Q7 reverse name

select name,reverse(name)from studentc;

#Q8 replace city name pune wuth mumbai

select city, replace(city, 'pune','mumbai')from studentc;

#Q9 convert name into upper case 

 select name,upper(name)from studentc;
 
 #Q10 convert name into lower case 
  
  select name,lower(name)from studentc;
  
  #Q11 join  two string together (name and city)
  
  select concat(name,'-',city) from studentc;
  
  #Q12 find position of letter 'a' in name column 
  
  select name ,instr(name,'a')from studentc;
  
  
  #Q13 show first 3 letter of name 
  
  select name, substr(name, 1,3) from studentc;
    
    
#Q14 extract the charater from left side 

select name, left(name,4) from studentc;  

#Q15 extract the charater from right side 

select name, right(name,2) from studentc;

#Q16 remove space from city column 

select city,trim(city) from studentc;
 
 # numaric function
 
 #Q17 round the marks 
 
 select marks, round(marks) from studentc;
 
 #Q18 absolute value of marks
 
 select marks, abs(marks - 100) from studentc;
 
 #Q19 find square root of marks 
 
 select marks, sqrt(marks) from studentc;
 
 #Q20  find the moduls of marks by 10 
 
 select marks,mod(marks,10) from studentc;
 
 # 21 get current date and time 
 
 select now();
 
 #Q22 get current date 
 
 select curdate();