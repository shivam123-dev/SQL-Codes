create table customer(
    ID int(100) primary key, 
    Name varchar(12) not null,
    Age int(2)
);
create table orders(
    OID int(100) primary key,
    Customer_ID int(100) not null unique, 
    Amount int(5)
);
insert into customer values(1, 'A', 12);
insert into customer values(2, 'B', 22);
insert into customer values(3, 'C', 32);
insert into orders values(1, 2, 500);
insert into orders values(2, 1, 600);
insert into orders values(3, 3, 700);

-- Inner Join
select ID, Name, Customer_ID, Amount from customer
INNER JOIN orders 
ON customer.ID = orders.Customer_ID

-- Outer Join
-- 1) Left Outer Join
select ID, Name, Customer_ID, Amount from customer
LEFT JOIN orders
ON customer.ID = orders.Customer_ID

-- 2) Right Outer Join
select ID, Name, Customer_ID, Amount from customer
RIGHT JOIN orders
ON customer.ID = orders.Customer_ID

-- 3) Full Outer Join
select ID, Name, Customer_ID, Amount from customer
FULL JOIN orders
ON customer.ID = orders.Customer_ID
