create database Universidad
use Universidad

create table Carreras(
nro_carrera int primary key,
nom_carrera varchar(50),
durac_carrera float
)

create table Materias(
num_materias int primary key,
nom_materia varchar(50)
)

create table Notas(
id_notas char(3)primary key,
nota int)

create table Facultad(
id_facultad char(3) primary key,
nombre_facultad varchar(100))

create table Telefono(
id_telefono char(3) primary key,
nro_telefono bigint
)

create table Direccion(
id_direccion char(3) primary key,
provincia varchar(100),
calle varchar (100))

create table Profesores(
clave_p int primary key,
nom_profesor varchar(100),
horario_profesor datetime,
id_telefono2 char(3) foreign key references Telefono(id_telefono),
id_direccion1 char(3) foreign key references Direccion(id_direccion)
)

create table Alumnos(
matricula_alu CHAR(10) primary key,
nombre_alu varchar(25),
edad_alu int,
sem_alu int,
genero_alu varchar(10),
nro_carrera1 int foreign key references Carreras(nro_carrera),
id_telefono1 char(3) foreign key references Telefono(id_telefono),
id_direccion2 char(3) foreign key references Direccion(id_direccion),
id_facultad1 char(3) foreign key references Facultad(id_facultad),
id_notas1 char(3) foreign key references Notas(id_notas)
)


create table Alum_pro(
matricula_alu1 char(10) foreign key references Alumnos(matricula_alu),
clave_p1 int foreign key references Profesores(clave_p)
)

create table Mat_alu(
matricula_alu2 char(10) foreign key references Alumnos(matricula_alu),
num_materias1 int foreign key references Materias(num_materias)
)
 
create table Pro_Mat(
clave_p2 int foreign key references Profesores(clave_p),
num_materias2 int foreign key references Materias(num_materias))


create table Pro_Facu(
clave_p3 int foreign key references Profesores(clave_p),
id_facultad2 char(3) foreign key references Facultad(id_facultad))

create table nota_materia(
id_notas2 char(3) foreign key references Notas(id_notas),
num_materias3 int foreign key references Materias(num_materias))

create table Pro_Carrera(
clave_p4 int foreign key references Profesores(clave_p),
nro_carrera2  int foreign key references Carreras(nro_carrera)
)
 create table Carrera_Mat(
 nro_carrera3 int foreign key references Carreras(nro_carrera),
 num_materias4 int foreign key references Materias(num_materias))


-- insert--
insert into Carreras values(1,'Ing Informatica',8)
insert into Carreras values(2,'Ing Sistemas',5)
insert into Carreras values(3,'Computacion',5)
insert into Carreras values(4,'Robotica',5)
insert into Carreras values(5,'Administracion de Tecnologia',5)
insert into Carreras values(6,'Cibernetica',5)
insert into Carreras values(7,'Diseño Industrial',5)
insert into Carreras values(8,'Ing en Software',5)



insert into Materias values(1,'Programacion')
insert into Materias values(2,'Base de Datos')
insert into Materias values(3,'Analisis Matematico')
insert into Materias values(4,'Algebra')
insert into Materias values(5,'Calculo 1')
insert into Materias values(6,'Sistemas Digitales')
insert into Materias values(7,'Fisica1')
insert into Materias values(8,'Sistemas y Metodos')
insert into Materias values(9,'Introduccion al Software')
insert into Materias values(10,'Estadistica y Probabilidad')

insert into Notas values(1,10)
insert into Notas values(2,10)
insert into Notas values(3,05)
insert into Notas values(4,01)
insert into Notas values(5,08)
insert into Notas values(6,04)
insert into Notas values(7,06)
insert into Notas values(8,03)
insert into Notas values(9,01)
insert into Notas values(10,02)

insert into Facultad values(01,'Ingenieria Informatica')

insert into Telefono values(01,'44445')
insert into Telefono values(02,'54251')
insert into Telefono values(03,'44445')
insert into Telefono values(04,'54251')
insert into Telefono values(05,'44445')
insert into Telefono values(06,'54251')
insert into Telefono values(07,'44445')
insert into Telefono values(08,'54251')
insert into Telefono values(09,'44445')
insert into Telefono values(10,'54251')

insert into Direccion values(01,'Caba','Flores')
insert into Direccion values(02,'Caba','Independencia')
insert into Direccion values(03,'Caba','Florida')
insert into Direccion values(04,'Caba','San telmo')
insert into Direccion values(05,'Caba','Belgrano')
insert into Direccion values(06,'Caba','Almagro')
insert into Direccion values(07,'Caba','Palermo')


insert into Profesores values(1,'Pablo','7:00',01,01)
insert into Profesores values(2,'Vanesa','8:00',01,02)
insert into Profesores values(3,'Mara','10:00',01,01)
insert into Profesores values(4,'Ana','9:00',01,02)
insert into Profesores values(5,'Marcos','12:00',01,01)
insert into Profesores values(6,'Santiago','7:00',01,02)
insert into Profesores values(7 ,'Alberto','11:00',01,01)


