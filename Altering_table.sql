-- Creating table/schema
create table instructor(
    ID int(100) primary key, 
    Name varchar(12) not null,
    Age int(2),
    Dept_Name varchar(3),
    Salary numeric(3,2) not null
);
insert into instructor values(1, 'Vaibhav', 12, 'CSE', 100.00);
insert into instructor values(2, 'Shivam', 22, 'CSE', 130.00);
insert into instructor values(3, 'Aniket', 32, 'CSE', 120.00);
insert into instructor values(4, 'Kalyan', 42, 'CSE', 500.00);
insert into instructor values(5, 'Rahul', 52, 'CSE', 600.00);
insert into instructor values(6, 'Aniket', 62, 'CSE', 700.00);
-- selecting distinct values
-- select distinct Name from instructor;
-- selecting all values
-- select * from instructor;


-- altering instructor table
alter table instructor drop Name;  -- Drops the column name
alter table instructor add DOB varchar(5);  -- Adds a new column name

select * from instructor;
