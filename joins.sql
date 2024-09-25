create database joins;
use joins;
create table product1 (product_name varchar(100), supplier_id int );
drop table product1;
create table supplier (supplier_id int , supplier_name varchar(100));
drop table supplier;

insert into product1 values('planet oat oatmilk' , 1),('Honey nut froasted flakes',2),('Magnum double tub',5),
('Sour Patch MarchMalllows',3),('Ferrero Eggs',4);
insert into supplier values (1,'john'),(2,'Anna'),(3,'Robert'),(4,'jerry'),(5,'Tim');
select * from product1;
select * from supplier;

update supplier set supplier_id = 5 where supplier_name = 'Robert';

select product1.product_name , supplier.supplier_id from product1 inner join 
supplier on product1.supplier_id = supplier.supplier_id;

select product1.product_name , supplier.supplier_name from product1 
left join supplier on product1.supplier_id = supplier.supplier_id;

select product1.product_name, supplier.supplier_name from product1
right join supplier on product1.supplier_id = supplier.supplier_id;

select product1.product_name, supplier.supplier_name from product1
full outer join supplier on product1.supplier_id = supplier.supplier_id;

select product1.product_name, supplier.supplier_name from product1
right join supplier on product1.supplier_id = supplier.supplier_id
union 
select product1.product_name, supplier.supplier_name from product1
left join supplier on product1.supplier_id = supplier.supplier_id;


select product1.product_name , supplier.supplier_id from product1 cross join supplier;

select product1.product_name , supplier.supplier_id from product1 natural join supplier;

select  a.product_name , b.supplier_id from product1 a , product1 b where a.supplier_id = b.supplier_id;