insert into Alumnos values(01,'Saray Cardoza',18,5,'F',1,01,01,01,1)
insert into Alumnos values(02,'Fabrizio Bruzzese',24,8,'M',1,02,02,01,2)
insert into Alumnos values(03,'Maria Perez',19,1,'F',8,03,03,01,5)
insert into Alumnos values(04,'Marcelo Azrriaga',22,5,'M',3,04,05,01,8)
insert into Alumnos values(05,'Henry Perez',18,2,'M',1,05,02,01,4)
insert into Alumnos values(06,'Gloria Herrera',23,9,'F',5,06,06,01,1)
insert into Alumnos values(07,'Jose Hurtado',21,2,'M',4,07,07,01,7)
insert into Alumnos values(08,'Roberto Bruzzese',20,3,'M',5,08,01,01,4)
insert into Alumnos values(09,'Carolina Herrera',25,10,'F',7,09,06,01,2)
insert into Alumnos values(010,'Julia Ramirez',23,5,'F',2,010,03,01,3)

select* from Alumnos

insert into Alum_pro values(01,1)
insert into Alum_pro values(02,2)
insert into Alum_pro values(03,1)
insert into Alum_pro values(04,3)
insert into Alum_pro values(05,4)
insert into Alum_pro values(06,2)
insert into Alum_pro values(07,5)
insert into Alum_pro values(08,6)
insert into Alum_pro values(09,7)
insert into Alum_pro values(010,5)


insert into Mat_alu values(01,1)
insert into Mat_alu values(02,2)
insert into Mat_alu values(03,4)
insert into Mat_alu values(04,3)
insert into Mat_alu values(05,6)
insert into Mat_alu values(06,7)
insert into Mat_alu values(07,9)
insert into Mat_alu values(08,10)
insert into Mat_alu values(09,8)
insert into Mat_alu values(010,5)

insert into Pro_Mat values(1,1)
insert into Pro_Mat values(2,2)
insert into Pro_Mat values(1,4)
insert into Pro_Mat values(3,3)
insert into Pro_Mat values(4,6)
insert into Pro_Mat values(5,9)
insert into Pro_Mat values(6,10)
insert into Pro_Mat values(7,8)
insert into Pro_Mat values(5,5)
insert into Pro_Mat values(7,2)

insert into Pro_Facu values(1,01)
insert into Pro_Facu values(2,01)
insert into Pro_Facu values(3,01)
insert into Pro_Facu values(4,01)
insert into Pro_Facu values(5,01)
insert into Pro_Facu values(6,01)
insert into Pro_Facu values(7,01)


insert into nota_materia values(1,1)
insert into nota_materia values(2,2)
insert into nota_materia values(10,5)
insert into nota_materia values(8,3)
insert into nota_materia values(4,9)
insert into nota_materia values(3,4)
insert into nota_materia values(9,6)
insert into nota_materia values(5,8)
insert into nota_materia values(6,7)
insert into nota_materia values(7,10)

insert into Pro_Carrera values(1,1)
insert into Pro_Carrera values(2,1)
insert into Pro_Carrera values(1,8)
insert into Pro_Carrera values(3,3)
insert into Pro_Carrera values(4,1)
insert into Pro_Carrera values(2,5)
insert into Pro_Carrera values(5,4)
insert into Pro_Carrera values(6,7)
insert into Pro_Carrera values(5,2)
insert into Pro_Carrera values(7,7)



insert into Carrera_Mat values(1,1)
insert into Carrera_Mat values(2,2)
insert into Carrera_Mat values(3,5)
insert into Carrera_Mat values(4,4)
insert into Carrera_Mat values(5,3)
insert into Carrera_Mat values(6,7)
insert into Carrera_Mat values(7,6)
insert into Carrera_Mat values(8,9)

select* from Carreras
select* from Alumnos
select* from Profesores


drop table Materias
drop table Notas
drop table Alum_pro
drop table Mat_alu
drop table Pro_Mat
drop table Pro_facu
drop table nota_materia
drop table Pro_carrera

drop table Alumnos

drop table Profesores

drop table Telefono

drop table Direccion

drop table Carreras

drop table Materias
drop table Carrera_Mat


SELECT P.nom_profesor AS Profesor, A.nombre_alu AS Alumno 
FROM Universidad.dbo.Profesores P
	JOIN Universidad.dbo.Alum_pro AP
		ON P.clave_p = AP.clave_p1
	JOIN Universidad.dbo.Alumnos A
		ON A.matricula_alu = AP.matricula_alu1
WHERE P.nom_profesor = 'Ana' AND A.genero_alu = 'M'

drop database "Universidad"