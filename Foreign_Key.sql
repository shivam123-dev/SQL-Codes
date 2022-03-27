create table student(
    ID int(5) primary key,
    Name varchar(24) not null,
    Age int(3)
);
create table phone_number(
    ID int(5),
    Ph_No int(10),
    foreign key (ID) references student(ID)
);
insert into student values(1, 'Shivam', 12);
insert into student values(2, 'Aniket', 22);
insert into student values(3, 'Kalyan', 32);
insert into student values(4, 'Vaibhav', 12);
insert into phone_number values(1, 9140637453);
insert into phone_number values(2, 7425815328);
insert into phone_number values(1, 9211420325);
select student.ID, Name, Age, Ph_No from student
INNER JOIN phone_number
ON student.ID = phone_number.ID;