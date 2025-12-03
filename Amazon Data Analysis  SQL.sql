create database amazon;  
use amazon;
show tables;
Desc amazon.Customers;
select * from amazon.order_details;
Desc amazon.reviews;

#Task 3
select Name,City from amazon.Customers
where City='West Emily';

select * from amazon.Products
where Category='Fruits';

desc amazon.customers;
alter table amazon.customers
add primary key(CustomerID);

desc amazon.customers;
alter table amazon.customers
modify Age INT Not Null;

Select Name,age from amazon.customers
where age<18;

select * from amazon.products;
#Task 5
insert into amazon.products(ProductID,ProductName,Category,SubCategory,PricePerUnit,StockQuantity,SupplierID)
values(101,'Keto butter','Bakery','Sub-Bakery-1',345,453,105),
(102,'organic butter','Bakery','Sub-Bakery-4',346,454,106),
(103,'organic blueberries','Fruits','Sub-Fruits-4',347,455,107);

#Task 6
#stockquantity has been changed in the first row as 365 to 375
update amazon.products
set stockQuantity=375 
where ProductID='0006853b-74cb-44a2-91ed-699aa31c5b5b';

#Task 
select * from amazon.suppliers;

set sql_safe_updates=0;

#deleted first row of suppliers table
delete from amazon.suppliers
where City='South Ana';

#Task 8 check constraints

select * from amazon.reviews;

alter table amazon.reviews
add constraint Check_constraint CHECK (Rating between 1 and 5);

#default constraints
DESC amazon.customers;
select * from amazon.customers;

alter table amazon.customers
modify PrimeMember VARCHAR(3) DEFAULT 'NO';

#Task 9
select * from amazon.orders
where OrderDate ='2024-01-01';

select * from amazon.reviews
having Rating>4;

select * from amazon.orders
Join
amazon.products 
order by OrderAmount asc
group by ProductName;