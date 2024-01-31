create database ejemplot1;

use ejemplot1;

create table productos(
productosid int not null identity(1,1),
nombreproducto nvarchar(40) not null,
precio money not null,
stock smallint not null,
importe as
(precio * stock),
categoria varchar(15)not null,
constraint pk_producto
primary key (productosid)

);

drop table productos;

select * from productos;
select * from sys tables;
--permite visualizar las caracteristicas de las tablas

insert into ejemplot1.dbo.productos
select p.ProductName, p.UnitPrice,p.UnitsInStock,c.CategoryName from  Northwind.dbo.Products as p
inner join Northwind.dbo.Categories as c
on c.CategoryID =p.CategoryID;