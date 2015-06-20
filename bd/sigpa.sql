\c postgres
drop database if exists sigpa;
create database sigpa with template=template0 encoding='UTF-8';
\c sigpa

-- Estructura de tablas:
--	Carreras:

create table area
(
	id serial primary key,
	nombre text not null unique
);

create table carrera
(
	id text primary key,
	nombre text not null unique,
	"idArea" int not null
);

create table "carreraSede"
(
	id serial primary key,
	"idCarrera" text not null,
	"idSede" int not null,
	fecha date not null,
	unique("idCarrera", "idSede")
);

create table eje
(
	id serial primary key,
	nombre text not null unique
);

create table estructura
(
	id serial primary key,
	nombre text not null unique
);

create table "estructuraCS"
(
	id serial primary key,
	"idCS" int not null, -- ID de carreraSede
	"idEstructura" int not null,
	unique("idCS", "idEstructura")
);

create table malla
(
	id text primary key,
	fecha date not null,
	estado boolean not null default true,
	"idECS" int not null  -- ID de estructuraCS
);

create table sede
(
	id serial primary key,
	nombre text not null unique,
	fecha date not null, -- Fecha de inauguración
	telefono text not null,
	direccion text not null
);

create table "unidadCurricular"
(
	id text primary key,
	nombre text not null unique,
	"horasTeoricas" real not null,
	"hroasPracticas" real not null,
	tipo boolean not null,
	"idEje" int not null
);

create table "ucMalla"
(
	id serial primary key,
	"idUC" text not null,
	"idMalla" text not null,
	unique("idUC", "idMalla")
);



--	Configuración:
--		Carreras:

alter table carrera add foreign key("idArea") references area(id) on update cascade on delete restrict;
alter table "carreraSede" add foreign key("idCarrera") references carrera(id) on update cascade on delete cascade;
alter table "carreraSede" add foreign key("idSede") references sede(id) on update cascade on delete cascade;
alter table "estructuraCS" add foreign key("idCS") references "carreraSede"(id) on update cascade on delete cascade;
alter table "estructuraCS" add foreign key("idEstructura") references estructura(id) on update cascade on delete restrict;
alter table malla add foreign key("idECS") references "estructuraCS"(id) on update cascade on delete restrict;
alter table "unidadCurricular" add foreign key("idEje") references eje(id) on update cascade on delete restrict;
alter table "ucMalla" add foreign key("idUC") references "unidadCurricular"(id) on update cascade on delete restrict;
alter table "ucMalla" add foreign key("idMalla") references malla(id) on update cascade on delete cascade;