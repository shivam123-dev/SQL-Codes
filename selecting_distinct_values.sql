-- Creating table/schema
create table student(
    ID int(2) primary key,
    Name varchar(25) not null,
    Age int(2),
    Dept_Name varchar(15)
);
-- Inserting values in the table/schema
insert into student values(1, 'Shivam', 12, 'CSE');
insert into student values(2, 'Vaibhav', 22, 'CSE');
insert into student values(3, 'Aniket', 42, 'CSE');
insert into student values(4, 'Kalyan', 52, 'CSE');
insert into student values(5, 'Kalyan', 52, 'CSE');
insert into student values(6, 'Kalyan', 52, 'CSE');
-- selecting all the values 
select * from student;
-- selecting only distinct values
select distinct Name, Age from student;