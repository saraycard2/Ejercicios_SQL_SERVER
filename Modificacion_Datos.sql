create database modificar

use modificar

create table producto(
clave_prod int,
nom_prod varchar(20),
precio float,
constraint pk_cp primary key (clave_prod))

create table cliente(
clave_clie int,
nom_clie varchar(20),
constraint pk_cc primary key (clave_clie))

create table nota(
folio int,
clave_prod1 int,
clave_clie1 int,
cant int,
subtot float,
constraint fk_cp1 foreign key (clave_prod1) references producto (clave_prod),
constraint fk_cc1 foreign key (clave_clie1) references cliente (clave_clie))

insert into producto values (1,'papas',7)
insert into producto values (2,'refresco',9)
insert into producto values (3,'galletas',9)

insert into cliente values (1,'ana')
insert into cliente values (2,'sergio')

insert into nota values (1,1,1,4,null)
insert into nota values (2,2,2,1,null)
 --Asi puedo cambiar el nombre del cliente ya sea por ana,laura,etc
update cliente 
set nom_clie='ana'
where clave_clie = 1
select *from cliente

--Asi puedo cambiar el dato de subtot en la tabla nota, que es la multiplicacion de cant(tabla nota) y precio(tabla producto)
--por eso uso un inner join
update nota
set subtot = cant*precio
from nota inner join producto on producto.clave_prod=nota.clave_prod1


--Finalmente asi puedo ver todos los datos que ya cambie con un inner join

select nom_clie,nom_prod,cant,precio,subtot
from nota inner join producto on producto.clave_prod=nota.clave_prod1
inner join cliente on cliente.clave_clie=nota.clave_clie1



 