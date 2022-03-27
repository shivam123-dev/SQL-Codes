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
-- Updating values in the table/schema
update student set Name='Rahul' where Age = 3;
-- Selecting values from 'student' table
select * from student;
-- Selecting only some specific values
select ID, Name, Dept_Name from student where Age = 23;
-- Deleting a row
delete from student where Age = 3;
select * from student;