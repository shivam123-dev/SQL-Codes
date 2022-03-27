-- Creating table/schema
create table student(
    ID int(2) primary key,
    Name varchar(25) not null,
    Age int(2),
    Dept_Name varchar(15)
);
-- Inserting values in the table/schema
insert into student values(1, 'Shivam', 23, 'CSE');
insert into student values(2, 'Aniket', 12, 'CSE');
insert into student values(3, 'Kalyan', 3, 'CSE');
-- Selecting values from 'student' table
select * from student;