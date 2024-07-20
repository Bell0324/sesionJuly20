create database dbregistro;
go
use dbregistro;
go 

create table ciudades(
id int primary key identity(1,1),
nombre nvarchar (60) not null,
estado bit default 1
);

create table personas(
id int primary key identity(1,1),
nombres nvarchar(40)not null,
apellidos nvarchar(40) not null,
ciudad_id int foreign key references ciudades(id) not null,
activo bit default 1
);

-- consultgs de insertar 
insert into ciudades(nombre) values('masaya'),('granada'),('managua'),('leon');

insert into personas(nombres, apellidos, ciudad_id)
values
('belen', 'talavera', 3),
('sergio', 'rivas', 1),
('justin', 'sandigo', 3),
('erick', 'martinez', 3);

-- visualizar datos
-- crud
SELECT * FROM ciudades;
SELECT * FROM personas;

select id as 'Codigo', nombre as 'Ciudad', estado as 'Est' from ciudades;

select personas.id as Codigo, personas.nombres + '' + personas.apellidos as 'NombreCompleto',
ciudades.nombre as Ciudad from personas inner join ciudades on personas.ciudad_id = ciudades.id

-- variables en sql

declare @nombre nvarchar(40)
set @nombre = '%e%'

select personas.id as Codigo, personas.nombres + '' + personas.apellidos as 'NombreCompleto',
ciudades.nombre as Ciudad from personas inner join ciudades on personas.ciudad_id = ciudades.id where nombres like @nombre