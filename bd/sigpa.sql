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
	"idCoordinador" int not null unique,
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
	"horasPracticas" real,
	tipo boolean not null,
	periodo text not null,
	"idUC" text not null,
	"idMalla" text not null,
	unique("idUC", "idMalla", periodo)
);

create table "unidadCurricular" (
	id text primary key,
	nombre text not null,
	renombrable boolean not null default false,
	"idCarrera" text not null,
	"idEje" int not null
);

--	Personas:

create type sexo as enum('m', 'f');
-- m -> Masculino
-- f -> Femenino
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

create table pertenece (
	"idCS" int not null,
	"idProfesor" int not null,
	primary key("idCS", "idProfesor")
);

create table profesion (
	id serial primary key,
	nombre text not null unique
);

create table profesor (
	cedula int primary key,
	categoria text not null,
	condicion int not null,
	dedicacion text not null,
	profesion int not null
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

--	Planificación:

create table carga (
	id bigserial primary key,
	"dividirHT" boolean default false,
	"nuevoNombre" text,
	"idProfesor" int not null,
	"idSeccion" int not null,
	"idSuplente" int,
	"idUC" text not null,
	unique("idProfesor", "idSeccion", "idUC")
);

create type tipo as enum('p', 'a');
-- p -> Planificación
-- a -> Académico
create table periodo (
	"ID" serial primary key,
	id text not null,
	"fechaInicio" date not null,
	"fechaFin" date not null,
	tipo tipo not null,
	"idECS" int not null,
	unique(id, tipo, "idECS")
);

create type turno as enum('d', 'n');
-- d -> Diurno
-- n -> Nocturno
create table seccion (
	"ID" serial primary key,
	id text not null,
	turno turno not null,
	multiplicador real not null,
	grupos boolean default false,
	"idMECS" int not null,
	"idPeriodo" int not null, -- Periodo académico
	"periodoEstructura" text not null,
	unique(id, "idPeriodo", "periodoEstructura")
);



-- Configuración:
--	Carreras:

alter table carrera add foreign key("idArea") references area(id) on update cascade on delete restrict;
alter table "carreraSede" add foreign key("idCarrera") references carrera(id) on update cascade on delete cascade;
alter table "carreraSede" add foreign key("idSede") references sede(id) on update cascade on delete cascade;
alter table "estructuraCS" add foreign key("idCS") references "carreraSede"(id) on update cascade on delete cascade;
alter table "estructuraCS" add foreign key("idEstructura") references estructura(id) on update cascade on delete restrict;
alter table "mallaECS" add foreign key("idECS") references "estructuraCS"(id) on update cascade on delete cascade;
alter table "mallaECS" add foreign key("idMalla") references malla(id) on update cascade on delete cascade;
alter table "ucMalla" add foreign key("idUC") references "unidadCurricular"(id) on update cascade on delete cascade;
alter table "ucMalla" add foreign key("idMalla") references malla(id) on update cascade on delete cascade;
alter table "unidadCurricular" add foreign key("idEje") references eje(id) on update cascade on delete restrict;

--	Personas:

alter table usuario add foreign key(cedula) references persona(cedula) on update cascade on delete cascade;

--		Profesor:

alter table pertenece add foreign key("idCS") references "carreraSede"(id) on update cascade on delete cascade;
alter table pertenece add foreign key("idProfesor") references profesor(cedula) on update cascade on delete cascade;
alter table profesor add foreign key(categoria) references categoria(id) on update cascade on delete restrict;
alter table profesor add foreign key(condicion) references condicion(id) on update cascade on delete restrict;
alter table profesor add foreign key(dedicacion) references dedicacion(id) on update cascade on delete restrict;
alter table profesor add foreign key(cedula) references persona(cedula) on update cascade on delete cascade;
alter table profesor add foreign key(profesion) references profesion(id) on update cascade on delete restrict;

--	Planificación:

alter table carga add foreign key("idProfesor") references profesor(cedula) on update cascade on delete restrict;
alter table carga add foreign key("idSeccion") references seccion("ID") on update cascade on delete restrict;
alter table carga add foreign key("idUC") references "unidadCurricular"(id) on update cascade on delete restrict;
alter table periodo add foreign key("idECS") references "estructuraCS"(id) on update cascade on delete restrict;
alter table seccion add foreign key("idMECS") references "mallaECS"(id) on update cascade on delete restrict;
alter table seccion add foreign key("idPeriodo") references periodo("ID") on update cascade on delete restrict;



--	Horarios:

CREATE TABLE edificio (
    id serial primary key,
    edificio character varying,
    id_sede int not null
);


--
-- Name: edificio_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE edificio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: edificio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE edificio_id_seq OWNED BY edificio.id;


--
-- Name: salones; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE salones (
    id integer NOT NULL,
    salon character varying,
    cod_edi int not null,
    tipo text
);


--
-- Name: salones_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE salones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: salones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE salones_id_seq OWNED BY salones.id;


--
-- Name: horario; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE horario (
    id_enlace character varying NOT NULL,
    periodo int not null,
    thora character varying,
    chora character varying,
    seccion int not null,
    materia character varying,
    profesor int not null,
    carrera int not null,
    salon integer,
    hora integer,
    id_bloque integer,
    id integer DEFAULT nextval('salones_id_seq'::regclass)
);


--
-- Name: salones_edificio_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE salones_edificio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: salones_edificio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE salones_edificio_id_seq OWNED BY salones.cod_edi;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY salones ALTER COLUMN id SET DEFAULT nextval('salones_id_seq'::regclass);


--
-- Name: edificio_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY edificio
    ADD CONSTRAINT edificio_pkey PRIMARY KEY (id);


--
-- Name: salones_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY salones
    ADD CONSTRAINT salones_pkey PRIMARY KEY (id);


--
-- Name: id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX id ON horario USING btree (id);


--
-- Name: horario_salon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY horario
    ADD CONSTRAINT horario_salon_id_fkey FOREIGN KEY (salon) REFERENCES salones(id);


--
-- Name: salones_edificio_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY salones
    ADD CONSTRAINT salones_edificio_id_fkey FOREIGN KEY (cod_edi) REFERENCES edificio(id);