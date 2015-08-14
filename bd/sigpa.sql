\c postgres
drop database if exists sigpa;
create database sigpa with template=template0 encoding='UTF-8';
\c sigpa

-- Estructura de tablas:
--	Carreras:

create table area (
	id serial primary key,
	nombre text not null unique
);

create table carrera (
	id text primary key,
	nombre text not null unique,
	"idArea" int not null
);

create table "carreraSede" (
	id serial primary key,
	"idCarrera" text not null,
	"idSede" int not null,
	unique("idCarrera", "idSede")
);

create table eje (
	id serial primary key,
	nombre text not null unique
);

create table estructura (
	id serial primary key,
	nombre text not null unique,
	estructura text not null
);

create table "estructuraCS" (
	id serial primary key,
	"idCS" int not null, -- ID de carreraSede
	"idEstructura" int not null,
	unique("idCS", "idEstructura")
);

create table malla (
	id text primary key,
	fecha date not null
);

create table "mallaECS" (
	id serial primary key,
	estado boolean not null default true,
	"idECS" int not null,  -- ID de estructuraCS
	"idMalla" text not null,
	unique("idECS", "idMalla")
);

create table sede (
	id serial primary key,
	nombre text not null unique,
	fecha date not null, -- Fecha de inauguración
	telefono text not null,
	direccion text not null
);

create table "ucMalla" (
	id serial primary key,
	"horasTeoricas" real not null,
	"horasPracticas" real not null,
	tipo boolean not null,
	"idUC" text not null,
	"idMalla" text not null,
	unique("idUC", "idMalla")
);

create table "unidadCurricular" (
	id text primary key,
	nombre text not null,
	"idCarrera" text not null,
	"idEje" int not null
);

--	Personas:

create type sexo as enum('m', 'f');
create table persona (
	cedula int primary key,
	nombre text not null,
	"segundoNombre" text,
	apellido text not null,
	"segundoApellido" text,
	sexo sexo not null,
	correo text not null,
	direccion text not null,
	telefono text not null,
	"telefonoFijo" text
);

--		Profesores:

create table categoria (
	id text primary key,
	nombre text not null unique
);

create table condicion (
	id serial primary key,
	nombre text not null unique
);

create table dedicacion (
	id text primary key,
	nombre text not null unique,
	horas smallint not null
);

create table profesion (
	id serial primary key,
	nombre text not null unique
);

create table profesor (
	cedula int primary key,
	categoria text not null,
	condicion serial not null,
	dedicacion text not null,
	profesion serial not null
);

--		Usuarios:

create table historial (
	id text primary key,
	usuario text,
	descripcion text not null,
	sql text not null
);

create table usuario (
	cedula int primary key,
	contrasena text not null,
	frase text not null,
	ingreso date,
	nivel int not null
);



-- Configuración:
--	Carreras:

alter table carrera add foreign key("idArea") references area(id) on update cascade on delete restrict;
alter table "carreraSede" add foreign key("idCarrera") references carrera(id) on update cascade on delete cascade;
alter table "carreraSede" add foreign key("idSede") references sede(id) on update cascade on delete cascade;
alter table "estructuraCS" add foreign key("idCS") references "carreraSede"(id) on update cascade on delete cascade;
alter table "estructuraCS" add foreign key("idEstructura") references estructura(id) on update cascade on delete restrict;
alter table "mallaECS" add foreign key("idECS") references "estructuraCS"(id) on update cascade on delete cascade;
alter table "mallaECS" add foreign key("idMalla") references malla(id) on update cascade on delete restrict;
alter table "ucMalla" add foreign key("idUC") references "unidadCurricular"(id) on update cascade on delete cascade;
alter table "ucMalla" add foreign key("idMalla") references malla(id) on update cascade on delete cascade;
alter table "unidadCurricular" add foreign key("idEje") references eje(id) on update cascade on delete restrict;

--	Personas:

alter table usuario add foreign key(cedula) references persona(cedula) on update cascade on delete cascade;

--		Profesor:

alter table profesor add foreign key(categoria) references categoria(id) on update cascade on delete restrict;
alter table profesor add foreign key(condicion) references condicion(id) on update cascade on delete restrict;
alter table profesor add foreign key(dedicacion) references dedicacion(id) on update cascade on delete restrict;
alter table profesor add foreign key(cedula) references persona(cedula) on update cascade on delete cascade;
alter table profesor add foreign key(profesion) references profesion(id) on update cascade on delete restrict;