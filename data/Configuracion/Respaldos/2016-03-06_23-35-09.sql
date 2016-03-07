--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: area; Type: TABLE DATA; Schema: public; Owner: -
--

COPY area (id, nombre) FROM stdin;
1	Tecnología
2	Ciencias Sociales
3	Ciencias Agricolas y Ambientales
4	Salud
\.


--
-- Name: area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('area_id_seq', 4, true);


--
-- Data for Name: carrera; Type: TABLE DATA; Schema: public; Owner: -
--

COPY carrera (id, nombre, "idArea", "idCoordinadorInst") FROM stdin;
05	PNF Geociencias	1	\N
06	PNF Turismo	2	\N
07	PNF Contaduria	2	\N
10	PNF Psicología Social	2	\N
11	PNF Historia	2	\N
02	PNF Construcción Civil	1	\N
04	PNF Administración	2	\N
12	PNF Enfermería Integral Comunitaria	4	\N
42	Construccion Civil	1	\N
44	Turismo	3	\N
45	Informatica	1	\N
46	Hoteleria	3	\N
47	Contaduria	3	\N
48	Manejo de Emergencias	2	\N
43	Mineria	1	\N
41	Agrotecnia	3	\N
50	Enfermeria	2	\N
01	PNF Agroalimentación	3	\N
03	PNF Informática	1	\N
49	Radiología e Imagenología	3	\N
09	PNF Seguridad Alimentaria Y Cultura Nutricional	3	\N
08	PNF Fonoaudiología	2	\N
\.


--
-- Data for Name: sede; Type: TABLE DATA; Schema: public; Owner: -
--

COPY sede (id, nombre, fecha, telefono, direccion) FROM stdin;
1	Bailadores	2009-03-03	0000-0000000	Bailadores
2	Barinas	2009-11-12	0000-0000000	Barinas
3	Ejido	2009-03-03	0274-2210746	Av. Monseñor Duque, Ejido
4	El Vigía	2013-01-01	0000-0000000	El Vigía
5	Santa Juana	2009-03-03	0000-0000000	Sector Santa Juana, Mérida
6	Santa Lucía	2010-09-25	0000-0000000	Santa Lucía
7	Tucaní	2009-03-03	0000-0000000	Tucaní
\.


--
-- Data for Name: carreraSede; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "carreraSede" (id, "idCarrera", "idCoordinador", "idSede") FROM stdin;
2	02	3767311	3
5	05	2149217	3
6	06	3910823	3
7	07	3939687	3
4	04	8037619	3
11	12	3966127	3
1	01	15142314	3
10	03	2288079	1
3	03	10256095	3
13	49	14916156	3
14	09	3309773	3
8	08	8021736	3
\.


--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: -
--

COPY categoria (id, nombre) FROM stdin;
No	Sin asignar
Agre	Agregado
Asist	Asistente
Asoc	Asociado
Aux	Auxiliar Docente
Inst	Instructor
Tit	Titular
AuxII	Auxiliar Docente II
AuxIII	Auxiliar Docente III
AuxIV	Auxiliar Docente IV
AuxV	Auxiliar Docente V
\.


--
-- Data for Name: condicion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY condicion (id, nombre) FROM stdin;
0	Sin asignar
1	Contratado
2	Jubilado
3	Ordinario
4	Suplente
\.


--
-- Data for Name: dedicacion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY dedicacion (id, nombre, horas) FROM stdin;
No	Sin asignar	0
EXC	Exclusiva	16
MT	Medio Tiempo	12
TC	Tiempo Completo	16
TCv	Tiempo Convencional	7
\.


--
-- Data for Name: eje; Type: TABLE DATA; Schema: public; Owner: -
--

COPY eje (id, nombre) FROM stdin;
1	Acreditable
2	Profesional
3	Proyecto
4	Socio Ambiental
5	Socio Crítico
\.


--
-- Data for Name: estructura; Type: TABLE DATA; Schema: public; Owner: -
--

COPY estructura (id, nombre, estructura) FROM stdin;
1	PNF Trimestral	 { "periodos" : [ { "nombre" : "Trayecto inicial", "id" : "T0", "duracion" : "3", "subperiodos" : false }, { "nombre" : "Trayecto 1", "id" : "T1", "duracion" : false, "subperiodos" : [ { "nombre" : "Trimestre 1", "id" : "t1", "duracion" : "3" }, { "nombre" : "Trimestre 2", "id" : "t2", "duracion" : "3" }, { "nombre" : "Trimestre 3", "id" : "t3", "duracion" : "3" } ] }, { "nombre" : "Trayecto 2", "id" : "T2", "duracion" : false, "subperiodos" : [ { "nombre" : "Trimestre 1", "id" : "t1", "duracion" : "3" }, { "nombre" : "Trimestre 2", "id" : "t2", "duracion" : "3" }, { "nombre" : "Trimestre 3", "id" : "t3", "duracion" : "3" } ] }, { "nombre" : "Trayecto 3", "id" : "T3", "duracion" : false, "subperiodos" : [ { "nombre" : "Trimestre 1", "id" : "t1", "duracion" : "3" }, { "nombre" : "Trimestre 2", "id" : "t2", "duracion" : "3" }, { "nombre" : "Trimestre 3", "id" : "t3", "duracion" : "3" } ] }, { "nombre" : "Trayecto 4", "id" : "T4", "duracion" : false, "subperiodos" : [ { "nombre" : "Trimestre 1", "id" : "t1", "duracion" : "3" }, { "nombre" : "Trimestre 2", "id" : "t2", "duracion" : "3" }, { "nombre" : "Trimestre 3", "id" : "t3", "duracion" : "3" } ] } ] } 
2	Semestral	\n\t\t{\n\t\t\t"periodos" : [\n\t\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Semestre I",\n\t\t\t\t\t"id" : "S1",\n\t\t\n\t\t\t\t\t"duracion" : "6",\n\t\t\t\t\t"subperiodos" : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Semestre II",\n\t\t\t\t\t"id" : "S2",\n\t\t\n\t\t\t\t\t"duracion" : "6",\n\t\t\t\t\t"subperiodos" : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Semestre III",\n\t\t\t\t\t"id" : "S3",\n\t\t\n\t\t\t\t\t"duracion" : "6",\n\t\t\t\t\t"subperiodos" : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Semestre IV",\n\t\t\t\t\t"id" : "S4",\n\t\t\n\t\t\t\t\t"duracion" : "6",\n\t\t\t\t\t"subperiodos" : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Semestre V",\n\t\t\t\t\t"id" : "S5",\n\t\t\n\t\t\t\t\t"duracion" : "6",\n\t\t\t\t\t"subperiodos" : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Semestre VI",\n\t\t\t\t\t"id" : "S6",\n\t\t\n\t\t\t\t\t"duracion" : "6",\n\t\t\t\t\t"subperiodos" : false\n\t\t\t\n\t\t\t\t}\n\t\t\t]\n\t\t}\n\t
3	Prosecución	\n\t\t{\n\t\t\t"periodos" : [\n\t\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Trayecto de Transicion",\n\t\t\t\t\t"id" : "TT",\n\t\t\n\t\t\t\t\t"duracion" : "3",\n\t\t\t\t\t"subperiodos" : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Trayecto 3",\n\t\t\t\t\t"id" : "T3",\n\t\t\n\t\t\t\t\t"duracion" : false,\n\t\t\t\t\t"subperiodos" : [\n\t\t\t\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Trimestre 1",\n\t\t\t\t\t\t\t"id" : "t1",\n\t\t\t\t\t\t\t"duracion" : "3"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Trimestre 2",\n\t\t\t\t\t\t\t"id" : "t2",\n\t\t\t\t\t\t\t"duracion" : "3"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Trimestre 3",\n\t\t\t\t\t\t\t"id" : "t3",\n\t\t\t\t\t\t\t"duracion" : "3"\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Trayecto 4",\n\t\t\t\t\t"id" : "T4",\n\t\t\n\t\t\t\t\t"duracion" : false,\n\t\t\t\t\t"subperiodos" : [\n\t\t\t\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Trimestre 1",\n\t\t\t\t\t\t\t"id" : "t1",\n\t\t\t\t\t\t\t"duracion" : "3"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Trimestre 2",\n\t\t\t\t\t\t\t"id" : "t2",\n\t\t\t\t\t\t\t"duracion" : "3"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Trimestre 3",\n\t\t\t\t\t\t\t"id" : "t3",\n\t\t\t\t\t\t\t"duracion" : "3"\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\n\t\t\t\t}\n\t\t\t]\n\t\t}\n\t
4	PNF Semestral	\n\t\t{\n\t\t\t"periodos" : [\n\t\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Trayecto Inicial",\n\t\t\t\t\t"id" : "T0",\n\t\t\n\t\t\t\t\t"duracion" : "3",\n\t\t\t\t\t"subperiodos" : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Trayecto 1",\n\t\t\t\t\t"id" : "T1",\n\t\t\n\t\t\t\t\t"duracion" : false,\n\t\t\t\t\t"subperiodos" : [\n\t\t\t\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Semestre 1",\n\t\t\t\t\t\t\t"id" : "s1",\n\t\t\t\t\t\t\t"duracion" : "6"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Semestre 2",\n\t\t\t\t\t\t\t"id" : "s2",\n\t\t\t\t\t\t\t"duracion" : "6"\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Trayecto 2",\n\t\t\t\t\t"id" : "T2",\n\t\t\n\t\t\t\t\t"duracion" : false,\n\t\t\t\t\t"subperiodos" : [\n\t\t\t\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Semestre 1",\n\t\t\t\t\t\t\t"id" : "s1",\n\t\t\t\t\t\t\t"duracion" : "6"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Semestre 2",\n\t\t\t\t\t\t\t"id" : "s2",\n\t\t\t\t\t\t\t"duracion" : "6"\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Trayecto 3",\n\t\t\t\t\t"id" : "T3",\n\t\t\n\t\t\t\t\t"duracion" : false,\n\t\t\t\t\t"subperiodos" : [\n\t\t\t\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Semestre 1",\n\t\t\t\t\t\t\t"id" : "s1",\n\t\t\t\t\t\t\t"duracion" : "6"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Semestre 2",\n\t\t\t\t\t\t\t"id" : "s2",\n\t\t\t\t\t\t\t"duracion" : "6"\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Trayecto 4",\n\t\t\t\t\t"id" : "T4",\n\t\t\n\t\t\t\t\t"duracion" : false,\n\t\t\t\t\t"subperiodos" : [\n\t\t\t\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Semestre 1",\n\t\t\t\t\t\t\t"id" : "s1",\n\t\t\t\t\t\t\t"duracion" : "6"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Semestre 2",\n\t\t\t\t\t\t\t"id" : "s2",\n\t\t\t\t\t\t\t"duracion" : "6"\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\n\t\t\t\t}\n\t\t\t]\n\t\t}\n\t
\.


--
-- Data for Name: estructuraCS; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "estructuraCS" (id, "idCS", "idEstructura") FROM stdin;
1	3	1
2	4	1
4	4	3
6	10	1
7	11	1
8	1	1
9	1	3
10	3	3
12	13	2
14	14	4
15	8	1
\.


--
-- Data for Name: malla; Type: TABLE DATA; Schema: public; Owner: -
--

COPY malla (id, fecha) FROM stdin;
PNFA-2010-2	2015-10-01
PNFA-2014-PRO	2015-10-19
PNFA-2014	2015-10-12
PNFA-2010-3	2015-10-27
PNFAg	2016-02-17
PNFAg-2-PRO	2016-02-24
PNFAg-2	2016-02-17
PNFI-2012	2011-04-27
PNFI-2012-PRO	2011-04-27
R-2010	2016-03-01
PNFSACN-2014	2016-03-02
PNFF-2013	2016-03-02
\.


--
-- Data for Name: mallaECS; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "mallaECS" (id, estado, "idECS", "idMalla") FROM stdin;
1	t	1	PNFI-2012
2	t	2	PNFA-2014
5	t	4	PNFA-2014-PRO
8	t	2	PNFA-2010-3
9	t	8	PNFAg
10	t	8	PNFAg-2
11	t	9	PNFAg-2-PRO
12	t	10	PNFI-2012-PRO
4	f	2	PNFA-2010-2
13	t	12	R-2010
14	t	14	PNFSACN-2014
15	t	15	PNFF-2013
\.


--
-- Data for Name: periodo; Type: TABLE DATA; Schema: public; Owner: -
--

COPY periodo ("ID", id, "fechaInicio", "fechaFin", tipo, "idECS") FROM stdin;
5	2015-B	2015-10-27	2015-10-28	p	2
6	2015-B	2015-05-18	2015-10-02	a	2
7	2015-B	2015-10-27	2015-10-28	p	4
8	2015-B	2015-05-18	2015-10-02	a	4
13	2015-B	2016-02-17	2016-02-26	p	9
14	2015-B	2015-05-18	2016-02-26	a	9
11	2015-B	2016-02-17	2016-02-26	p	8
12	2015-B	2015-05-18	2016-02-26	a	8
15	2015-B	2016-02-29	2016-03-02	p	1
16	2015-B	2015-05-18	2016-03-02	a	1
17	2015-B	2016-03-02	2016-03-02	p	10
18	2015-B	2015-05-18	2016-03-02	a	10
19	2016-A	2016-03-02	2016-03-02	p	14
20	2016-A	2016-02-15	2016-06-23	a	14
21	2015-B	2016-03-02	2016-03-02	p	15
22	2015-B	2015-05-18	2016-04-15	a	15
\.


--
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: -
--

COPY persona (cedula, nombre, "segundoNombre", apellido, "segundoApellido", sexo, correo, direccion, telefono, "telefonoFijo") FROM stdin;
8002737	Jose	Juvencio	Quintero	Delgado	f	Sin asignar	Sin asignar	Sin asignar	\N
10100205	German	\N	Rojas	\N	f	rgerman75@yahoo.es	Sin asignar	0424-7071381	0274-2214285
19096583	Anna	Katherina	Lezama	Galaschow	f	annitap46@gmail.com	Sin asignar	04126552386	\N
3992405	Maria	Magaly	Valero	Lacruz	f	Sin asignar	Sin asignar	Sin asignar	\N
14267080	Yulecxy 	Aurora	Uzcategui	Araque	f	yuluzar@hotmail.com	Sin asignar	0414-3751830	0274-2528083
3048184	Jose	\N	Solano	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
4768948	Beatriz Carolina	Del Carmen	Angeli	Maury	f	beatrizcarolinaangeli@gmail.com	Sin asignar	04247349806	\N
8039294	Liliana	\N	Duran	\N	f	ldgeologa@gmail.com	Sin asignar	Sin asignar	\N
9198636	Luis	Alberto	Molina	Gutierrez	f	luisalbertomolina1963@hotmail.com	Sin asignar	0416-6782813	\N
10102259	Alix	\N	Angulo	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10102454	Gerardo	Alexis	Vielma	Sanchez	f	gvs97@hotmail.com	Sin asignar	0416-1719906	\N
11463296	Kary	Yuselin	Uzcategui	Nava	f	karinanava2006@hotmail.com	Sin asignar	04265126395	\N
13098763	Amaluz	Carolina	Angarita	Albornoz	f	amaluzdelopez@hotmail.com	Sin asignar	0426-5731334	\N
10718224	Nora	Patricia	Rojas	Fenandez	f	patriciarojas73@gmail.com	Sin asignar	Sin asignar	\N
2149217	Cesar	Rafael	Gutierrez	\N	f	cesgutierrez@hotmail.com	Sin asignar	Sin asignar	02742211931
2287821	Eduardo	Ali	Calderon	Mora	f	calderoneduardo@inter.com.ve	Sin asignar	2217690	0274
3574698	Angel	Saul	Valera	Pacheco	f	desmodus.rot@hotmail.com	Sin asignar	04149798302	02754112264
3485766	Hernan	Armando	Nieto	Villalobos	f	Sin asignar	Sin asignar	Sin asignar	\N
3661985	Odette	Margarita	Reggeti	De Perez	f	odette.pnffono@gmail.com	Sin asignar	0424-1507514	\N
3692342	Migdalia 	Del Carmen	Garay	Aguilar	f	migdagar@hotmail.com	Sin asignar	Sin asignar	\N
3727339	Nestor	Orlando	Leon	Gonzalez	f	neslanleo@yahoo.es	Sin asignar	0416-8736738	\N
3767311	Magdalena	Josefina	Torres	Morales	f	magdalenatorresm@gmail.com	Sin asignar	0424-7040173	\N
3830917	Orlando	Rafael	Garcia	Romero	f	orlandogarcia@intercable.net	Sin asignar	Sin asignar	\N
3791326	Carlos	Humberto	Gutierrez	Quiroz	f	carloshgq@hotmail.com	Sin asignar	Sin asignar	\N
3910823	Ewaldo	\N	Sandoval	S	f	Sin asignar	Sin asignar	Sin asignar	\N
3939687	Magali	Astrid	Molina	Rojas	f	Sin asignar	Sin asignar	Sin asignar	\N
3990590	Antonio	Jose	Mejias	Marquina	f	antoniojmm@cantv.net	Sin asignar	Sin asignar	\N
4194292	Arvin	Enrique	Pineda	Querales	f	arvinp@cantv.net	Sin asignar	04164740981	\N
4327492	Ramiro	De Jesus	Garcia	Matos	f	ramirogmatos@gmail.com	Sin asignar	0414-9742712	\N
4353143	Abdemar	Jose	Ayestaran	Fabiani	f	abdemar90@hotmail.com	Sin asignar	0416-6740678	\N
4356042	Myriam	Teresa	Anzola	De Diaz	f	Sin asignar	Sin asignar	Sin asignar	\N
4397227	Rafael	Gregorio	Bustamante	\N	f	bustaraf@ula.ve	Sin asignar	Sin asignar	\N
4472778	Ignacio	Alexis	Rodriguez	Carrero	f	Sin asignar	Sin asignar	Sin asignar	02742445382
4488065	Jose	Alexander	Perez	Marquez	f	apmjose@hotmail.com	Sin asignar	Sin asignar	\N
4488420	Jose	Baltazar	Guerrero	Diaz	f	Sin asignar	Sin asignar	Sin asignar	\N
4490481	Doris	M	Morantes	R	f	morantesdorism@hotmail.com	Sin asignar	0414-0814673	\N
4492233	Gilberto	Valdemar	Belandria	Sarmiento	f	belansar57@yahoo.com	Sin asignar	Sin asignar	\N
4492356	Humberto	Egmidio	Rivas	Rivas	f	hrivas_2000@yahoo.es	Sin asignar	Sin asignar	\N
4583431	Carlos	G	Melendez	D	f	Sin asignar	Sin asignar	Sin asignar	\N
4633259	Omar	\N	Gualdron	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
4769890	Virginia	Elena	Ramirez	Mago	f	rviky1@hotmail.com	Sin asignar	0416-6741109	\N
4953940	Wilfredo	\N	Molina	G	f	Sin asignar	Sin asignar	Sin asignar	\N
5021210	Carlos	Evelio	Castillo	Bautista	f	ingcasticar@hotmail.com	Sin asignar	0416-4702766	\N
5201622	Alberto	\N	Aranguren	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5206267	Gladys	Coromoto	Aguilar	Guerrero	f	gladysaguilar@hotmail.com	Sin asignar	0414-9772740	\N
5206372	Denis	\N	Romero	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5355610	Alfredo	Segundo	Lujano	Varela	f	Sin asignar	Sin asignar	Sin asignar	\N
5447146	Dolly	\N	Cardozo	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5507269	Lourdes	F	Valvuena	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5559793	Edith	Iraiz	Calderon	Saras	f	eics_amigos@hotmail.com	Sin asignar	0414-7456832	\N
5740339	Cecilia	Magdalena	Granados	De Brito	f	Sin asignar	Sin asignar	Sin asignar	\N
5794416	Mariela	\N	Mendoza	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5863317	Oscar	Geronimo	Mujica	Figueroa	f	oscar.mujica_89@hotmail.com	Sin asignar	0426-5507175	\N
4054457	Victor	Alberto	Meza	Morales	f	victormeza02@hotmail.com	Sin asignar	Sin asignar	\N
4491607	Jesus	Alfonso	Rivas	Chacon	f	alfonsorivas17@hotmail.com	Sin asignar	0416-9980201	\N
5124273	Corrado	\N	Canto	Pacheco	f	ccantopacheco@hotmail.com	Sin asignar	Sin asignar	\N
3309773	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
7080727	Ivan	\N	Lopez	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
8039463	Ramses	Alonzo	Pernia	Suarez	m	ramsespernia0606@hotmail.com	Sin asignar	0000-0000000	\N
7168412	Jesus	Antonio	Delgado	Mendoza	m	jesusdelg1@gmail.com	Sin asignar	04160727928	\N
9499979	Rodolfo	Jose	Gonzalez	Gomez	m	rodolfogonzalezgomez@gmail.com	Sin asignar	04265770067	02742448880
11956576	Agni	Carolina	Sarache	Balza	f	carolina_sarache@yahoo.es	Sin asignar	0416-4708970	0274-2664556
13014569	Nelma	Del Valle	Uzcategui	De Barreto	f	redes.asesoria@gmail.com	Sin asignar	0414-7416984	02742211241
8029075	Jerson	Orlando	Zambrano	Guerrero	m	jersonzambrano@yahoo.com	Sin asignar	04265780027	02742444503
15296169	Rosaly	Carolina	Mendoza	Marquez	f	mendozarosaly@hotmail.com	Sin asignar	04264153365	02742661228
9201868	Pedro	Antonio	Martinez	Herrera	m	mhpa65@hotmail.com	Sin asignar	0412-5499476	02742630019
17663839	Marlene	Jackeline	Rincón	Muñoz	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
5952723	Leticia	Del Carmen	Mogollón	De Chalbaud	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
6558454	Andres	Julian	Forti	Cavazzoni	f	aforti1963@hotmail.com, aforti@inia.gob.ve	Sin asignar	Sin asignar	\N
6940439	Zandra	Virginia	Ortega	Guerra	f	zandravirginia@yahoo.es	Sin asignar	04146086140	\N
7525829	Carmen	Ysolina	Gutierrez	Pitter	f	Sin asignar	Sin asignar	Sin asignar	\N
7648734	Maria	Trinidad	Otalvora	\N	f	otalvoramm@hotmail.com	Sin asignar	2211916	0274
7775026	Mariela	C	Oliveros	C	f	marielaobracho@hotmail.com	Sin asignar	Sin asignar	\N
8000617	Omar	Enrrique	Fernandez	Castillo	f	venaomar88@hotmail.com	Sin asignar	Sin asignar	\N
8002316	Jesus	Manuel	Sanchez	Villarreal	f	sanvi_3@hotmail.com	Sin asignar	0414-5416339	\N
8004161	Maria	Xiomara	Gil	Otaiza	f	maxiogilo12@gmail.com	Sin asignar	Sin asignar	\N
8006388	Roman	Ali	Marquez	\N	f	tierracruda@hotmail.com	Sin asignar	0424-7160374	\N
8012641	Ana	Teresa	Quintero	De Ruggero	f	anatqdr@gmail.com	Sin asignar	0424-7671634	\N
8020758	Maria	Grazia	Mocci	Deriu	f	cuadrifolium@yahoo.com	Sin asignar	04149721770	02742667245
8021306	Luis	Apolinar	Altuve	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8021842	Jose	Ramon	Diaz	\N	f	joserdiazp@yahoo.es	Sin asignar	0274-4176258	\N
8022671	Jose 	Humberto	Quintero	Davila	f	Sin asignar	Sin asignar	04147444352	02742631167
8024531	Emiro	\N	Rivas	Rivas	f	Sin asignar	Sin asignar	Sin asignar	\N
8025750	Victor	Manuel	Contreras	Contreras	f	vimaco7@hotmail.com	Sin asignar	0424-7214303	\N
8026122	Carla	\N	Secco	Track	f	carlaseco@gmail.com	Sin asignar	Sin asignar	0274-2447227
8026155	Aura	Yanira	Santana	Vivas	f	Sin asignar	Sin asignar	Sin asignar	\N
8027408	Olga	Maritza	De Frenza	Hernandez	f	maridefren@hotmail.com	Sin asignar	0412	\N
8029696	Ana	Cristina	Pacheco	Lugo	f	ana_cristinapacheco@hotmail.com	Sin asignar	0416-6740590	\N
8031064	Gladys	Elena	Araujo	Diaz	f	geap54@yahoo.com	Sin asignar	0416-3795128	02742522383
8032732	Aura	Cecilia	Quintero	D Jesus	f	auracqd@hotmail.com	Sin asignar	0414-7466491	\N
8034029	Francisco	Alonso	Marquez	Sosa	f	franmarq25@yahoo.com	Sin asignar	04149792750	02742632918
8034371	Javier	Alexis	Tellez	Gil	f	jatell@hotmail.com	Sin asignar	0416-2704767	\N
8035484	Pio	Jose	Muñoz	Angulo	f	pjota15@hotmail.com	Sin asignar	22160322	0274
8038332	Marjorie	\N	Uzcategui	\N	f	mayouzca@hotmail.com	Sin asignar	0416-7743326	\N
8002183	Luis	Enrique	Rojas	Ramirez	f	rojasluis64@gmail.com	Sin asignar	Sin asignar	\N
8006639	Jose	De Jesus	Marquez	\N	f	chepomar@hotmail.com	Sin asignar	0414-7166051	2664709
8039498	Tibayre	\N	Fernandez	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8040787	Ruben	Dario	Volcanes	Corredor	f	rubenvolcanes13@hotmail.com	Sin asignar	0426-5710547	0274-2662756
8041510	Emiro	Alfredo	Nava	Flores	f	emironava@hotmail.com, emironava@cantv.net	Sin asignar	0416-6740835	0274-2633054
8041620	Ramiro	Enrique	Prato	Vicuña	f	ramiroprato@hotmail.com	Sin asignar	0414-7445995	\N
8042559	Jhonny	Enrique	Sanchez	Villareal	f	jhonysanchezv@yahoo.com	Sin asignar	0414-7179562	\N
8045258	Carlos	Eduardo	Suescum	Rodriguez	f	suescum99@hotmail.com	Sin asignar	0414-9793280	0274-2213072
8045307	Belky	Coromoto	Sulbaran	Maldonado	f	belky_sulbaran@yahoo.com	Sin asignar	0414-7466065	\N
8046408	David	Jose	Flores	Rojas	f	ingdavidflores@gmail.com	Sin asignar	Sin asignar	\N
8048794	Grizeta	\N	Uzcategui	Barrios	f	joanktp@hotamil.com	Sin asignar	Sin asignar	\N
8079222	Magaly	Alicia	Valero	De Rodriguez	f	magava54@yahoo.es	Sin asignar	2522281	0274
8080375	Mario	\N	Lanza	Camacaro	f	lanza.c@hotmail.com	Sin asignar	Sin asignar	\N
8029045	Amneris	Teotiste	Guerrero	Molina	f	guerrero.amneris28@gmail.com	Sin asignar	0426-5725885	\N
8080676	Herlinda	Cecilia	Montoya	De Higuera	f	leoriana@hotmail.com	Sin asignar	04168876722	\N
8087415	Libia	Y	Marquez	C	f	Sin asignar	Sin asignar	Sin asignar	\N
8331149	Jesus	\N	Vasquez	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8336414	Jose	\N	Vasquez	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8683060	Lilian	Aurora	Puentes	Peña	f	lilianpuentes1@hotmail.com	Sin asignar	Sin asignar	\N
8720054	Henry	Eduardo	Garmendia	Paredes	f	hegp2007@yahoo.com	Sin asignar	0416-4853146	\N
8958864	Carlos	\N	Rojas	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9028433	Maritza	Josefina	Peña	Candela	f	mari_p2005@hotmail.com	Sin asignar	0412	\N
9234597	Pedro	\N	Gutierrez	\N	f	pedrogutierrez202@hotmail.com	Sin asignar	Sin asignar	\N
9472514	Jose	Luis	Marquez	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9473151	Jairo	Ramon	Peña	Peña	f	Sin asignar	Sin asignar	Sin asignar	\N
8005159	Rigoberto	\N	Paredes	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	04144569878	\N
8046659	Milton	\N	Silva	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
10102108	Yasmelia	Del Carmen	Zerpa	Vielma	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
8019784	Liria	\N	Gutierrez	De Rojas	f	lirios_gutierrez@hotmail.com	Sin asignar	0000-0000000	\N
7824945	Thais	Coromoto	Bracho	Urdaneta	f	thaisbracho49@gmail.com	Sin asignar	0414-7172393	\N
8038611	Frank	Reinaldo	Rodriguez	Calderon	m	srodriguez@inia.gob.ve	Sin asignar	0000-0000000	\N
4484976	Nelson	Antonio	Corredor	Trejo	m	ncorredortrejo@gmail.com	Sin asignar	0424-2442582	0274-0000000
4491973	Ana	Celina	Muñoz	Garcia	f	anamunozuniversidad@gmail.com	Sin asignar	04147447472	02742637323
8027793	Judith	Esperanza	Rodriguez	Rivero	f	rodriguez.judith593@gmail.com	Sin asignar	04269287208	02744172051
6953950	Adolfo	Jose	Romero	Gonzalez	m	adrome67@yahoo.es	Sin asignar	04268808212	02744147257
8044768	Jorge	Luis	Flores	Calderon	m	jorgelflores5@hotmail.com	Sin asignar	0000-0000000	\N
17027780	Eibert	Leonardo	Reinoza	Contreras	m	eibertleon@gmail.com	Sin asignar	04265737393	02746587384
11957795	Alix	Yubisay	Sayago	Albarran	f	aysa_ve@yahoo.com	Sin asignar	04147237453	\N
5239250	Gilbert	Arturo	Santeliz	Zerpa	m	gilbertsanteliz@gmail.com	Sin asignar	04265707388	02742215787
8656400	Pedro	\N	Manzano	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
8021736	Rosa	Maria	Vasquez	Falcon	f	rosa_mariavf@hotmail.com	Sin asignar	0416-2747257	\N
9473374	Fredy	Enrique	Rivas	Valero	f	ingorivas@hotmail.com	Sin asignar	0416-5025988	\N
9473423	Idalba	Del Socorro	Perez	Mora	f	idalser@yahoo.com	Sin asignar	0416-5719995	\N
9473852	Carlos	Manuel	Sanchez	Garcia	f	Sin asignar	Sin asignar	Sin asignar	\N
9476268	Lusbeth	Del Valle	Ramirez	Palazzi	f	lulyrp@hotmail.com	Sin asignar	Sin asignar	\N
9906067	Omel	Jose	Sifontes	\N	f	omelsifontes@gmail.com	Sin asignar	Sin asignar	\N
10108950	Javier	Alberto	Paredes	Quintero	f	jparedes71@gmail.com	Sin asignar	0426-5729180	\N
10109087	Veronica	\N	Sanchez	Rachaus	f	Sin asignar	Sin asignar	Sin asignar	\N
10314511	Denisse	Victoria	Pazos	Briceño	f	denissepazos@hotmail.com	Sin asignar	0414-1773720	\N
10712408	Walter	Alexander	Espinoza	Rangel	f	Sin asignar	Sin asignar	Sin asignar	\N
10713529	Roxy	Coromoto	Guillen	\N	f	roxycg@gmail.com	Sin asignar	0414-7039494	\N
8084432	Luz	Marina	Rondon	Rincon	f	Sin asignar	Sin asignar	Sin asignar	\N
9474147	Ligia	\N	Rivas	Marquez	f	migelien@yahoo.com	Sin asignar	Sin asignar	\N
10087275	Marilyn	Coromoto	Medina	Leon	f	marilynml_68@hotmail.com	Sin asignar	Sin asignar	\N
10104966	Rodrigo	Jose	Guillen	Guillen	f	pintosalinasvcmerida2006@yahoo.es, morocoiute@yahoo.com.ve	Sin asignar	Sin asignar	\N
10714070	Katiuska	\N	Mendez	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10715404	Jose	Gregorio	Maldonado	Santiago	f	Sin asignar	Sin asignar	Sin asignar	\N
10718393	Mayuly	Coromoto	Villamizar	Araque	f	Sin asignar	Sin asignar	Sin asignar	02742210348
10797122	Rosanela	\N	Galindo	Chirinos	f	rosanela.galindo@gmail.com	Sin asignar	Sin asignar	\N
11067484	Anneline	\N	Alvarado	Machado	f	annelinea@gmail.com	Sin asignar	Sin asignar	\N
11108398	Olga	Ines	Contreras	Rodriguez	f	Sin asignar	Sin asignar	Sin asignar	\N
11319364	Marilu	\N	Andara	Castellano	f	Sin asignar	Sin asignar	Sin asignar	\N
11460000	Esther	Zulay	Rosas	Lobo	f	erosaslobo@gmail.com	Sin asignar	Sin asignar	\N
11460813	Suly	Coromoto	Contreras	Fernandez	f	ylus8@yahoo.es	Sin asignar	Sin asignar	\N
11465653	Wendy	Del Carmen	Salas	Avendaño	f	wendysa_w10@yahoo.com	Sin asignar	Sin asignar	\N
11467397	Yasmeli	\N	Pernia	De Cardoza	f	ondasinfantiles@hotmail.com	Sin asignar	04141793292	\N
11467713	Douglas	Jose	Noguera	Gomez	f	dnoguera2005@gmail.com	Sin asignar	0414-5425457	\N
11468201	Loren 	Del Valle	Arocha	Hernandez	f	arochaloren@hotmail.com	Sin asignar	04242636665	02712217283
11783461	Maria	\N	Venegas	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11912316	Amelyren	\N	Basabe	\N	f	amelyrenbasabe@hotmail.com	Sin asignar	Sin asignar	\N
11952770	Lucy	Margarita	Nava	Monsalve	f	navalucy@yahoo.com	Sin asignar	04145775471	\N
11959505	Zioly	D.	Calderon	\N	f	ziocady@gmail.com	Sin asignar	Sin asignar	\N
12048353	Alejandro	Miguel	Ochoa	\N	f	alejandromiguel31@yahoo.es,  alejandromiguel31@gmail.com	Sin asignar	04165028872	0274-2620175
12346208	Raiza	Coromoto	Escalona	Salinas	f	Sin asignar	Sin asignar	Sin asignar	\N
12353031	George	De Jesus	Gonzalez	Gonzalez	f	ccclesiasticum@gmail.com	Sin asignar	Sin asignar	\N
12458260	Yosmar	Enrrique	Sulbaran	Garcia	f	syosmar@gmail.com	Sin asignar	0426-5758267	\N
12776731	Alvaro	\N	Peña	Peña	f	alpe02@hotmail.com	Sin asignar	Sin asignar	\N
12779069	Vioralba	\N	Calderon	Asebedo	f	vioralbac@hotmail.com	Sin asignar	Sin asignar	\N
12779975	Lewing	Eduardo	Rangel	Nava	f	ledwigh_ern@hotmail.com	Sin asignar	0426-5738282	\N
12817844	Jose	Isaias	Curvelo	Gomez	f	Sin asignar	Sin asignar	Sin asignar	\N
13013152	Alejandro	\N	Rojas	Ceballos	f	Sin asignar	Sin asignar	Sin asignar	\N
13014707	Meiglyn	Coromoto	Angulo	Angulo	f	meiglynangulo@gmail.com	Sin asignar	04162782958	\N
13098188	Jose	Gregorio	Perez	Mora	f	perezmorajg@cantv.net	Sin asignar	0416-3732589	0274-2210845
13098422	Levis	Arnaldo	Quintero	Trejo	f	levisq25@hotmail.com	Sin asignar	04165762470	2452466
13099384	Jose	Melanio	Peña	Sanchez	f	jomepesas@hotmail.com	Sin asignar	0426-7799987	\N
13525905	Marielba	\N	Oballos	Benavides	f	oballosm@yahoo.es,oballosm@hotmail.com	Sin asignar	0414-7202547	\N
13803490	Heidy	Dayana	Bitorajes	Diaz	f	abramovic@hotmail.com, abramovic2002@hotmail.es	Sin asignar	0416-2924280	\N
13966605	Nervis	Nakary	Carrillo	Santiago	f	Sin asignar	Sin asignar	Sin asignar	\N
14267842	Ernesto	\N	Vergara	Montoya	f	ernestovergara@hotmail.com	Sin asignar	0416-3793398	\N
14400087	Aleixandre	Dennison	Villarroel	Gomez	f	aldevigo@gmail.com	Sin asignar	0414-1794286	\N
14589222	Yammy	Karelys	Guillen	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14700296	Jenny	Katherinne	Osorio	Albarran	f	kath97355@hotmail.com	Sin asignar	Sin asignar	\N
14268612	Hugo	Jose	Cerrada	Marquez	f	hugocerrada@hotmail.com, hugocerrada@gmail.com	Sin asignar	0414-7459824	0274-2442691
14839454	Liliana	Elvira	Urbina	Diaz	f	elvirex@hotmail.com	Sin asignar	0414-5425457	\N
13649962	Yimi	Leandro	Marquez	\N	m	marquezyimi@hotmail.com	Sin asignar	04265731501	\N
9501330	Orlando	Antonio	Oberto	Urbina	m	orlandooberto@yahoo.com	Sin asignar	0000-0000000	\N
9478674	Carlos	Antonio	Zordan	Zordan	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
10718091	Omar	Alonzo	Balza	Carrillo	m	balzaomar@hotmail.com	Sin asignar	0424-7728962	0274-4166125
9473567	Lisbeth	Jane	Diaz	De Garcia	f	lisbethjane@gmail.com	Sin asignar	0000-0000000	\N
13524820	Lisbeth	Fabiola	Rivas	Vielma	f	fabiolarivas17777@gmail.com	Sin asignar	04167749828	02742214331
11462979	Martha	Ivonne	Triana	Vargas	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	04247145086	02742715952
14917365	Johan	Alejandro	Zerpa	Torres	m	jazt23@hotmail.com	Sin asignar	0426-7730348	\N
10256095	Duberlis	Del Valle	Gonzalez	\N	f	duberlisg@gmail.com	Sin asignar	04141790063	\N
9389944	Cristina	Antonia	Sandoval	Briceño	f	cristinasandovalb@hotmail.com	Sin asignar	04265739493	02742452759
8044725	Yudith	\N	Sanchez	\N	f	yuditsame@yahoo.es	Sin asignar	04247731856	02742446926
10092487	Migdalia	Bethsabe	Martinez	Carrero	f	migbethsamar03@hotmail.com	Sin asignar	0414-7381102	\N
9906615	Teresa	De Jesus	Medina	De Rodriguez	f	teresamero@gmail.com	Sin asignar	04120759473	\N
11705856	Carlos	Luis	Sarmiento	Fernandez	m	sarmiento.11@gmail.com	Sin asignar	04165763133	02742213623
15175795	Silvia	Josefina	Gonzalez	Fernandez	f	silviaj9730@hotmail.com	Sin asignar	0416-0988076	\N
15223533	Saul	Elias	Guaimara	Rondon	f	saelig@hotmail.com	Sin asignar	04247194467	\N
15381185	Ruth	Melania	Castillo	Omaña	f	ruthmelania82@yahoo.com	Sin asignar	04166469011	\N
15516332	Katherin	Joan	Trejo	Pernia	f	joanktp@yahoo.com	Sin asignar	0414-1792774	\N
15565857	Norkys	Magaly	Bustos	Zambrano	f	norkysbusto@hotmail.com	Sin asignar	0414-0802546	\N
15622903	Leida 	Tamara	Salcedo	Peñaloza	f	leidatsalcedo@gmail.com	Sin asignar	04265712890	02746574546
15754922	Jorge	Luis	Altuve	\N	f	jorgeluisaltuve@yahoo.es	Sin asignar	Sin asignar	\N
15754311	Keibys	Eduardo	Colmenares	\N	f	colmenares.keibys@gmail.com	Sin asignar	04168750063	\N
15756979	Maria	Jose	Salas	Medina	f	Sin asignar	Sin asignar	Sin asignar	\N
12352023	Yenny	Caribay	Araujo	Guillen	f	yennygui@hotmail.com	Sin asignar	04125499348	\N
15920086	Daniel	Ricardo	Salas	Contreras	f	daniels2030@gmail.com	Sin asignar	Sin asignar	\N
15920291	Jorge	Guillermo	Angulo	Salazar	f	ale_alito8_@hotmail.com	Sin asignar	Sin asignar	\N
15921593	Belisario	\N	Toro	\N	f	toro_ai@hotmail.com	Sin asignar	Sin asignar	\N
16020374	Caterling	Vanessa	Melendez	Montoya	f	caterling_m@hotmail.com	Sin asignar	0414-9790618	\N
16377291	Yosmely	\N	Ramirez	\N	f	yosmely_ramirez@hotmail.com	Sin asignar	0416-4704092	\N
17130729	Onelia	Karina	Fernandez	Sosa	f	onefs@hotmail.com	Sin asignar	Sin asignar	\N
17238348	Carla	Vanessa	Pacheco	Guerrero	f	Sin asignar	Sin asignar	Sin asignar	\N
17456574	Manuel	Alberto	Lujan	Anzola	f	lujanoanzola@yahoo.com	Sin asignar	Sin asignar	\N
17499585	Mariana	Alejandra	Perez	Romero	f	marianaperez908@gmail.com	Sin asignar	04265583956	\N
17456954	Mahiceth	Cecilia	Quintero	Valero	f	mahiceth.quintero@gmail.com	Sin asignar	0416-1194076	\N
16199115	Elio	D Jesus	Ramirez	Cruces	f	Sin asignar	Sin asignar	0416-3769937	\N
17523454	Merilin	Liliana	Monsalve	Rojas	f	merilinmonsalve@hotmail.com	Sin asignar	04247523196	\N
17664938	Yessika	Carolyn	Saiz	Vielma	f	uptm_ing_yessika_saiz@hotmail.com	Sin asignar	041436742428	02742217626
18581024	Humberto	Jose	Gelves	Molina	f	humbertog18@hotmail.com	Sin asignar	04141272004	\N
18796815	Gustavo	Armando	Rivas	Rangel	f	Sin asignar	Sin asignar	Sin asignar	\N
18796996	Walter	Alcibiades	Rivas	Cuevas	f	Sin asignar	Sin asignar	Sin asignar	\N
19421996	Becky	Lilibeth	Sosa	Duque	f	beckysosa@gmail.com	Sin asignar	0414-7340911	\N
81423693	Mauricio	Alejandro	Ravanal	Zepeda	f	mauricio.ravanal@gmail.com	Sin asignar	0414-7160365	\N
9240195	Miguel	\N	Acevedo	\N	f	1aa.miguel@gmail.com,miguelaa1@cantv.net	Sin asignar	Sin asignar	\N
14400356	Maria	Eugenia	Acosta	Garcia	f	maruag22@hotmail.com	Sin asignar	0424-7013663	\N
6547603	Judith	Tibisay	Colina	Mirena	f	judithc8@hotmail.com	Sin asignar	Sin asignar	\N
7832738	Maria	Asuncion	Socorro	\N	f	mariasove@yahoo.com	Sin asignar	Sin asignar	\N
9476031	Javier	Antonio	Castillo	Torres	f	jact5455@hotmail.com	Sin asignar	0416-4749446	\N
14916156	Yamile	Mercedes	Alam	Pastor	f	ymap1999@yahoo.com	Sin asignar	04166744520	\N
8037619	Miriam	Del Carmen	Muñoz	Ramirez	f	licmiriamuno@gmail.com	Sin asignar	04147027698	\N
4319574	Iraide	Celina	Zerpa	\N	f	iraidezerpa@gmail.com	Sin asignar	04265744008	\N
11955850	Carlos	\N	Hernandez	\N	m	carloshla2007@gmail.com	Asd	04263281790	\N
7934845	Maria	Carolina	Marquez	Uzcategui	f	mcarolinamar@hotmail.com	Sin asignar	04247708690	\N
14281324	Jesus	\N	Casique	\N	m	casiquemorenojesus@gmail.com	Asd	04247127978	\N
11953052	Gioconda	Marlin	Saez	Torres	f	giocopaul@gmail.com	Asdasd	0416-5222543	\N
8223161	Vianney	\N	Canache	\N	m	fitosiciliano@hotmail.com	Asd	0424-7686768	\N
5871766	Doris	\N	Villalba	\N	f	dvilla44@gmail.com	Asd	0416-6700862	\N
12722753	Emilia	\N	Graterol	\N	f	emiliagraterol@yahoo.com	Asd	0424-7139955	\N
8039160	Alejandro	\N	Rojas	\N	m	alejandrorojas23@yahoo.com	Asd	0426-7625391	\N
16317126	Maria	\N	Carrero	\N	f	marca1911@yahoo.es	Av. qwe	04247625391	\N
1010633	Lenix	\N	Omaña	\N	f	lenix@ula.ve	Asd	04147485841	\N
16285988	Luisana	\N	Fonseca	Cadenas	f	luisanafonseca12@gmail.com	Sin asignar	0000-0000000	\N
84570604	Guillermo	\N	Bustos	Prada	m	guillermobustopradam@gmail.com	Sin asignar	04261529464	\N
5655983	Blanca	Elena	Alviarez	De Maldonado	f	blancalvi@gmail.com	Sin asignar	04167771000	\N
16964770	Sarai	Margarita	Sojo	Portillo	f	sarfer60@hotmail.com	Sin asignar	04147425566	\N
8047120	Diony	Ginette	Alviarez	Paredes	f	gdiony@yahoo.es	Sin asignar	04269770025	\N
13966054	Anna	Yusmarie	Dugarte	Sanchez	f	dugartea@gmail.com	Sin asignar	04247026306	\N
14917178	Johanna	Yecenia	Gomez	Alvarez	f	johannna.ga@gmail.com	Sin asignar	04149565557	\N
12722185	Solange	Aniree	Leal	Leal	f	solangeleal@yahoo.com	Sin asignar	0416-2755134	0274-2623282
10898072	Jesus	Alber	Romero	Cubillos	m	alber_romero@hotmail.com	Sin asignar	0000-0000000	02747893689
11960173	Edgar	Alexander	Rosales	Rubio	m	edwsalex@hotmail.com	Sin asignar	04265728277	\N
11303172	Monica	Aurora	Rosciano	Tolosa	f	monicarosciano23@gmail.com	Sin asignar	0000-0000000	\N
13524109	Darwin	Javier	Pernia	Rodriguez	m	darwinpernia@gmail.com	Sin asignar	04147175016	\N
7509507	Lorenzo	Antonio	Vasquez	Rojas	m	natabir@gmail.com	Sin asignar	04147041084	0274-4149979
13648603	Raquel	Ailyn	Zambrano	De Pascarella	f	raquelzambrano@hotmail.com	Sin asignar	04247202152	02742630043
13967486	Mervin	Javier	Marquez	Quintero	m	mervin_marquez@yahoo.es	Sin asignar	0424-7372826	02742215202
13723698	Aida	Vidalina	Avila	Zavala	f	aidivi@gmail.com	Sin asignar	04247585074	\N
11954144	Antonio	Jose	Montilla	Montilla	m	eantoniojosemontilla@gmail.com	Sin asignar	04247721070	0424000000
14401340	Mayra	Irlanda	Peña	Rodriguez	f	maype123@hotmail.com	Sin asignar	04147453968	\N
11466224	Jimi	Jose	Quintero	Dugarte	m	jjimiq@gmail.com	Sin asignar	04147555034	02742635434
13477378	Susana	Del Pilar	Briceño	Jaimes	f	susanabj@gmail.com	Sin asignar	04247259745	02747903567
3966127	Oswaldo	Adelis	Abarca	Montilla	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
9475173	Yadira	Yelitza	Marquez	Santiago	f	yayms@hotmail.com	Sin asignar	04140760466	02742660082
12345678	Nombre	\N	Apellido	\N	m	correo@servidor.com	Calle #123, Ciudad edo. Estado	0400-1234567	0200-1234567
9643447	Yasmin	\N	Carmona	\N	f	yasmincarmina310@gmail.com	Asd	0416-3700829	\N
6729553	Maria	Gloria	Parra	\N	f	mariagloria.parrar@gmail.com	Asd	0416-8743486	\N
4768469	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5206999	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5349758	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8031593	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9279327	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9470586	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10426911	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10795287	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12276745	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13126220	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13803898	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
3586551	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5199025	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5753564	Santos	Segundo	Coronel	Romero	m	ssrc513@gmail.com	Sin asignar	04164747101	\N
12457642	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
2288079	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
4385037	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
4468978	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5222887	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
7682243	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
7901173	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8006635	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8025941	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8084037	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8709198	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8711187	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8991754	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9027962	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9048373	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9145227	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9346062	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10236687	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10896200	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10901133	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11165547	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12048936	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12800893	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13013943	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13229040	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13230783	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13965382	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13965387	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13965541	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14447272	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15235049	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15235336	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16604063	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16605994	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
7783689	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8717503	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9397892	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11216746	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13804657	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
3990156	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5435898	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5446019	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5654904	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
6908190	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
7545873	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
7549702	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
7772181	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8000405	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8029795	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8042180	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8081463	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9473824	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9474475	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11461500	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15295791	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8007748	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8773038	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10106333	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11959486	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11959905	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12349450	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17340511	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
3062497	Zaira	\N	Bouqet	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
10617743	Reinaldo	\N	Laya	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
8013671	Aida	\N	Peña	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
9081546	Simón	\N	Hoyo	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
10687170	Bárbara	\N	Mora	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
5198965	Luis	\N	Moreno	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
9390689	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16716898	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13762920	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15693970	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17664344	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5502501	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9472709	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18620438	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
20912440	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8049037	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12776115	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15584303	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17662445	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11959873	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12778312	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15584878	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18310574	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
21364550	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
84395445	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10108118	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10896132	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12777719	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14771192	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15175341	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18798060	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
19487152	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
19487788	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13688279	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17129511	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
6167653	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8076223	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8519916	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8705826	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9361725	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10856682	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10905552	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11462892	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11954097	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12220551	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12487701	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13013755	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14131507	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14255791	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14447036	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14447384	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15074652	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15234079	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15234490	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15695079	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16019616	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16019964	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16020533	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16020822	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16316134	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16657714	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17769893	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18579167	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18579209	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
22656117	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
3941437	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
4353531	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
3908624	Froilan	\N	Contreras	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
5201033	Carmen	\N	Graterol	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
18962414	Manuel	\N	Oliveros	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
8022340	Jairo	\N	Perez	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
4589713	Henry	\N	Porras	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
8023975	Jorge	\N	Rondon	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
13309223	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
3991395	Heriberto	\N	Calderón	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
10751767	Tani	\N	Diaz	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
9602126	María	\N	Geijo	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
7482782	Adan	\N	Colina	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
18308852	Luisana	\N	Marquez	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
2069838	Rafael	\N	Morales	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
10108462	Dulce	\N	Peña	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
8034298	William	\N	Peña	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
84492794	Yimel	\N	Perotti	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
9874227	Leila	\N	Ruiz	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
14589482	Jean	Carlos	Zambrano	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
13499843	Erenia	\N	Escalona	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
15295462	Gilmer	\N	Rondón	\N	m	inicialnombreapellido@uptm.edu	Sin asignar	0000-0000000	\N
18618150	Rosmary	\N	Salinas	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
8045536	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8075648	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8707022	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11465010	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12487991	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13790769	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15695370	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15695737	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16907428	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17321417	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18264711	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
3297745	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
4700593	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
7973553	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9203225	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9390966	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9392858	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9496511	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10241655	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11236773	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11319506	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11460232	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11912990	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11914501	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11955728	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12354608	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12655010	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13208733	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13803295	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14022931	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14249554	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14957722	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15174952	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15357168	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15432243	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15947784	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16351978	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16716300	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16743379	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17436794	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17437536	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17794526	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18055149	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18208897	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18614251	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18615818	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
19236516	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8038358	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11361473	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12321519	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13098687	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15621504	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15920357	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17129591	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17239002	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17662802	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
2086595	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8023615	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8035343	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8040696	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8043996	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9320887	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9398159	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11960981	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13648065	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13803902	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14067007	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14171327	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14267897	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14320450	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15174936	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15295994	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15296686	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15621939	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15755730	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15784489	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16039221	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16199520	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16445626	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16655032	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17130332	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17130671	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17323027	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
3223045	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8039615	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10717019	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12778229	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14107223	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13524598	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5466076	Esteban	\N	Briceño	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
13098948	Federico	\N	Del Cura	Delgado	m	federico.delcura@gmail.com	Sin asignar	0416-7759881	\N
8034300	Pedro	William	Gonzalez	Guillen	m	pwgg@hotmail.com	Sin asignar	0000-0000000	\N
10720364	Jose	Timoteo	Milla	Monsalve	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0414-0000000	\N
8041985	Jesús	\N	Montilla	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
5561396	Manuel	Antonio	Oliveros	Carruyo	m	mao5561@hotmail.com	Sin asignar	0426-5580062	0274-2216348
7326064	Ramon	Fernando	Riera	Tona	m	rriera60@hotmail.com	Sin asignar	0416-6562052	0274-2452722
15142314	Pablo	Martin	Silgueiro	Soto	m	pablosilgueiro@gmail.com	Sin asignar	04267549299	\N
15516303	Hebert	Joel	Avendaño	La Cruz	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
19440209	Juan	\N	Bracho	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
19592116	Victor	\N	Garcia	\N	m	inicialnombreapellido@uptm.edu.ve	Sin Asignar	0000-0000000	\N
12779833	Adriana	\N	Garcia	\N	f	inicialnombreapellido@uptm.edu.ve	Sin Asignar	0000-0000000	\N
14917541	Emi	\N	Linero	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
8013569	José	\N	Rodriguez	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
14131053	Ana	\N	Angulo	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
17254684	Wilbelis	\N	Arias	\N	f	inicialnombreapellido@uptm.edu.ve	Sin Asignar	0000-0000000	\N
20039181	Mirquez	\N	Rivera	Barrios	m	inicialnombreapellido@uptm.edu.ve	Sin Asignar	0000-0000000	\N
13966349	Dorys	Virginia	Valero	Calderón	f	nicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
8028204	Nancy	Margot	Villarreal	Villanueva	f	nanavillarreal@gmail.com	Sin asignar	04147451751	\N
4489957	Zoila	Teresa	Sosa	Barrios	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
6966311	Doris	\N	Carrasquero	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
5200034	Edith	Marisol	Uzcateguí	Cabrices	f	inicialnombreapellido@uptm.edu.ve	Sin Asignar	0000-0000000	\N
7785696	Velia	\N	Nieto	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
11953708	Francia	\N	Ochea	\N	f	inicialnombreapellido@uptm.edu.ve	Sin Asignar	0000-0000000	\N
8033769	Pedro	\N	Ramírez	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
8045120	Javic	Alberto	Gonzalez	\N	m	inicialnombreapellido@uptm.edu.ve	Sin Asignar	0000-0000000	\N
10716040	Luis	Fermin	Ramírez	\N	m	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
18620054	Yuzmary	\N	Plaza	Briceño	f	inicialnombreapellido@uptm.edu	Sin Asignar	0000-0000000	\N
19279167	Jose	Luis	Castro	\N	m	inicialnombreapellido@uptm.edu.ve	Sin Asignar	0000-0000000	\N
9474618	Yelibeth	\N	Gavidea	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
17129049	Edward	\N	Rey	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
10172170	Gerardo	\N	Molina	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
11036485	Noraida	\N	Gómez	Ojeda	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
20199965	Hefzi Ba	\N	Gutierrez	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
12348836	Maryuri	\N	Manrrique	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
5198826	Jose	\N	Monsalve	\N	f	inicialnombreapellido@uptm.edu.ve	Sin asignar	0000-0000000	\N
\.


--
-- Data for Name: profesion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY profesion (id, nombre) FROM stdin;
0	Sin asignar
1	Ing. en Sistemas
2	Lic. Contaduría
3	Ing. Civil
4	TSU en Contaduría
5	TSU en Informática
6	TSU en Agrotecnia
7	TSU en Construcción Civil
8	Ing. Química
9	TSU en Manejo de Emergencias A.C.D.
10	Lic. en Administración
11	Matemática
12	Ing. Industrial
13	Psicogía
14	Socilogía
15	Ing. en Informática
16	Ing. Eléctrica
17	Ing. Mecánica
18	Tecnología Pecuaria
19	Tecnología Agrícola
20	Lic. en Matemática
21	Ing. Forestal
22	Lic. en Comunicación Social
23	Lic. en Educación
24	Lic. en Administración de Empresas
25	Lic. en Letras
26	Lic. en Educación Física
27	Arquitectura
28	Ing. de Minas
29	Lic. en Nutrición
30	Médicina Veterinaria
31	Lic. en Derechos
32	Politología
33	Criminología
34	Lic. en Historia
35	Lic. en Idiomas Modernos
36	Lic. en Medios Audiovisuales
37	Lic. en Biología
38	Lic. en Física
39	Lic. en Química
40	Geografía
41	Farmacia
42	Lic. en Bioanálisis
44	Lic. en Enfermería
46	Odontología
47	Ing. Agrícola
48	Lic. en Diseño Industrial
49	Lic. en Estadística
50	Lic. en Economía
51	Lic. Filosofía
52	Ing. en Geología
53	Ing. en Producción Agropecuaria
54	Ing. en Telecomunicaciones
43	Médico Cirujano
45	TSU en Radiología e Imagenología
\.


--
-- Data for Name: profesor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY profesor (cedula, categoria, condicion, dedicacion, profesion) FROM stdin;
19096583	No	0	No	0
8039294	No	0	No	0
10102454	No	0	No	0
11463296	No	0	No	0
3485766	No	0	No	0
3830917	No	0	No	0
3910823	No	0	No	0
3990590	No	0	No	0
4194292	No	0	No	0
4327492	No	0	No	0
4397227	No	0	No	0
4488065	No	0	No	0
4490481	No	0	No	0
4492233	No	0	No	0
4583431	No	0	No	0
4633259	No	0	No	0
4953940	No	0	No	0
5206267	No	0	No	0
5559793	No	0	No	0
4054457	No	0	No	0
6558454	No	0	No	0
7775026	No	0	No	0
8000617	No	0	No	0
8004161	No	0	No	0
8006388	No	0	No	0
8024531	No	0	No	0
8025750	No	0	No	0
8035484	No	0	No	0
8002183	No	0	No	0
8042559	No	0	No	0
8045258	No	0	No	0
8087415	No	0	No	0
10797122	No	0	No	0
11467397	No	0	No	0
11468201	No	0	No	0
11912316	No	0	No	0
12353031	No	0	No	0
12779975	No	0	No	0
13099384	No	0	No	0
13966605	No	0	No	0
14400087	No	0	No	0
15223533	No	0	No	0
15381185	No	0	No	0
15754311	No	0	No	0
16377291	No	0	No	0
17238348	No	0	No	0
8002737	Asist	3	EXC	0
3048184	Asist	3	TCv	0
3992405	Asist	3	TC	0
4488420	Asist	3	TC	0
5206372	Asoc	3	EXC	0
5355610	Asist	3	TC	0
5447146	Asoc	3	TC	0
5507269	Asoc	3	TC	0
5794416	Asoc	3	TC	0
7648734	Agre	3	EXC	0
7934845	Agre	3	TC	10
8021306	Asist	3	TC	0
8041510	Agre	3	TC	0
8046408	Inst	3	TC	0
8048794	Asist	3	TC	0
8336414	Asoc	3	EXC	0
8683060	Inst	3	TC	0
8958864	Asist	3	TC	0
9472514	Asoc	3	EXC	0
10102259	Agre	3	TC	0
10104966	Inst	3	TC	0
10314511	Asist	3	TC	0
10714070	Asoc	3	EXC	0
10715404	Asist	3	TC	0
10718224	Agre	3	TC	0
10718393	Asist	3	TC	0
11067484	Inst	3	TC	0
3767311	Asist	3	TC	0
4472778	Agre	3	TCv	0
4491607	Asist	3	TC	0
5124273	Asist	3	TC	0
8002316	Asoc	3	EXC	0
8012641	Asist	3	TC	0
8020758	Inst	3	TC	0
8022671	Asoc	3	TC	0
8026155	Agre	3	EXC	0
8027408	Asist	3	EXC	0
8029696	Agre	3	TC	0
8034029	Inst	3	TC	0
8034371	Aux	3	TC	0
8038332	Asist	3	TC	0
8080676	Asoc	3	EXC	0
8084432	Asist	3	TC	0
9198636	Asist	3	TC	0
9473151	Agre	3	EXC	0
9473423	Asist	3	EXC	0
9474147	Inst	3	TC	0
10087275	Agre	3	EXC	0
10108950	Agre	3	EXC	0
13098763	Asist	3	EXC	0
3727339	Asoc	3	EXC	0
8045307	Asoc	3	TC	0
10713529	AuxII	3	EXC	0
3692342	Inst	1	TC	0
5021210	Inst	1	TCv	0
9906067	Inst	1	TC	0
10100205	Inst	1	MT	0
8006639	Inst	1	MT	0
8039498	Inst	1	TCv	0
8079222	Inst	1	MT	0
9234597	Inst	1	TC	0
6940439	Inst	1	TC	0
2149217	Inst	1	TC	0
3791326	Inst	1	TCv	0
8029045	Inst	1	TC	27
8041620	Inst	1	TC	0
9473374	Inst	1	TCv	0
3574698	Inst	1	TC	0
8040787	Inst	1	MT	0
4356042	Inst	1	TC	0
4492356	Inst	1	TC	0
9473852	Inst	1	MT	0
10109087	Inst	1	MT	0
17456574	No	0	No	0
17499585	No	0	No	0
16199115	No	0	No	0
18581024	No	0	No	0
9240195	No	0	No	0
14281324	Inst	1	MT	50
16317126	Inst	1	TC	2
1010633	Inst	1	TC	10
6729553	Inst	1	TC	50
5753564	Tit	3	EXC	49
9501330	Agre	3	TC	22
5561396	Asist	3	EXC	21
8005159	Asist	3	EXC	47
7326064	Agre	3	TC	47
8046659	Agre	3	TC	30
9478674	Inst	3	TC	47
10718091	Inst	1	TCv	47
9473567	Inst	1	TC	47
8038611	Inst	1	MT	6
4484976	Asist	3	TC	22
7168412	Asist	3	TC	20
9499979	Inst	3	TC	1
4491973	Agre	3	TC	1
8027793	Asist	3	TC	20
4489957	Asist	3	EXC	35
11956576	Inst	3	TC	35
8044768	Inst	1	MT	26
13014569	Asist	3	TC	1
8029075	Asist	3	TC	1
9201868	Inst	1	MT	23
17027780	Inst	1	MT	15
17663839	Inst	1	TC	15
11957795	Inst	1	TC	1
8028204	Inst	1	TC	1
5239250	Asist	3	TC	1
8656400	Inst	1	TC	23
8021736	Inst	3	MT	25
5952723	Inst	1	TC	38
9643447	Inst	1	TC	10
2287821	Agre	3	TC	0
3309773	Asist	3	TCv	0
3939687	Asist	3	TC	0
4319574	Asist	3	EXC	27
4768469	Asist	3	TCv	0
4769890	Asoc	3	EXC	0
5206999	Asoc	3	EXC	0
5349758	Asist	3	TC	0
6547603	Asist	3	EXC	0
7525829	Asoc	3	EXC	0
7832738	Agre	3	EXC	0
8031593	Asoc	3	TC	0
8037619	Inst	3	TC	10
8039160	Agre	3	TC	1
9028433	Agre	3	EXC	0
10712408	Asoc	3	EXC	0
11108398	Asist	3	EXC	0
11460000	Agre	3	TC	0
11465653	Agre	3	TC	0
11783461	Asist	3	TC	0
11959505	Asist	3	TC	0
12776731	Asist	3	TC	0
13013152	Asist	3	EXC	0
13525905	Asist	3	TC	0
14700296	Agre	3	TC	0
15920086	Inst	3	TC	0
4353143	AuxV	3	EXC	0
5863317	Inst	3	TC	0
8026122	Asist	3	TC	0
8031064	Inst	3	TC	0
8331149	AuxIV	3	EXC	0
11467713	Asist	3	TC	0
12352023	Asist	3	TC	0
12779069	Asist	3	TC	0
14839454	Asist	3	TC	0
14916156	Asist	3	TC	0
16020374	Asist	3	TC	0
14268612	Asist	3	TC	0
5871766	Inst	1	MT	50
8223161	Inst	1	MT	10
11955850	Inst	1	TC	10
12048353	Inst	1	TC	0
12722753	Inst	1	MT	50
14267080	Inst	1	TC	0
15175795	Inst	1	TC	0
15565857	Inst	1	TC	0
15920291	Inst	1	MT	0
17523454	Inst	1	TC	0
9476031	Inst	1	TC	0
12346208	Inst	1	TCv	0
12817844	Inst	1	TCv	0
14267842	Inst	1	TCv	0
15516332	Inst	1	TC	0
15754922	Inst	1	TC	0
17130729	Inst	1	TC	0
3661985	Inst	1	MT	0
19421996	Inst	1	TCv	0
8080375	Inst	1	TCv	0
11319364	Inst	1	TCv	0
11460813	Inst	1	TCv	0
11952770	Inst	1	TC	0
12458260	Inst	1	TCv	0
13014707	Inst	1	TC	0
13098188	Inst	1	MT	0
13098422	Inst	1	TCv	0
13803490	Inst	1	TC	0
14400356	Inst	1	TC	0
14589222	Inst	1	TC	0
15622903	Inst	1	TC	0
17456954	Inst	1	TC	0
17664938	Inst	1	TC	0
18796815	Inst	1	TC	0
18796996	Inst	1	TC	0
15756979	Inst	1	TC	0
81423693	Inst	1	TC	0
15921593	Inst	1	TCv	0
4768948	Inst	1	TC	0
11953052	Inst	1	TC	2
12345678	No	0	No	0
9470586	Asoc	3	EXC	0
10426911	Asist	3	EXC	0
10795287	Aux	3	TCv	0
12276745	Agre	3	EXC	0
13126220	Aux	3	TC	0
13803898	Agre	3	TC	0
3586551	Agre	3	TC	0
5199025	Asist	3	TC	0
12457642	Inst	3	TC	0
2288079	Asist	3	TC	0
4385037	Asist	3	MT	0
4468978	Asist	3	EXC	0
5222887	Inst	3	TC	0
7682243	Asist	3	TC	0
7901173	Asist	3	TC	0
8006635	Asist	3	TC	0
8025941	Inst	3	TC	0
8084037	Asist	3	TC	0
8709198	Inst	3	TC	0
8711187	Inst	3	MT	0
8991754	Asist	3	TC	0
9027962	Agre	3	TC	0
9048373	Asist	3	TC	0
9145227	Inst	3	EXC	0
9346062	Asist	3	TC	0
10236687	Inst	3	TC	0
10896200	Asist	3	TC	0
10901133	Asist	3	TC	0
11165547	Inst	3	TC	0
12048936	Asist	3	TC	0
3062497	AuxV	3	EXC	47
13098948	Agre	3	TC	40
8034300	Agre	3	EXC	47
16964770	Inst	1	MT	23
13649962	Asist	3	EXC	47
8013671	Asist	3	TC	21
15142314	Inst	3	TC	47
10102108	Inst	3	EXC	47
15516303	Inst	1	TCv	38
16285988	Inst	1	TC	50
84570604	Inst	1	TC	37
7824945	Inst	1	TC	53
8019784	Inst	1	MT	23
13524820	Inst	1	TC	8
5655983	Asoc	3	EXC	1
11462979	Inst	1	TC	40
14917365	Inst	1	MT	23
8047120	Asoc	3	EXC	1
13966054	Agre	3	TC	1
14917178	Inst	3	TC	15
10256095	Asist	3	TC	1
12722185	Asist	3	TC	1
10898072	Asist	3	EXC	1
11960173	Agre	3	EXC	1
11303172	Asist	3	TC	1
13524109	Inst	3	TC	1
9389944	Asoc	3	TC	20
8044725	Inst	3	TC	1
7509507	Inst	3	EXC	1
13967486	Aux	3	TC	5
15296169	Aux	3	TC	15
13723698	Inst	1	TC	15
11954144	Inst	1	TC	1
14401340	Inst	1	TC	1
11466224	Inst	1	TC	1
13477378	Inst	1	MT	15
3966127	Asist	3	EXC	25
10617743	Asist	3	EXC	35
10092487	Inst	3	TC	23
9475173	Inst	3	TC	1
10687170	Inst	3	TC	22
5198965	Agre	3	TC	20
12800893	Inst	3	TC	0
13013943	Asist	3	TC	0
13229040	Aux	3	TC	0
13230783	Asist	3	TC	0
13965382	Inst	3	TC	0
13965387	Inst	3	TC	0
13965541	Asist	3	TC	0
14447272	Inst	3	TC	0
15235049	Inst	3	TC	0
15235336	Inst	3	TC	0
16604063	Inst	3	TC	0
16605994	Asist	3	TC	0
7783689	Asist	3	TC	0
8717503	Inst	3	TC	0
9397892	Inst	3	TC	0
11216746	Asist	3	TC	0
13804657	Asist	3	TC	0
3990156	Agre	3	EXC	0
5435898	Asist	3	EXC	0
5446019	Asoc	3	EXC	0
5654904	Asoc	3	EXC	0
6908190	Agre	3	TCv	0
7545873	Agre	3	TC	0
7549702	Asist	3	TCv	0
7772181	Asist	3	TC	0
8000405	Inst	3	TC	0
8029795	Inst	3	TC	0
8042180	Asist	3	TC	0
8081463	Inst	3	MT	0
9474475	Inst	3	TC	0
11461500	Asist	3	EXC	0
15295791	Aux	3	TC	0
8007748	Inst	1	TCv	0
8773038	Inst	1	TC	0
10106333	Inst	1	MT	0
11959486	Inst	1	TC	0
11959905	Inst	1	TC	0
12349450	Inst	1	TC	0
17340511	Inst	1	TC	0
9390689	Inst	1	TCv	0
16716898	Inst	1	TC	0
13762920	Inst	1	MT	0
15693970	Inst	1	TCv	0
17664344	Inst	1	TCv	0
5502501	Aux	1	MT	0
9472709	Inst	1	MT	0
18620438	Aux	1	MT	0
20912440	Aux	1	MT	0
8049037	Inst	1	TC	0
12776115	Inst	1	TC	0
15584303	Inst	1	TCv	0
17662445	Inst	1	TC	0
11959873	Inst	1	TCv	0
12778312	Inst	1	MT	0
15584878	Inst	1	TC	0
18310574	Inst	1	TC	0
21364550	Inst	1	TC	0
84395445	Inst	1	MT	0
10108118	Inst	1	TC	0
10896132	Inst	1	TC	0
12777719	Inst	1	TC	0
14771192	Inst	1	MT	0
15175341	Inst	1	TC	0
18798060	Inst	1	TC	0
19487152	Inst	1	TC	0
19487788	Inst	1	MT	0
13688279	Inst	1	TCv	0
17129511	Inst	1	TC	0
6167653	Inst	1	TC	0
8076223	Inst	1	TC	0
8519916	Inst	1	TC	0
8705826	Inst	1	TC	0
9361725	Inst	1	MT	0
10856682	Inst	1	MT	0
10905552	Inst	1	TCv	0
11462892	Inst	1	TC	0
11954097	Inst	1	TC	0
12220551	Inst	1	MT	0
12487701	Inst	1	TC	0
13013755	Inst	1	TC	0
14131507	Inst	1	TCv	0
14255791	Inst	1	TC	0
14447036	Inst	1	MT	0
14447384	Inst	1	TC	0
15074652	Inst	1	TC	0
5740339	Asist	3	TC	0
9279327	AuxIII	3	EXC	0
9476268	Asoc	3	TC	0
5201622	Agre	3	TCv	0
8032732	Inst	3	TC	0
9473824	Agre	3	TC	0
8021842	Inst	1	TCv	0
8720054	Inst	1	TC	0
15234079	Inst	1	TC	0
15234490	Inst	1	TC	0
15695079	Inst	1	TC	0
16019616	Aux	1	TC	0
16019964	Inst	1	TC	0
16020533	Inst	1	MT	0
16020822	Inst	1	TC	0
16316134	Inst	1	TC	0
16657714	Inst	1	TC	0
17769893	Inst	1	TC	0
18579167	Inst	1	TC	0
18579209	Inst	1	TC	0
22656117	Inst	1	TC	0
3941437	Inst	1	TC	0
4353531	Inst	1	TC	0
8045536	Inst	1	TC	0
8075648	Inst	1	TC	0
8707022	Inst	1	TCv	0
11465010	Inst	1	MT	0
12487991	Inst	1	TC	0
13790769	Inst	1	TC	0
15695370	Inst	1	MT	0
15695737	Inst	1	TC	0
16907428	Inst	1	TC	0
17321417	Inst	1	TC	0
18264711	Inst	1	TC	0
3297745	Inst	1	MT	0
4700593	Inst	1	TCv	0
7973553	Inst	1	TCv	0
9203225	Inst	1	TCv	0
9390966	Inst	1	TC	0
9392858	Inst	1	TC	0
9496511	Inst	1	MT	0
10241655	Inst	1	TCv	0
11236773	Inst	1	TC	0
10720364	Agre	3	TC	20
19440209	Inst	1	TC	37
3908624	Inst	1	MT	39
5201033	Inst	1	TC	21
14917541	Inst	1	TC	23
18962414	Inst	1	TC	37
8022340	Inst	1	TCv	47
4589713	Inst	1	TC	23
8013569	Inst	1	TC	21
8023975	Inst	1	MT	27
3991395	Inst	1	TC	23
6966311	Inst	1	TC	29
9602126	Inst	1	MT	43
7482782	Inst	1	MT	43
18308852	Inst	1	TC	33
2069838	Inst	1	TC	13
7785696	Inst	1	MT	43
10108462	Inst	1	TCv	43
8034298	Inst	1	MT	23
84492794	Inst	1	MT	54
8033769	Inst	1	MT	29
14589482	Inst	1	MT	23
13499843	Aux	1	MT	45
10716040	Aux	1	MT	45
15295462	Aux	1	MT	45
10751767	Inst	1	MT	23
11319506	Inst	1	TC	0
11460232	Inst	1	TCv	0
11912990	Inst	1	TCv	0
11914501	Inst	1	MT	0
11955728	Inst	1	MT	0
12354608	Inst	1	TC	0
12655010	Inst	1	MT	0
13208733	Inst	1	TCv	0
13803295	Inst	1	TCv	0
14022931	Inst	1	TC	0
14249554	Inst	1	TC	0
14957722	Inst	1	TC	0
15174952	Inst	1	MT	0
15357168	Inst	1	TC	0
15432243	Inst	1	TC	0
15947784	Inst	1	MT	0
16351978	Inst	1	TC	0
16716300	Inst	1	TC	0
16743379	Inst	1	TC	0
17436794	Inst	1	TC	0
17437536	Inst	1	TC	0
17794526	Inst	1	TC	0
18055149	Inst	1	TC	0
18208897	Inst	1	TC	0
18614251	Inst	1	TCv	0
18615818	Inst	1	TC	0
19236516	Inst	1	MT	0
8038358	Aux	1	TCv	0
11361473	Inst	1	TCv	0
12321519	Inst	1	MT	0
13098687	Aux	1	MT	0
15621504	Aux	1	TCv	0
15920357	Aux	1	TC	0
17129591	Aux	1	MT	0
17239002	Inst	1	MT	0
17662802	Aux	1	MT	0
2086595	Inst	1	MT	0
8023615	Inst	1	TCv	0
8035343	Inst	1	MT	0
8040696	Inst	1	MT	0
8043996	Inst	1	TC	0
9320887	Inst	1	MT	0
9398159	Inst	1	TC	0
11960981	Inst	1	TC	0
13309223	Inst	1	MT	0
13648065	Inst	1	MT	0
13803902	Inst	1	MT	0
14067007	Inst	1	TC	0
14171327	Inst	1	MT	0
14267897	Inst	1	TC	0
14320450	Inst	1	MT	0
15174936	Aux	1	TCv	0
15295994	Aux	1	TC	0
15296686	Inst	1	TC	0
15621939	Inst	1	MT	0
15755730	Inst	1	MT	0
15784489	Inst	1	TC	0
16039221	Inst	1	MT	0
16199520	Inst	1	MT	0
16445626	Inst	1	MT	0
16655032	Inst	1	TC	0
17130332	Inst	1	MT	0
17130671	Inst	1	MT	0
17323027	Aux	1	TC	0
3223045	Inst	1	TC	0
8039615	Inst	1	TCv	0
10717019	Inst	1	TCv	0
12778229	Inst	1	MT	0
14107223	Inst	1	TCv	0
13524598	Inst	1	MT	0
5466076	Agre	3	EXC	47
7080727	Asist	3	EXC	8
8041985	Agre	3	EXC	47
8039463	Asist	3	TC	47
19592116	Inst	1	TC	47
12779833	Inst	1	MT	37
9081546	Asist	3	EXC	21
14131053	Inst	3	TC	47
6953950	Asoc	3	EXC	15
13648603	Asist	3	TC	15
17254684	Inst	1	TC	15
20039181	Inst	1	MT	54
13966349	Inst	1	TC	1
5200034	Inst	1	MT	44
9906615	Inst	1	TCv	41
11953708	Inst	1	TC	29
8045120	Inst	1	MT	43
9874227	Inst	1	MT	43
11705856	Inst	1	MT	23
18620054	Aux	1	MT	45
18618150	Aux	1	TC	45
19279167	Aux	1	TC	45
9474618	Inst	1	MT	29
17129049	Inst	1	TCv	29
10172170	Inst	1	TCv	29
11036485	Inst	1	MT	32
20199965	Inst	1	MT	29
12348836	Inst	1	TCv	29
5198826	Inst	1	TCv	43
\.


--
-- Data for Name: seccion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY seccion ("ID", id, turno, multiplicador, grupos, "idMECS", "idPeriodo", "periodoEstructura") FROM stdin;
15	A	d	1	f	8	6	T4-t2
16	B	n	1.5	f	8	6	T4-t2
17	A	d	1	f	8	6	T3-t3
18	B	n	1.5	f	8	6	T3-t3
19	C	n	1.5	f	8	6	T3-t3
20	A	n	1.5	f	8	6	T3-t2
21	B	d	1	f	8	6	T3-t2
22	A	d	1	f	8	6	T2-t3
23	B	n	1.5	f	8	6	T2-t3
24	A	d	1	f	8	6	T1-t3
25	B	d	1	f	8	6	T1-t3
26	C	n	1.5	f	8	6	T1-t3
27	A	d	1	f	2	6	T1-t1
28	B	n	1.5	f	2	6	T1-t1
29	A	d	1.5	f	5	8	TT
33	A	d	1	f	9	12	T3-t3
34	B	d	1	f	9	12	T3-t3
35	A	d	1	f	9	12	T4-t2
36	B	d	1	f	9	12	T4-t2
39	A	d	1	t	10	12	T1-t1
40	B	d	1	t	10	12	T1-t1
41	A	d	1	f	10	12	T1-t3
42	B	d	1	f	10	12	T1-t3
43	C	d	1	t	10	12	T1-t3
44	A	d	1	f	10	12	T2-t3
48	R	d	1	f	9	12	T4-t1
47	R	d	1	t	10	12	T1-t2
49	R	d	1	f	10	12	T0
50	R	d	1	f	11	14	TT
52	A	n	1.5	f	11	14	T3-t2
53	A	n	1.5	f	11	14	T3-t3
54	A	n	1.5	f	11	14	T4-t3
51	A	n	1.5	t	11	14	T3-t1
55	A	d	1	t	1	16	T1-t3
56	B	d	1	t	1	16	T1-t3
57	C	d	1	t	1	16	T1-t3
58	D	d	1	t	1	16	T1-t3
59	A	d	1	t	1	16	T2-t3
60	B	d	1	f	1	16	T2-t3
61	A	d	1	f	1	16	T3-t2
62	B	d	1	f	1	16	T3-t2
63	A	d	1	f	1	16	T3-t3
64	B	d	1	f	1	16	T3-t3
65	C	d	1	f	1	16	T3-t3
66	A	d	1	f	1	16	T4-t2
67	A	d	1	t	1	16	T1-t1
68	B	d	1	t	1	16	T1-t1
69	C	d	1	t	1	16	T1-t1
70	R	d	1	f	1	16	T0
71	A	n	1.5	f	12	18	T4-t3
72	A	d	1	f	12	18	TT
73	B	d	1	f	12	18	TT
74	A	d	1	f	14	20	T1-s1
75	A	d	1	f	14	20	T2-s1
76	A	d	1	f	15	22	T2-t1
\.


--
-- Data for Name: unidadCurricular; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "unidadCurricular" (id, nombre, renombrable, "idCarrera", "idEje") FROM stdin;
AGAGE242	Agroepistemología	f	01	5
AGANA262	Alimentación y Nutrición Animal Alternativa	f	01	2
AGATMA242	Aplicación de Técnicas y Metodologías Agroecologicas	f	01	2
AGATMA246	Técnicas y Metodologías Agroecologicas	f	01	2
AGBFSPV242	Botánica, Fisiología y Sistemas de Producción Vegetal	f	01	2
ADM6032	Administración de Mercadeo	f	04	2
AGANA342	Alimentación y Nutrición Animal Alternativa	f	01	2
AGANM342	Análisis Matemático	f	01	2
AGANM362	Análisis Matemático	f	01	2
AGGAE342	Gestión Agroecológica	f	01	2
AGGAE362	Gestión Agroecológica	f	01	2
AGECC442	Ecoconstrucciones	f	01	2
AGPEP442	Pedagogía y Política	f	01	5
AGSPV262	Sistemas de Producción Vegetal	f	01	2
AGZFSPA242	Zoología, Fisiología y Sistemas de Producción Animal	f	01	2
COC9023	Contabilidad de Costos	f	07	2
CON12024	Contabilidad II	f	04	2
CON15025	Contabilidad II	f	07	2
DCCTT2-1445	Desarrollo y Calidad de Vida de las Comunidades Turisticas	f	06	5
DIAGINAU-245	Diagnostico e Intervención Auditiva I	f	08	2
DIAGINHA-256	Diagnostico e Intervención del Habla	f	08	2
DIAGINLE-256	Diagnostico e Intervención del Lenguaje I	f	08	2
AGPFIII3126	Proyecto Formativo III	f	01	3
AGPFIII3166	Proyecto Formativo III	f	01	3
AGPSLC342	Pensamiento Sociopolítico Latinoamericano y del Caribe	f	01	5
AGSPA262	Sistemas de Producción Animal	f	01	2
AUD9033	Auditoria I	f	07	2
DAR9033	Deporte Arte y Recreación II	f	04	2
DEPORECR-322	Deporte y Recreacion	f	08	2
DIAGINAU-345	Diagnostico e Intervención Auditiva II	f	08	2
DIAGINLE-345	Diagnostico e Intervención del Lenguaje II	f	08	2
DIAGINVO-345	Diagnostico e Intervención de la Voz I	f	08	2
AGPFIV41	Proyecto Formativo IV	f	01	3
AGPFIV4166	Proyecto Formativo IV	f	01	3
AGSCSNI442	Sistemas de Certificación Social Nacional e Internacional	f	01	2
APUALC15045	Adm en los Procesos de Unidad de América Latina el Caribe	f	04	5
AUD9043	Auditoria II	f	07	2
COE9043	Contabilidad Especializada	f	07	2
DIAGINAU-457	Diagnostico e Intervención Auditiva III	f	08	2
DIAGINVO-447	Diagnostico e Intervención de la Voz II	f	08	2
ESMD15025	Economía, Sustentabilidad y Modelos de Desarrollo	f	04	5
IDIOT2-2167	Idiomas II	f	06	2
NEUROLIN-245	Neurolinguistica	f	08	2
OUPST2-61220	Oper. Unidades Prod. Social y Facilitación de Serv. Turist.	f	06	3
OYS9023	Organización y Sistemas	f	04	2
PATOCOHU-256	Patología de la Comunicación Humana	f	08	2
DSRST3-1445	Des. Sustentable y Sost. de los Recursos y Serv. Tur.	f	06	5
DTCST3-61220	Desarrollo del Turismo Comunitario y Social	f	06	3
FEVP001	Formulación y Evaluación de Proyectos	f	07	2
GDTUT3-2167	Gestión de Destinos Turísticos	f	06	2
GEC9033	Gerencia de Costos	f	07	2
GEF9033	Gestión Financiera	f	07	2
IDI9033	Idiomas II	f	04	2
IDIOT3-28810	Idiomas III	f	06	2
ING9033	Ingles II	f	04	2
MOTRORAL-334	Motricidad Oral	f	08	2
EDUCAMBI-434	Educación Ambiental	f	08	2
ETCAT4-1806	Estudios del Turismo en el Gran Caribe y los Paises del Alba	f	06	5
FEP9043	Formulación y Evaluación de Proyectos	f	04	2
GEPTT4-61220	Gestión de Proyectos Turisticos	f	06	3
GESTADFO-457	Gestión Administrativa en Fonoaudiología	f	08	2
GHAT9043	Gestión Humana y Ambiente de Trabajo	f	07	2
IDIOT4-2167	Idiomas IV	f	06	2
PCC211409	Tutoria de Proyecto II	f	02	3
PCC223309	Administración de Obras	f	02	2
PCEP9023	Presupuesto y Contabilidad Para Entes Públicos	f	07	2
PCC311409	Tutoria de Proyecto III	f	02	3
PCC325309	Diseño Vial	f	02	2
PCC411409	Tutoria de Proyecto IV	f	02	3
PGT21	Petrología	f	05	2
PGT23	Física	f	05	2
PG316	Proyecto III	f	05	3
PGT31	Yacimientos Minerales	f	05	2
PGT32	Exploracion	f	05	2
PGT33	Geomecanica	f	05	2
PGT34	Mineria II	f	05	2
PG416	Proyecto IV	f	05	3
PGT41	Geología de Venezuela	f	05	2
PGT42	Geología de los Hidrocarburos	f	05	2
PGT43	Hidrología	f	05	2
PGT44	Beneficio Mineral	f	05	2
PGT45	Gerencia	f	05	2
PGT46	Electiva II	f	05	2
PGT47	Proyecto IV	f	05	3
PRACPROF-2120	Practicas Profesionales I	f	08	2
PRO57019	Supervisión y Conducción Técnica de Procesos Adm.	f	04	3
DAR9013	Deporte Arte y Recreación I	f	04	2
PRO700224	Supervisión y Conducción Técnica de Procesos Adm.	f	04	3
PPR9033	Presupuesto Privado	f	07	2
PRACPROF-3120	Practicas Profesionales II	f	08	2
PROYSOCI-334	Proyecto Sociointegrador III	f	08	3
PSICOMOT-323	Psicomotricidad	f	08	2
FSC12024	Formación Socio Crítica II	f	04	5
ELC6012	Electiva I	t	04	1
ELC6002	Electiva II	t	04	1
FSC12034	Formación Socio Crítica III	f	04	5
ELC6032	Electiva III	t	04	1
ELEC6042	Electiva IV	t	04	1
FSC1244	Formación Socio Crítica IV	f	04	5
PORTINST-434	Portugues Instrumental	f	08	2
PRACPROF-41216	Practicas Profesionales III	f	08	2
PRO660422	Desarrollo de Nuevas Tendencias en la Gestión Contable Finan	f	07	3
PROYSOCI-479	Proyecto Sociointegrador IV	f	08	3
PG234	Minería II	f	05	2
SALUOCFO-456	Salud Ocupacional en Fonoaudiología	f	08	2
ELECTIVA-322	Electiva III	t	08	2
ELECTIVA-422	Electiva IV	t	08	2
AGBSD142	Biodiversidad y Sociodiversidad	f	01	2
AGPFI1126	Proyecto Formativo I	f	01	3
AGPFI1166	Proyecto Formativo I	f	01	3
AGPRA142	Principios de Agroecología	f	01	2
AGPRA162	Principios de Agroecología	f	01	2
AGSALC14	Sociohistoria de la Agricultura Latinoamer. y del Caribe	f	01	5
AGSALC142	Sociohistoria de la Agricultura Latinoamer. y del Caribe	f	01	5
APN15015	Administración Pública Nacional	f	04	5
BASEACCO-156	Bases Acusticas de la Comunicacion	f	08	2
BASEPRFO-156	Bases de la Practica Fonoaudiologica	f	08	2
ESTRFUCO-156	Estructura y Función de la Comunicacion	f	08	2
FONEFONO-134	Fonetica y Fonología	f	08	2
FPNTT1-61220	Fomento del Patrimonio Nacional y Turistico	f	06	3
IDI9013	Idiomas I	f	04	2
IDIOT1-2167	Idiomas I	f	06	2
ING9013	Ingles I	f	04	2
INGLINST-134	Ingles Instrumental	f	08	2
ORGAPACO-134	Organización y Participación Comunitaria	f	08	2
PANTT1-1445	Patrimonio Nacional y Turístico	f	06	5
PCC111409	Tutoria de Proyecto	f	02	3
PCC113309	Matematica	f	02	2
PCC115309	Topografia	f	02	2
PCC116309	Expresión Grafica y Dibujo de Proyecto	f	02	2
THAT9023	Talento Humano y Ambiente de Trabajo	f	04	2
TECNTEFO-456	Tecnicas y Tecnologías en Fonoaudiología	f	08	2
PG116	Proyecto I	f	05	3
PGT11	Matematica	f	05	2
PGT12	Topografia	f	05	2
PGT13	Quimica	f	05	2
PGT14	Geología General	f	05	2
PGT15	Dimensión Humana	f	05	5
PGT17	Proyecto I	f	05	3
PRO570119	Identificar y Conocer los Procesos Administrativos en Distin	f	04	3
PRO700124	Anál y Ejec de los Procesos Adm en las Distintas Organiz.	f	04	3
PROYSOCI-145	Proyecto Sociointegrador I	f	08	3
SEM15015	Orígen y Evolución del Sistema Socioeconómico Mundial	f	07	5
AGPFII2126	Proyecto Formativo II	f	01	3
AGPFII2166	Proyecto Formativo II	f	01	3
PG216	Proyecto II	f	05	3
PGT22	Cartografia Geologica	f	05	2
PGT24	Mineria I	f	05	2
PGT25	Estratigrafia	f	05	2
PGT26	Electiva I	f	05	2
PGT27	Proyecto II	f	05	3
PROYSOCI-234	Proyecto Sociointegrador II	f	08	3
RECUPSFO-245	Recursos Psicoterapeuticos en Fonoaudiología	f	08	2
SEV15025	Sistema Economico y Modelos de Desarrollo Venezolano	f	07	5
AGMSA342	Manejo Sanitario Animal	f	01	2
PGT35	Ambiente	f	05	2
PGT37	Proyecto III	f	05	3
PRO6604223	Electiva III	f	07	2
70002	Seminario Niif Para Pymes	f	07	2
AGFIAIP	Física Aplicada	f	01	2
70013	Electiva II	f	07	2
ADETT2-722	Administración de Empresas Turisticas	f	06	2
AGAGC242	Agroclimatología 	f	01	2
AGDREV242	Diseminación y Reprod. de Especies Vegetales	f	01	2
AGDRV242	Diseminación y Reprod. de Especies Vegetales	f	01	2
AGDSRC142	Deporte, Salud, Recreación y Cultura	f	01	1
AGMCA242	Microbiología de los Alimentos	f	01	5
AGMCB262	Microbiología	f	01	5
AGMIC242	Microbiología 	f	01	2
AGORS242	Organizaciones Socioproductivas	f	01	5
70003	Deporte, Arte y Recreación II	f	07	2
AGETD362	Estadística	f	01	2
70006	Herramientas Tecnológicas II	f	07	2
70011	Ajuste Por Inflación Financiero	f	07	2
70012	Bases Epistemologicas de las Ciencias Contables I	f	07	2
ADP9033	Administración de la Producción	f	04	2
AGAGR342	Agroestadística	f	01	2
AGAMI001	Metodología de la Investigación	f	01	1
AGEPS342	Economía Política y Social I	f	01	5
AGMEI362	Manejo Ecológico de Insectos y Enfermedades	f	01	5
AGCTS442	Ciencia, Tecnología y Sociedad.	f	01	5
AGCTS462	Ciencia, Tecnología y Sociedad	f	01	5
AGECE442	Economía Ecológica	f	01	2
AGECR462	Ecorregiones	f	01	2
AGECR4C42	Ecorregiones	f	01	4
AGEPS442	Economía Política y Social II	f	01	5
AGFMP442	Fitomejoramiento Participativo	f	01	2
AGFMP462	Fitomejoramiento Participativo	f	01	2
AGHCA462	Higiene y Control de Calidad en los Alimentos	f	01	2
AGHCCA442	Higiene y Control de Calidad en los Alimentos	f	01	2
AGMAP442	Mejoramiento Animal Participativo	f	01	2
CON15015	Contabilidad I	f	04	2
ADC9023	Administración de Costos	f	04	2
AEF9033	Análisis e Interpretación de Estados Financieros	f	04	2
ADF9043	Administración Financiera	f	04	2
AGMAP46	Mejoramiento Animal Participativo	f	01	2
AGMEI442	Maquinarias, Equipos e Implementos Agrícolas Alternativos	f	01	2
AGPEP462	Pedagogía y Política	f	01	5
AGPN003	Proy. Nac. y Nueva Ciudadania	f	01	5
PCC000002	Mecánica Aplicada	f	02	2
AGPRAIP	Principios de Agroecología	f	01	2
AGTI002	Taller Introd. Univers. Progr.	f	01	5
CPNMS6002	La Contaduria Pública en el Nuevo Modelo Social	f	07	2
DEINTI-301	Desarrollo Integral	f	06	2
DI6002	Desarrollo Integral	f	07	2
AGREA242	Reproducción de Especies Animales 	f	01	2
AGREA262	Reproducción de Especies Animales	f	01	2
AGSC00	Servicio Comunitario	f	01	5
AGSEA242	Suelo, Ecología y Agricultura	f	01	2
AGSEA262	Suelo, Ecología y Agricultura	f	01	2
AGTCSI242	Topografía Catastro y Sistemas de Información Geográfica	f	01	2
AGTOG262	Topografía	f	01	2
AVTTT2-1084	Administración de Agencias de Viajes y Transporte Turistico	f	06	2
ELECTIVA-122	Electiva I	t	08	2
PCCP11309	Proyecto Nacional y Nueva Ciudadania	f	02	5
PCCP12209	Taller de Inducción a la Universidad y al Programa	f	02	5
PCCP13509	Matematica de Nivelacion	f	02	2
AGSIP342	Sistemas Integrales de Producción	f	01	2
AGSRD342	Sistemas de Riego y Drenaje	f	01	2
AGSRD362	Sistemas de Riego y Drenaje	f	01	2
AGPLE442	Planificación Ecorregional	f	01	2
AGPLE462	Planificación Ecorregional	f	01	2
AGPSL362	Pensamiento Sociopolítico Latinoamericano y del Caribe	f	01	5
AGSIG462	Sistemas de Información Geográfica	f	01	2
AGSIP362	Sistemas Integrales de Producción	f	01	2
COMET4-963	Comercio Electronico	f	06	2
COO6042	Comportamiento Organizacional	f	07	2
DEPTT4-963	Diseño y Evaluación de Proyectos Turisticos	f	06	2
DET6042	Dimensiones Eticas Aplicadas al Ejercicio Profesional	f	07	2
DETHT4-722	Desarrollo del Talento Humano	f	06	2
FISICAFO-03	Física	f	08	2
HERTECFO-05	Herramientas Tecnologicas	f	08	2
IDIOTI-602	Idiomas	f	06	2
IDIOTT-48	Idiomas	f	06	2
INPNFOFO-05	Introducción al PNF en Fonoaudiología	f	08	2
IUTSTI-482	Intr. a la Univ. y el Turismo en el Nuevo Modelo Social	f	06	2
IUTSTT-36	Introducción a la Universidad y el Turismo	f	06	2
LECCOMFO-05	Lectura y Comprension	f	08	2
MATETI-963	Matematicas	f	06	2
PCC012209	Taller de Inducción a la Universidad Pol.	f	02	5
PCC013509	Matematica Inicial	f	02	2
PCC014209	Optativa Institucional	f	02	2
PCC015209	Construcción Civil y Sociedad	f	02	2
PCC011309	Proyecto Nacional y Nueva Ciudadania	f	02	5
GABET2-843	Gestión de Alimentos y Bebidas	f	06	2
GEDAT2-1084	Gestión de Alojamiento	f	06	2
GORET2-722	Gestión de Ocio y Recreacion	f	06	2
LLS6022	Legislación Laboral y Seguridad Social	f	07	2
PG113	Quimica I	f	05	2
MLO0602	Marco Legal de las Organizaciones	f	04	2
OM6022	Organización y Métodos	f	04	2
INMET3-963	Investigación de Mercados Emisores	f	06	2
MOTUT3-963	Modalidades Turísticas	f	06	2
FAPTT4-963	Factibilidad de Proyectos Turisticos	f	06	2
GFETT4-963	Gestión Financiera de las Empresas Turisticas	f	06	2
NETUT4-963	Negociación Turisticas	f	06	2
PCC117109	Salud Física	f	02	1
PCCP14209	Mecánica Aplicada	f	02	1
PCC133209	Gestión de Obras Sostenibles	f	02	2
PCC200	Servicio Comunitario	f	02	5
PCC211410	Participación Comunitaria	f	02	1
PCC212109	Higiene y Seguridad Industrial	f	02	5
PCC214109	Resistencia de Materiales	f	02	2
PCC217109	Idiomas	f	02	1
PCC222109	Impacto Ambiental en la Construccion	f	02	5
PCC224309	Tecnología de la Construccion	f	02	2
PCC225309	Mecánica de Suelos	f	02	2
PCC226209	Instalaciones Sanitarias y de Gas	f	02	2
PCC232109	Desarrollo Profesional y Etica	f	02	5
PCC234209	Electricidad y Mecánica	f	02	2
PCC235309	Obras Viales	f	02	2
PCC236209	Sistemas Hidrosanitarios	f	02	2
PCC237109	Electiva I	f	02	1
PG211	Petrología	f	05	2
PCC312109	Desarrollo Endogeno en la Construccion	f	02	5
PCC313309	Algebra Lineal	f	02	2
PCC314309	Geometria Descriptiva	f	02	2
PCC315309	Geología Aplicada	f	02	2
PCC316309	Mecánica de los Fluidos Para Ingenieros	f	02	2
PCC322109	Organismos y Convenios Internacionales	f	02	5
PCC323309	Matematica Para Ingenieros	f	02	2
PCC324309	Analisis Estructural	f	02	2
PCC326309	Resistencia de Materiales Para Ingenieros	f	02	2
PCC332109	Politica de Habitat y Vivienda	f	02	5
PCC333309	Economia y Gerencia de Proyectos	f	02	2
PCC334309	Concreto Armado	f	02	2
PCC336309	Hidrología	f	02	2
PCC416309	Acueductos de Cloacas y Drenajes	f	02	2
PCC412109	Ingenieria y Patrimonio 	f	02	5
DI6001	Desarrollo Integral	f	04	2
COG6032	Contabilidad Gubernamental	f	04	2
ADD9043	Auditoría Administrativa	f	04	2
DFC9023	Deberes Formales del Contribuyente II	f	04	2
PCC413309	Urbanismos y Edificaciones	f	02	2
PCC415309	Ingenieria de Transito	f	02	2
PCC422109	Gerencia Social	f	02	5
PCC424309	Diseño Estructural	f	02	2
PCC425309	Pavimentos	f	02	2
PCC426309	Saneamientos y Conservación Ambiental	f	02	2
PCC432109	Evaluación Ambiental	f	02	5
PCC434309	Fundaciones y Muros	f	02	2
PGTI1	Matematica Inical	f	05	2
PGTI2	Proyecto Nacional y Nueva Ciudadania	f	05	5
PGTI3	Introducción a la Universidad Politecnica y PNF	f	05	2
PGTI4	Introducción a los Proyectos y al PNF	f	05	5
PGTI5	Educación Física	f	05	2
PGTT1	Matematica III	f	05	2
PGTT2	Inducción a la Geociencias	f	05	2
PGTT3	Proyecto Nacional y Nueva Ciudadania Int Univ. Pol. y PNF	f	05	5
PGTT4	Principios de Física y Mecánica	f	05	2
PG221	Sedimentología	f	05	2
PG222	Geomorfología y Teledetección	f	05	2
PG223	Física Aplicada	f	05	2
PG224	Minería I	f	05	2
PG225	Soberanía Política e Independencia Económica II	f	05	5
PG231	Estratigrafía	f	05	2
PG232	Geología de Campo	f	05	2
PG233	Mecánica Racional	f	05	2
PG235	Políticas Energeticas	f	05	5
PG311	Estadistica	f	05	2
PG312	Mecánica de Fluidos	f	05	2
PG313	Resistencia de Materiales	f	05	2
PG314	Servicio de Minas	f	05	2
PG315	Ciencia y Tecnología I	f	05	5
PG321	Geología de Yacimientos	f	05	2
PG322	Hidrología	f	05	2
PG323	Mecánica de Rocas y Suelos	f	05	2
PG324	Diseño de Sistemas Mineros	f	05	2
PG325	Ciencia y Tecnología II	f	05	5
PG331	Evaluación de Yacimientos	f	05	2
PG332	Hidrogeología	f	05	2
PG333	Geotécnia	f	05	2
PG334	Legislación Minera y Petrolera	f	05	2
PG335	Lógica Dialectica	f	05	5
PG411	Geología Histórica	f	05	2
PG412	Exploración Geofísica	f	05	2
PG413	Seguridad, Higiene y Ambiente	f	05	2
PG414	Preparación y Concentración de Minerales I	f	05	2
PG415	Economía Política I	f	05	5
PG421	Geología de Venezuela	f	05	2
PG422	Exploración Geoquímica	f	05	2
PG423	Gestión Ambiental 	f	05	2
PG424	Preparación y Concentración de Minerales II	f	05	2
PG425	Economía Política II	f	05	5
PG431	Geología del Petróleo	f	05	2
PG432	Gerencia de Proyectos	f	05	2
PG433	Evaluación y Gestión de Riesgos Geológicos	f	05	2
PG434	Diseño de Plantas Mineras	f	05	2
PG435	Economía Política III	f	05	5
PIPN003	Proy. Nac. y Nueva Ciudadania	f	01	5
PITI002	Taller Introd. Univers. Progr.	f	01	5
PNNC8003	Proyecto Nacional y Nueva Ciudadania	f	07	5
PNNCTI-963	Proyecto Nacional y Nueva Ciudadania	f	06	5
PNNCTT-48	Proyecto Nacional y Nueva Ciudadania	f	06	5
PRNANCFO-03	Proyecto Nacional y Nueva Ciudadania	f	08	5
SALPUBFO-04	Salud Pública	f	08	2
PIMT004	Matemática	f	03	2
TCPNMS6002	La Contaduria Pública en el Nuevo Modelo Social	f	07	2
PIRI2	Compresión de la Lectura y Redacción de Textos Académicos	f	03	1
PRO7502251	Ingles II	f	07	2
PRO7502252	Fundamentos Tecnicos y Juridicos de la Administración Pública	f	07	2
SC00	Servicio Comunitario	f	04	5
PLMTT3-963	Plan de Mercadeo Turístico	f	06	2
PPR3031	Presupuesto Privado	f	04	2
PPU4032	Presupuesto Público	f	04	2
PRO6604221	Herramientas Tecnologicas III	f	07	2
PRO6604222	Bases Epistemologicas de la Ciencia Contable II	f	07	2
PRO6604224	Gestión Social	f	07	2
PRO6604226	Liderazgo y Toma de Decisiones	f	07	2
PRO6604227	Responsabilidad Social	f	07	2
SFN6042	Sistema Financiero Nacional	f	04	2
TECOTI-361	Tecnologías de la Comunicacion	f	06	2
TECOTT-48	Tecnologías de la Comunicacion	f	06	2
THERTECFO-03	Herramientas Tecnologicas	f	08	2
TINVESAFO-04	Investigación en Salud	f	08	2
TPNNC8003	Proyecto Nacional y Nueva Ciudadania	f	07	5
TPORTINFO-03	Portugues Instrumental	f	08	2
TPRNANCFO-03	Proyecto Nacional y Nueva Ciudadania	f	08	5
PCC000001	Física Aplicada	f	02	2
70001	Deporte, Arte y Recreación I	f	07	2
70004	Tecnología de la Comunicación e Información	f	07	2
70005	Fundamentos de la Administración	f	07	2
70008	Electiva I	f	07	2
70009	Ingles I	f	07	2
70010	Deberes Formales del Contribuyente	f	07	2
AGBSD162	Biodiversidad y Sociodiversidad	f	01	2
AGCGA142	Cálculo Geométrico Aplicado	f	01	2
AGCGA16	Cálculo Geométrico Aplicado	f	01	2
AGFIA142	Física Aplicada	f	01	2
AGFIA162	Física Aplicada	f	01	2
AGMAA16	Matematica Aplicada	f	01	2
AGMAT142	Manejo de las Tic	f	01	1
AGMEI162	Maquinarias, Equipos e Implementos Agrícolas Alternativos	f	01	2
PYG9033	Planificación y Gestión	f	04	2
SISF9043	Sistemas Financieros	f	04	2
PIA9043	Paquetes Informáticos Aplicados a la Administración	f	04	2
ANM60T2	Administración en el Nuevo Modelo Social Transición	f	04	2
PPP9023	Presupuesto Público y Privado	f	04	2
AGPLA142	Políticas y Legislación Agraria	f	01	2
AGPLA162	Políticas y Legislación Agraria	f	01	5
PIGP4	Gestión de Proyectos Informáticos	f	03	2
AGPRB142	Principios de Biología 	f	01	2
AGPRB162	Principios de Biología	f	01	5
AGPRBQ142	Principios de Bioquímica	f	01	2
AGPRBQ162	Principios de Bioquímica	f	01	5
AGQGA142	Química General Aplicada	f	01	2
AGQGA16	Química General Aplicada	f	01	2
AGZFA162	Zoología y Fisiología Animal	f	01	2
CASTT1-722	Calidad de los Servicios Turisticos	f	06	2
DIPTT1-601	Diseño de Producto Turístico	f	06	2
ECC001	Elementos Contables en las Cooperativas	f	07	2
FE6012	Fundamentos de la Economia	f	07	2
GETUT1-602	Geografía Turística	f	06	2
MLE6012	Marco Legal de las Entidades	f	07	2
PCC112109	Estructura Organizativa del Estado	f	02	5
PCC114109	Construcción de Documentos	f	02	5
PCC114111	Lenguaje y Comunicación	f	02	1
PCC118109	Cultura	f	02	1
TRI6022	Tributación I	f	07	2
TDR3031	Declaración de Rentas	f	04	2
TIC6032	Tecnologías de la Información y Comunicación III	f	04	2
TRI6032	Tributación II	f	07	2
PCC414309	Acero y Madera	f	02	2
PCC122109	Geografia y Habitat	f	02	5
PCC124109	Informática Instrumental	f	02	1
PCC127209	Física Aplicada	f	02	2
PCC132109	Economia y Produccion	f	02	5
PCC134209	Mecánica	f	02	2
PCC137109	Quimica General	f	02	2
PCC215309	Analisis Estadisticos	f	02	2
PG111	Matematica I	f	05	2
PG112	Sistemas de Representación Grafica	f	05	2
PG114	Introducción a la Geociencia	f	05	2
51208	Estructura De Datos	f	45	1
PG115	Dimensión Universal del Hombre I	f	05	5
PG117	Redacción de Informes Técnicos	f	05	1
PG121	Matematica II	f	05	2
PG122	Topografia	f	05	2
PG123	Quimica II	f	05	2
PG124	Geología General	f	05	2
PG125	Dimensión Universal del Hombre II	f	05	5
PG131	Matematica III	f	05	2
PG132	Topografia Aplicada	f	05	2
PG133	Mineralogía	f	05	2
PG134	Geoquimica	f	05	2
PG135	Analisis Critico de la Realidad Venezolana	f	05	5
PI1108	Ofimática	f	03	1
PLTUT1-722	Planificación Turística	f	06	2
PSICOLOG-134	Psicología	f	08	2
PTI6012	Tecnologías de la Información y Comunicación I	f	04	2
SPC001	Sistemas y Procedimientos Contables	f	07	2
TETUT1-602	Teoría del Turismo	f	06	2
TPTUT1-722	Tecnicas de Promoción Turistica	f	06	2
PG212	Geología Estructural y Geotectónica	f	05	2
PG213	Física	f	05	2
PG214	Métodos de Perforación	f	05	2
PCC216309	Mecánica de los Fluidos	f	02	2
PG215	Soberanía Política e Independencia Económica I	f	05	5
PG217	T.I.C.	f	05	1
PRO7502253	Sistema Bancario Venezolano	f	07	2
PRO7502254	Organización y Metodos	f	07	2
PRO7502255	Herramientas Tecnologicas I	f	07	2
PRO7502256	Tendencias Contemporaneas de la Contabilidad	f	07	2
PROTT2-722	Procesos y Operaciones Turisticas	f	06	2
PTI6022	Tecnologías de la Información y Comunicación II	f	04	2
AGMEIE342	Manejo Ecológico de Insectos y Enfermedades	f	01	2
AGOTA362	Operaciones Básicas en la Transformación de Alimentos	f	01	2
PCC434310	Obras de Sistemas de Transito	f	02	2
PCC435109	Electiva II	f	02	1
PCC436309	Obras Hidraulicas	f	02	2
PCC437109	Electiva III	f	02	1
1	Alfabetización Tecnológica	f	03	2
PIPT2	Proyecto Socio Tecnológico II	f	03	3
PISI4	Seguridad Informática	f	03	2
PIFC4	Formación Crítica IV	f	03	5
PIMA3	Matemática Aplicada	f	03	2
PIAB4	Administración de Base de Datos	f	03	2
PIAI4	Auditoría Informática	f	03	2
PIMB3	Modelado de Base de Datos	f	03	2
PIBD2	Base de Datos	f	03	2
PIPP2	Programación II	f	03	2
ADAW	Electiva Desarrollo de Aplicaciones en la Web	f	03	2
PIPT1	Proyecto Sociotecnológico I	f	03	3
PIPT3	Proyecto Sociotecnológico III	f	03	3
PIPT4	Proyecto Sociotecnológico IV	f	03	3
PIMT1	Matemática I	f	03	2
PIIS3	Ingeniería del Software II	f	03	2
PIID1	Idiomas	f	03	2
PIID4	Idiomas	f	03	2
PIRC2	Redes de Computadores	f	03	2
PIAC1	Arquitectura del Computador	f	03	2
PIFC2	Formación Critica II	f	03	5
PIIO3	Investigación de Operaciones	f	03	2
PISO3	Sistemas Operativos	f	03	2
PIFC3	Formación Critica III	f	03	5
PIS03	Ingeniería del Software I	f	03	2
EST6012	Estadística	f	04	2
OFI9013	Operaciones Financieras	f	04	2
TPM9013	Teoría y Práctica del Mercadeo	f	04	2
HDI9023	Habilidades Directivas I	f	04	2
CGA9043	Control de Gestión Administrativa	f	04	2
DFC9013	Deberes Formales del Contribuyente	f	04	2
PIRA4	Redes Avanzadas	f	03	2
PIPNP03	Proyecto Nacional y Nueva Ciudadania	f	03	5
PRO750125	Análisis y Ejecución de los Procesos Compatibles Aplicados	f	07	3
CON18016	Contabilidad I	f	07	2
PCC423309	Mantenimiento de Obras Civiles	f	02	2
PCC213309	Materiales de Construccion	f	02	2
AGBFV162	Botánica y Fisiología Vegetal	f	01	2
PIMT2	Matemática II	f	03	2
PIFC1	Formación Crítica I	f	03	5
PITIP02	Introdución a los Proyectos y al Programa	f	03	5
EFSI	Electiva Fundamentos de Sistemas de Información	f	03	1
MAD9013	Matemática	f	04	2
PNNC6002	Proyecto Nacional y Nueva Ciudadanía	f	04	5
GRPC6002	Gestión de Riesgos y Protección Civil	f	04	2
PRO27019	Proyecto	f	04	3
FAD15015	Fundamentos de la Administración	f	04	2
FSC12014	Formación Socio Crítica I	f	04	5
TIC6012	TICs	f	04	2
MAJ6012	Marco Jurídico I	f	04	2
PRYII27029	Proyecto II	f	04	3
CON150152	Contabilidad II	f	04	2
FDE9023	Fundamentos de Economía	f	04	2
MAJ6022	Marco Jurídico II	f	04	2
GEA6022	Gestión Ecológica Ambiental	f	04	4
GTH9023	Gestión de Talento Humano	f	04	2
EEP60T2	Ética en el Ejercicio Profesional	f	04	5
GEA60T2	Gestión Ecológica y Ambiental	f	04	4
PNC60T2	Proyecto Nacional y Nueva Ciudadanía Transición	f	04	5
SEM260T2	Desarrollo Social Comunitario	f	04	5
SEM160T2	Actualización Contable	f	04	2
PRO2739	Proyecto III	f	04	3
PIAP1	Algorítmica y Programación	f	03	2
EST6032	Estadística II	f	04	2
SAD6032	Sistemas Administrativos	f	04	2
HDI9033	Habilidades Directivas II	f	04	2
ADC9033	Administración de Costos II	f	04	2
PRO2749	Proyecto IV	f	04	3
GP9043	Gestión Pública	f	04	2
IOP9043	Investigación de Operaciones	f	04	2
AMS6002	Administración en el Nuevo Modelo Social	f	04	2
ADF6042	Administración Financiera	f	04	2
SIF6042	Sistemas Financieros	f	04	2
FSC18046	Formación Socio Crítica IV	f	04	5
PNNC9003	Proyecto Nacional y Nueva Ciudadanía	f	04	5
PIEL3	Electiva III	t	03	2
PCG6042	Control de Gestión Administrativa	f	04	2
PRO6002	La Administración en el Nuevo Modelo Social	f	04	2
GRPC3001	Gestión de Riesgos y Protección Civil	f	04	2
MAT6002	Matemática	f	04	2
PRO570419	Dirección, Control y Evaluación de Sistemas Administrativos	f	04	3
DIE6002	Desarrollo Integral	f	04	2
APAA3041	Auditoria Administrativa	f	04	2
OF6012	Operaciones Financieras	f	04	2
ELEC49043	Electiva IV	t	04	1
AFPS6033	Electiva III	t	04	1
ES3011	Estadistica	f	04	2
AEF9032	Analisis e Interpretación de Estados Financieros	f	04	2
FSC18016	Formación Socio Crítica I	f	04	5
PPL6032	Planificación	f	04	2
PTE3011	Técnicas de Expresión Oral y Escrita	f	04	2
FSC18036	Formación Socio Crítica III	f	04	5
DFC6012	Deberes Formales del Contribuyente	f	04	2
PRO570319	Planificación, Diseño, Desarrollo e Innovación de Sistemas Administrativos	f	04	2
CON12014	Contabilidad I	f	04	2
PRE9033	Presupuesto Público y Privado	f	04	2
ADC6022	Administración de Costos	f	04	2
FA12014	Fundamentos de la Administración	f	04	2
PCG3011	Contabilidad Gubernamental	f	04	2
TPM6012	Teoría y Práctica del Mercadeo	f	04	2
SHA9023	Seminario Habilidades Directivas I	f	04	2
CGA9023	Electiva I	t	04	1
FSC18026	Formación Socio Crítica II	f	04	5
ELEC29023	Electiva II	t	04	1
SHDD9043	Seminario Habilidades Directivas II	f	04	2
PDF3012	Deberes Formales del Contribuyente II	f	04	2
PP13041	Paquetes Informáticos Aplicados a los Procesos Administrativos	f	04	2
EOE6012	Técnicas de Expresión Oral y Escrita	f	04	2
43107	Ingles I	f	44	1
80203	Física	f	48	1
71401	Introduccion A La Informatica	f	47	1
51102	Lenguaje Y Comunicacion	f	45	1
10115	Tecnicas Y Habitos De Estudio	f	41	1
11101	Tec. De Estud. E Investigacion	f	41	1
11102	Lengua Y Comunicacion	f	41	1
11103	Matematicas	f	41	1
11104	Quimica	f	41	1
11105	Agroclimatologia	f	41	1
11106	Botanica	f	41	1
11107	Educacion Fisica Base I	f	41	1
11201	Dinamica Comportamiento Humano	f	41	1
11202	Estadistica	f	41	1
11203	Dibujo	f	41	1
11204	Fund. Anat. Fisiologia Animal	f	41	1
11205	Edafologia	f	41	1
11206	Fisiologia Vegetal	f	41	1
11301	Sociologia Rural	f	41	1
11302	Topografia	f	41	1
11303	Entomologia	f	41	1
11304	Bovinos	f	41	1
11305	Forrajicultura Y Alim. Animal	f	41	1
11306	Olericultura	f	41	1
11307	Cons. Rec. Nat. Renovables	f	41	1
11315	Servicio Comunitario	f	41	1
11401	Prin. Ec. Adm. Empresas Agrop.	f	41	1
11402	Maq. Y Equipos Agropecuarios	f	41	1
11403	Fitopatologia	f	41	1
11404	Avicultura	f	41	1
11405	Cultivos Tropicales	f	41	1
11501	Form. Y Eval. De Proyectos	f	41	1
11502	Riego Y Drenaje	f	41	1
11503	Genetica Y Mejoramiento Agrop.	f	41	1
11504	Porcinotecnia	f	41	1
11505	Fruticultura	f	41	1
11601	Extension Agricola	f	41	1
11602	Construccion Agropecuaria	f	41	1
11603	Prev. Y Cont. De Enfermedades	f	41	1
11604	Raices Y Tuberculos	f	41	1
31101	Matematicas I	f	43	1
31102	Geologia Fisica	f	43	1
31103	Geometria Descriptiva	f	43	1
31104	Introduccion A La Mineria	f	43	1
31105	Lengua Y Comunicacion	f	43	1
31106	Tec. De Est. E Investigacion	f	43	1
31107	Educacion Fisica Base I	f	43	1
31201	Matematicas Ii	f	43	1
31202	Geologia Estructural	f	43	1
31203	Dibujo	f	43	1
31204	Legislacion Minera	f	43	1
31205	Quimica General	f	43	1
31206	Dinamica Comportamiento Humano	f	43	1
31301	Metodos Prosp. Minera	f	43	1
31302	Mineralogia	f	43	1
31303	Topografia I	f	43	1
31304	Mecanica De Rocas	f	43	1
31305	Quimica Analitica	f	43	1
31306	Instalaciones Electricas	f	43	1
31307	Seminario	f	43	1
31315	Servicio Comunitario	f	43	1
80608	Pasantias	f	48	1
31401	Yacimientos Minerales	f	43	1
31402	Principios De Termodinamica	f	43	1
31403	Topografia Ii	f	43	1
31404	Laboreo A Cielo Abierto	f	43	1
31405	Docimasia	f	43	1
31501	Planeamiento De Minas	f	43	1
31502	Evaluacion De Yacimientos	f	43	1
31503	Obras Subterraneas	f	43	1
31504	Computacion	f	43	1
31505	Prep. Y Concent. De Minerales	f	43	1
31601	Org. Adm. De Emp. Mineras	f	43	1
31602	Evaluacion De Proyectos	f	43	1
31603	Higiene Y Seguridad Industrial	f	43	1
51101	Tec. De Inv. Documental	f	45	1
51103	Logica	f	45	1
51104	Matematica I	f	45	1
51105	Educ. Fisica Y Deportes	f	45	1
51106	Ingles Instrumental I	f	45	1
51107	Administracion De Empresas	f	45	1
51108	Informatica Basica	f	45	1
51201	Educacion Ambiental	f	45	1
51202	Actividades Complementarias	f	45	1
51203	Organizacion Y Metodos	f	45	1
51204	Matematicas Ii	f	45	1
51205	Ingles Instrumental Ii	f	45	1
51206	Sistemas De Informacion	f	45	1
51207	Lenguaje De Programacion I	f	45	1
51301	Estadistica General	f	45	1
51302	Educacion Ciudadana	f	45	1
51303	Calculo Matricial	f	45	1
51304	Anal. Y Dis. De Sistemas I	f	45	1
51305	Arquitectura Del Computador	f	45	1
51306	Lenguaje De Programacion Ii	f	45	1
51307	Base De Datos	f	45	1
51315	Servicio Comunitario	f	45	1
51401	Estadistica Probabilistica	f	45	1
51402	Anal. Y Dis. De Sistemas Ii	f	45	1
51403	Sistemas Operativos	f	45	1
51404	Teleprocesos	f	45	1
51405	Lenguaje De Programacion Iii	f	45	1
51406	Modelo De Datos	f	45	1
51501	Inform. Soc. Y Organizacion	f	45	1
51502	Planificacion De Proyectos	f	45	1
51503	Redes Locales	f	45	1
51504	Lenguaje De Programacion Iv	f	45	1
51601	Trabajo Especial De Grado	f	45	1
51602	Pasantias Profesionales	f	45	1
81601	Pasantias	f	48	1
81602	Proyecto De Grado	f	48	1
10102	Matematicas	f	41	1
21514	Dibujo Cadd	f	42	1
31411	Mineria De Campo I	f	43	1
10103	Lenguaje Y Comunicacion	f	41	1
10104	Botanica General	f	41	1
10105	Principios De Climatologia	f	41	1
10106	Quimica General	f	41	1
10107	Dibujo Tecnico	f	41	1
10108	Orientacion I	f	41	1
10109	Botanica	f	41	1
10110	Lenguaje Y Comunicacion	f	41	1
10111	Princ.de Econ Y Adm.de Empresa	f	41	1
10112	Dibujo Tecnico	f	41	1
10113	Agroclimatologia	f	41	1
10114	Educacion Fisica I	f	41	1
10201	Dinamica Del Comp. Humano	f	41	1
10202	Estadistica	f	41	1
10203	Fitopatologia	f	41	1
10204	Fisiologia Vegetal	f	41	1
10205	Anatomia Y Fisiologia Animal	f	41	1
10206	Edafologia	f	41	1
10207	Topografia	f	41	1
10208	Orientacion Ii	f	41	1
10301	Metodologia De La Investig.	f	41	1
10302	Sociologia Rural	f	41	1
10303	Entomologia	f	41	1
10304	Cultivos I	f	41	1
10305	Zootecnia I	f	41	1
10306	Pastos Y Forrajes	f	41	1
10307	Construcciones Rurales	f	41	1
10308	Sociologia Rural	f	41	1
10401	Mejoramiento Biotico	f	41	1
10402	Credito Y Comerc. Agropecuaria	f	41	1
10403	Ingles Tecnico	f	41	1
10404	Maquinaria Agricola	f	41	1
10411	Control De Malezas	f	41	1
10412	Cultivos Ii	f	41	1
10413	Zootecnia Ii	f	41	1
10414	Sanidad Animal	f	41	1
10415	Control De Malezas	f	41	1
10416	Bovinos	f	41	1
10417	Control De Malezas	f	41	1
10501	Planificacion Agricola	f	41	1
10502	Legislacion Agraria	f	41	1
10503	Consev. Recursos Naturales	f	41	1
10504	Industrializacion Agricola	f	41	1
10505	Riego Y Drenaje	f	41	1
10511	Cultivos Iii	f	41	1
10512	Zootecnia Iii	f	41	1
10601	Adminst. De Empresas Agrop.	f	41	1
10602	Extension Agricola	f	41	1
10603	Pasantias	f	41	1
10604	Proyecto Productor Indepen.	f	41	1
10611	Cultivos Iv	f	41	1
10612	Zootecnia Iv	f	41	1
11108	Educacion Fisica I	f	41	1
11207	Educacion Fisica Base Ii	f	41	1
11514	Redaccion De Informes	f	41	1
20101	Dibujo I	f	42	1
20102	Geometria Descriptiva	f	42	1
20103	Fisica	f	42	1
20104	Materiales I	f	42	1
20105	Matematicas	f	42	1
20106	Tecnicas Habitos De Estudio	f	42	1
20107	Lenguaje Y Comunicacion	f	42	1
20108	Cultura I	f	42	1
20109	Geologia	f	42	1
20201	Dibujo Ii	f	42	1
20202	Mecanica De Suelos	f	42	1
20203	Topografia I	f	42	1
20204	Materiales Ii	f	42	1
20205	Geometria Analitica	f	42	1
20206	Dinamica Comportamiento Humano	f	42	1
20207	Ingles Tecnico	f	42	1
20208	Matematicas Ii	f	42	1
20301	Dibujo Iii	f	42	1
20302	Instalaciones Sanitarias	f	42	1
20303	Topografia Ii	f	42	1
20304	Construccion I	f	42	1
20305	Mecanica Racional	f	42	1
20306	Metodologia De Investigacion	f	42	1
20307	Programacion Grafica	f	42	1
20308	Resistencia De Materiales	f	42	1
20309	Seminario	f	42	1
20310	Mecanica De Fluidos	f	42	1
20401	Instalaciones Electricas	f	42	1
20402	Construccion Ii	f	42	1
20403	Construcciones Viales I	f	42	1
20404	Estructuras I	f	42	1
20405	Redaccion De Informes	f	42	1
20406	Computacion	f	42	1
20407	Vias	f	42	1
20408	Estructura	f	42	1
20501	Marqueteria	f	42	1
20502	Maquinarias Y Equipos	f	42	1
20503	Construccion Iii	f	42	1
20504	Construcciones Viales Ii	f	42	1
20505	Estructuras Ii	f	42	1
20506	Ejercicio Profesional	f	42	1
20507	Administracion De Empresas	f	42	1
20509	Concreto	f	42	1
20510	Administracion De Obras	f	42	1
20601	Taller Mantenimiento Obras V.	f	42	1
20602	Prefabricacion	f	42	1
20603	Taller Mantenimiento Edificios	f	42	1
20604	Pasantias	f	42	1
21107	Cultura I	f	42	1
21207	Cultura Ii	f	42	1
21208	Educacion Fisica Base Ii	f	42	1
21412	Higiene Y Saneamiento	f	42	1
21511	Maquinaria Y Equipo	f	42	1
30101	Matematicas I	f	43	1
30102	Geologia Fisica	f	43	1
30103	Introduccion A La Mineria	f	43	1
30104	Geometria Descriptiva	f	43	1
30105	Dibujo	f	43	1
30106	Tecnicas Y Habitos De Estudio	f	43	1
30107	Orientacion I	f	43	1
30201	Matematicas Ii	f	43	1
30202	Geologia Estructural	f	43	1
30203	Topografia I	f	43	1
30204	Lenguaje Y Comunicacion	f	43	1
30205	Quimica General	f	43	1
30206	Dinamica Comportamiento Humano	f	43	1
30207	Orientacion Ii	f	43	1
30301	Metodos Prosp. Minera	f	43	1
30302	Electrotecnia	f	43	1
30303	Mineralogia	f	43	1
30304	Topografia Ii	f	43	1
30305	Ingles Tecnico	f	43	1
30306	Quimica Analitica	f	43	1
30307	Metodologia De La Investigac.	f	43	1
30401	Metodos De Eval. De Yacimiento	f	43	1
30402	Motores Y Maquinarias Mineras	f	43	1
30403	Mecanica De Materiales	f	43	1
30404	Yacimientos Minerales	f	43	1
30405	Legislacion Minera Y Laboral	f	43	1
30406	Hiegiene Y Segurid. Industrial	f	43	1
30407	Docimasia	f	43	1
30501	Introd A La Econom Y Eval Proy	f	43	1
30502	Metod. De Perforacion Y Excav.	f	43	1
30503	Mecanica De Rocas	f	43	1
30504	Laboreo A Cielo Abierto	f	43	1
30505	Prep. Y Concent. De Menas	f	43	1
30511	Electiva	f	43	1
30512	Principios De Termodinamica	f	43	1
30601	Organ. Y Adm. De Emp. Mineras	f	43	1
30602	Obras Subterraneas	f	43	1
30603	Pasantias	f	43	1
30611	Hidrogeologia	f	43	1
31108	Educacion Fisica I	f	43	1
31207	Educacion Fisica Base Ii	f	43	1
31208	Educacion Fisica Ii	f	43	1
31511	Mineria De Campo Ii	f	43	1
41101	Matematicas	f	44	1
41102	Lengua Y Comunicacion	f	44	1
41103	Contabilidad	f	44	1
41104	Teoria Y Tecnicas De Turismo	f	44	1
41105	Ingles I	f	44	1
41106	Tec. De Est. E Investigacion	f	44	1
41107	Cultura I	f	44	1
41108	Educacion Fisica Base I	f	44	1
41201	Estadistica General	f	44	1
41202	Administracion	f	44	1
41203	Economia	f	44	1
41204	Manif. Cult. Y Turisticas	f	44	1
41205	Ingles Ii	f	44	1
41206	Problemas Soc. Del Pais	f	44	1
41207	Geog. Turistica I	f	44	1
41208	Cultura Ii	f	44	1
41209	Educacion Fisica Base Ii	f	44	1
41302	Adm. De Emp. Turistica	f	44	1
41303	Computacion	f	44	1
41304	Legislacion Turistica	f	44	1
41305	Ingles Iii	f	44	1
41306	Psicologia General	f	44	1
41307	Geografia Turistica Ii	f	44	1
41401	Presupuesto	f	44	1
41402	Tec. De Oper. E.turisticas I	f	44	1
41403	Administracion De Personal	f	44	1
41404	Mercado Turistico	f	44	1
41405	Ingles Iv	f	44	1
41406	Transporte	f	44	1
41501	Contabilidad Aplicada	f	44	1
41502	Tec. De Opr. E.turisticas Ii	f	44	1
41503	Planificacion Turistica	f	44	1
41504	Promocion Turistica	f	44	1
41505	Analis. De Prob. Y Toma De Dec	f	44	1
41601	Anl. De Edos. Financieros	f	44	1
41602	Form. Y Eval. De Proy. Turist.	f	44	1
41603	Pasantias	f	44	1
42101	Matematicas	f	44	1
42102	Lengua Y Comunicacion	f	44	1
42103	Contabilidad	f	44	1
42104	Teoria Y Tec. De Turismo	f	44	1
42105	Ingles I	f	44	1
42106	Tec. De Est. E Investigacion	f	44	1
42107	Cultura I	f	44	1
42108	Educacion Fisica Base I	f	44	1
42201	Estadistica General	f	44	1
42202	Administracion	f	44	1
42203	Economia	f	44	1
42204	Manisf. Culturales Y Turist.	f	44	1
42205	Ingles Ii	f	44	1
42206	Prob. Socio-economicos Pais	f	44	1
42207	Geografia Turist. I	f	44	1
42208	Cultura Ii	f	44	1
42209	Educacion Fisica Ii	f	44	1
42301	Matematicas Financiera	f	44	1
42302	Adm. Empresas Hoteleras	f	44	1
42303	Computacion	f	44	1
42304	Legislacion Turistica	f	44	1
42305	Ingles Iii	f	44	1
42306	Psicologia General	f	44	1
42307	Geografia Turistica Ii	f	44	1
42401	Presupuesto	f	44	1
42402	Tec. De Oper. Hotelera I	f	44	1
42403	Adm. De Personal	f	44	1
42404	Mercado Turistico	f	44	1
42405	Ingles Iv	f	44	1
42406	Prog. Y Coord. De Eventos	f	44	1
42501	Contabilidad Hotelera	f	44	1
42502	Tec. De Oper. Hotelera Ii	f	44	1
42503	Planificacion Turistica	f	44	1
42504	Promocion Turistica	f	44	1
42505	Anal. Del Prob. Y Toma De Dec.	f	44	1
42601	Anal. De Edos. Financieros	f	44	1
42602	Form. Y Eval. De Proy. Turist.	f	44	1
42603	Pasantias	f	44	1
43313	Geog. Tur. Area Del Caribe	f	44	1
43314	Aleman Ii	f	44	1
43511	Fundamentos De Ecoturismo	f	44	1
51412	Contabilidad Computarizada	f	45	1
51507	Tecnologia Gerenciales	f	45	1
61308	Electiva	f	46	1
61312	Ecoalojamiento	f	46	1
61411	Aleman Ii	f	46	1
61412	Parques Nacionales	f	46	1
61511	Aleman Iii	f	46	1
61512	Tec. De Preparacion De Alim.	f	46	1
71411	Economia Administrativa	f	47	1
11411	Cereales Y Leguminosas	f	41	1
11412	Ovinos-caprinos-conejos	f	41	1
11413	Ingles Tecnico	f	41	1
11414	Control De Malezas	f	41	1
11511	Industria Agropecuaria	f	41	1
11512	Apicultura-truchicultura	f	41	1
11513	Legislacion Agropecuaria	f	41	1
11515	Computacion I	f	41	1
21101	Matematicas I	f	42	1
21102	Fisica	f	42	1
21103	Geologia	f	42	1
21104	Geometria Descriptiva	f	42	1
21105	Lengua Y Comunicacion	f	42	1
21106	Tecnicas De Estudio E Inv.	f	42	1
21108	Educacion Fisica Base I	f	42	1
21201	Matematicas Ii	f	42	1
21202	Mecanica Racional	f	42	1
21203	Materiales	f	42	1
21204	Topografia I	f	42	1
21205	Dibujo I	f	42	1
21206	Dinamica Del Comp. Humano	f	42	1
21301	Mecanica De Fluidos	f	42	1
21302	Resistencia De Materiales	f	42	1
21303	Mecanica De Suelos	f	42	1
21304	Topografia Ii	f	42	1
21306	Computacion	f	42	1
21307	Seminario	f	42	1
21401	Instalaciones Sanitarias	f	42	1
21402	Estructura	f	42	1
21403	Construccion I	f	42	1
21404	Vias	f	42	1
21405	Modelos Maqueteria	f	42	1
21406	Dibujo Cadd	f	42	1
21411	Instalaciones Electricas	f	42	1
21413	Ingles Tecnico	f	42	1
21501	Infraestr. Obras Hidraulicas	f	42	1
21502	Concreto	f	42	1
21503	Construccion Ii	f	42	1
21504	Construcciones Viales	f	42	1
21505	Administracion De Obras	f	42	1
21512	Pavimentos(laboratorio)	f	42	1
21513	Redacion De Informes Tecnicos	f	42	1
21601	Taller De Mant Obra Hidraulica	f	42	1
21602	Taller De Mant. Edificio	f	42	1
21603	Taller De Mant. Obras Viales	f	42	1
31412	Mecanica De Suelos	f	43	1
31413	Cartografia Minera	f	43	1
31512	Hidrogeologia	f	43	1
31513	Ingles Tecnico	f	43	1
41301	Matematica Financiera	f	44	1
43101	Lenguaje Instruc. Y Comunic.	f	44	1
43102	Educacion Ambiental	f	44	1
43103	Matematicas General	f	44	1
43104	Teoria Y Tecnica Del Turismo	f	44	1
43105	Patrimonio Historico	f	44	1
43106	Educacion Fisica Y Deporte	f	44	1
43108	Metodologia De La Investig.	f	44	1
43201	Prob Del Desarr Social Y Econ.	f	44	1
43202	Administracion	f	44	1
43203	Contabilidad	f	44	1
43204	Introduccion A La Informatica	f	44	1
43205	Geografia Turistica	f	44	1
43206	Fundamentos De Economia	f	44	1
43207	Ingles Ii	f	44	1
43211	Taller De Fonetica (elect.)	f	44	1
43212	Tecnicas Y Habitos De Estudio	f	44	1
43213	Recursos Turisticos Regionales	f	44	1
43301	Tecnicas De Animac. Y Recreac.	f	44	1
43303	Contabilidad Aplicada	f	44	1
43304	Estadistica	f	44	1
43305	Manif. Culturales Y Turisticas	f	44	1
43306	Legislacion Turistica	f	44	1
43307	Ingles Iii	f	44	1
43311	Analisis Estados Financieros	f	44	1
43312	Organizacion Y Metodo	f	44	1
43315	Turismo Naturaleza Bajo Impac.	f	44	1
43316	Electiva (tur. Áreas Proteg.)	f	44	1
43401	Trafico Aereo I	f	44	1
43402	Tecn. De Oper. Turisticas I	f	44	1
43403	Presupuesto Turistico	f	44	1
43404	Mercadeo Turistico	f	44	1
43405	Planificacion Turistica	f	44	1
43406	Transporte Acuat. Y Terrestre	f	44	1
43407	Ingles Iv	f	44	1
43408	Taller De Superv. De Personal	f	44	1
43411	Taller Acond. Turis Centros P.	f	44	1
43412	Campamento Y Excursiones (e.)	f	44	1
43413	Ingles Conversacional (elect.)	f	44	1
43414	Aleman Iii	f	44	1
43415	Ecoturismo (electiva)	f	44	1
43501	Trafico Aereo Ii	f	44	1
43502	Tecnicas De Oper Turisticas Ii	f	44	1
43503	Relaciones Publicas	f	44	1
43504	Form Y Eval De Proy Turisticos	f	44	1
43505	Analisis De Prob Y Toma De D.	f	44	1
43506	Prog Y Coord De Event Y Prot.	f	44	1
43507	Autodesarrollo Y Etica Prof.	f	44	1
43512	Taller De Com. Y Auto Estima	f	44	1
43513	Fundamento De Ecoturismo Ii	f	44	1
43514	Gestion Hospitalidad (e)	f	44	1
43601	Pasantias	f	44	1
51411	Auditoria De Sistemas	f	45	1
51413	Gnu - Linux	f	45	1
51505	Base De Datos Distribuidas	f	45	1
51506	Tecnologia Internet	f	45	1
51508	Edumatica	f	45	1
51509	Aplicaciones Multimedia	f	45	1
51510	Diseño Instruccional Tic	f	45	1
51511	Comunicacion Satelital	f	45	1
51512	Programacion Aplicada	f	45	1
51513	Java	f	45	1
51514	Software Estadistico	f	45	1
61101	Matematicas General	f	46	1
61102	Lenguaje Y Comunicacion	f	46	1
61103	Organizacion Y Alojamiento	f	46	1
61104	Teoria Y Tecnicas Del Turismo	f	46	1
61105	Educacion Fisica Y Deporte	f	46	1
61106	Metodologia De La Invest.	f	46	1
61107	Ingles I	f	46	1
61201	Prob.del Desarrollo Ec. Y Soc.	f	46	1
61202	Fundamentos De Economia	f	46	1
61203	Habitacion I	f	46	1
61204	Administracion	f	46	1
61205	Contabilidad	f	46	1
61206	Gestion De Alimentos Y Bebidas	f	46	1
61207	Ingles Ii	f	46	1
61208	Taller Acond. Turis. Y Pobla.	f	46	1
61209	Taller De Fonetica (electv.)	f	46	1
61301	Estadistica	f	46	1
61302	Legislacion Turistica	f	46	1
61303	Habitacion Ii	f	46	1
61304	Introd. A La Informatica	f	46	1
61305	Contabilidad Hotelera	f	46	1
61306	Control Costos Alimentos Y B.	f	46	1
61307	Ingles Iii	f	46	1
61311	Campamento Y Excursion (e)	f	46	1
61313	Gest Calidad En Alojam. (e)	f	46	1
61401	Mercadeo Hotelero	f	46	1
61402	Planificacion Hotelera	f	46	1
61403	Educacion Ambiental	f	46	1
61404	Equip. Y Mant. De Planta Fis.	f	46	1
61405	Presupuesto Hotelero	f	46	1
61406	Taller De Superv. De Personal	f	46	1
61407	Ingles Iv	f	46	1
61408	Tecnicas De Anim. Y Recreacion	f	46	1
61413	Control De Calidad Y Sist.de C	f	46	1
61415	Ecoturismo (electiva)	f	46	1
61501	Relaciones Publicas	f	46	1
61502	Analis. De Prob. Y Toma Dec.	f	46	1
61503	Autodesarrollo Y Etica Prof.	f	46	1
61504	Gerencia Hotelera	f	46	1
61505	Form. De Proyectos Hoteleros	f	46	1
61506	Higiene Y Seguridad Indust.	f	46	1
61507	Prog Y Coord De Event Y Prot.	f	46	1
61508	Ingles Conversacional (elect)	f	46	1
61601	Pasantias	f	46	1
71101	Introduccion A La Administ.	f	47	1
71102	Contabilidad I	f	47	1
71103	Matematica Instrumental	f	47	1
71104	Problematica Socio Economica	f	47	1
71105	Fundamento De Derecho	f	47	1
71106	Lenguaje Y Comunicacion	f	47	1
71201	Introduccion A La Economia	f	47	1
71202	Contabilidad Ii	f	47	1
71203	Matematica Financiera	f	47	1
71204	Estadistica General	f	47	1
71205	Legislacion Laboral	f	47	1
71206	Redaccion Informes Tecnicos	f	47	1
71301	Tecnicas De Supervision	f	47	1
71302	Contabilidad Iii	f	47	1
71303	Finanzas	f	47	1
71304	Estadistica Aplicada	f	47	1
71305	Legislacion Fiscal	f	47	1
71306	Legislacion Mercantil	f	47	1
71307	Educ. Fisica Y Deportes	f	47	1
71402	Contabilidad Iv	f	47	1
71403	Contabilidad De Costos I	f	47	1
71404	Auditoria I	f	47	1
71405	Contabilidad Fiscal	f	47	1
71406	Impuesto Sobre La Renta	f	47	1
71412	Toma De Decisiones (electiva)	f	47	1
71413	Presupuesto Publico (electiva)	f	47	1
71414	Contabilidad Publica (elect.)	f	47	1
71416	Cont Empresas Turis (electiva)	f	47	1
71501	Contabilidad Mecanizada	f	47	1
71502	Contabilidad De Costos Ii	f	47	1
71503	Presupuesto	f	47	1
71504	Auditoria Ii	f	47	1
71505	Sistemas Procedim. Contables	f	47	1
71506	Metodologia De La Investig.	f	47	1
71512	Auto Desarrollo Y Etica Profs.	f	47	1
71513	Ingles Tecnico	f	47	1
71514	Contab. Ambiental (electiva)	f	47	1
71601	Analisis Estados Financieros	f	47	1
71602	Taller De Contabilidad	f	47	1
81101	Educacion Fisica Y Deporte	f	48	1
81102	Fisica	f	48	1
81103	Quimica	f	48	1
81104	Lenguaje Y Comunicacion	f	48	1
81105	Logica Matematica	f	48	1
81106	Ingles	f	48	1
81107	Introd. Manejo Emergencias	f	48	1
81201	Computacion	f	48	1
81202	Sistemas De Telecomunicaciones	f	48	1
81203	Ecologia	f	48	1
81204	Geografia Aplicada	f	48	1
81205	Estadistica Aplicada	f	48	1
81206	Auxilio Medico De Emergencia I	f	48	1
81207	Tecnicas De Investigacion I	f	48	1
81301	Tecnicas De Busqueda Y Rescate	f	48	1
81302	Materiales Peligrosos	f	48	1
81303	Emergencias Ambientales	f	48	1
81304	Elementos Constructivos	f	48	1
81305	Prevencion De Perdidas	f	48	1
81306	Auxilio Medico Emergencias Ii	f	48	1
81307	Tecnicas De Investigacion Ii	f	48	1
81401	Tecnicas Busqueda Y Rescate Ii	f	48	1
81402	Lineas Vitales	f	48	1
81403	Subsistencia Extraurbana	f	48	1
81404	Metodos Proteccion Civil I	f	48	1
81405	Investigacion De Siniestros	f	48	1
81406	Planificacion Para Emergencias	f	48	1
81408	Incendios I	f	48	1
81409	Tecnicas Produccion Indust.	f	48	1
81410	Seguridad E Higiene Indust.	f	48	1
81411	Metodos De Capacitacion	f	48	1
81412	Sociologia De Los Desastres	f	48	1
81413	Domotica	f	48	1
81501	Manejo De Alberges	f	48	1
81502	Manejo De Desastres	f	48	1
81503	Legislacion Aplicada	f	48	1
81504	Crisis Y Comportamiento Humano	f	48	1
81505	Gerencia Sistema Emergencia	f	48	1
81506	Riesgos Naturales Ii	f	48	1
81507	Incendios Ii	f	48	1
81508	Seguridad Escolar	f	48	1
81509	Emergencias Industriales	f	48	1
81510	Tec. Control Calidad Indust.	f	48	1
81511	Metodos Proteccion Civil Ii	f	48	1
81512	Form.y Evaluacion De Proyectos	f	48	1
11605	Pasantias	f	41	1
31604	Pasantias	f	43	1
71603	Pasantias	f	47	1
71604	Trabajo Especial De Grado	f	47	1
21604	Pasantias	f	42	1
21315	Servicio Comunitario	f	42	1
71315	Servicio Comunitario	f	47	1
61315	Servicio Comunitario	f	46	1
81315	Servicio Comunitario	f	48	1
43318	Servicio Comunitario	f	44	1
21305	Dibujo Ii	f	42	1
43302	Admon. De Empresas Turisticas	f	44	1
71415	(electiva) Cont Empresas Agric	f	47	1
71511	Seminario Niif (electiva)	f	47	1
80101	Gestión De Emergencias Y Desastres	f	48	1
80102	Formulación Y Evaluación De Proyectos Comunitarios	f	48	1
80103	Técnicas De Investigación Documental	f	48	1
80104	Legislación Aplicada A La Gestión De Riesgos	f	48	1
80105	Sistemas De Comunicaciones	f	48	1
80106	Métodos De Proteccion Civil	f	48	1
80107	Proyecto I	f	48	1
80113	Lenguaje Y Comunicación	f	48	1
80114	Matemática General	f	48	1
80201	Identificación Y Manejo De Emergencias Ambientales	f	48	1
80202	Inglés Instrumental	f	48	1
80204	Riesgos Naturales	f	48	1
80205	Ecología	f	48	1
80206	Geografía Aplicada Al Manejo De Emergencias Y Desastres	f	48	1
80207	Proyecto Ii	f	48	1
80300	Servicio Comunitario	f	48	1
80301	Técnicas De Intervencion Y Rescate (sari Y Sarii)	f	48	1
80302	Química	f	48	1
80303	Materiales Peligrosos	f	48	1
80304	Auxilio Médico Pre-hospitalario	f	48	1
80305	Subsistencia Extra-urbana	f	48	1
80306	Proyecto Iii	f	48	1
80310	Planificación Para Emergencias Y Desastres	f	48	1
80313	Educación Física Y Deporte	f	48	1
80401	Emergencias Industriales Y De Origen Tecnológico	f	48	1
80402	Estadística Aplicada	f	48	1
80403	Técnicas De Prevención Y Control De Incendios	f	48	1
80404	Seguridad Y Salud Ocupacional	f	48	1
80405	Investigación De Siniestros	f	48	1
80406	Proyecto Iv	f	48	1
80407	Emergencias Industriales Y De Origen Tecnológico	f	48	1
80411	Sociología De Desastre	f	48	1
80412	Técnicas De Capacitación	f	48	1
80501	Manejo De Desastres	f	48	1
80502	Manejo De Alberges	f	48	1
80503	Lineas Vitales	f	48	1
80507	Proyecto V	f	48	1
80510	Técnicas Y Elementos De Construcción	f	48	1
80513	Crisis Y Comportamiento Humano	f	48	1
80514	Seguridad Escolar	f	48	1
80602	Gerencia De Sistemas De Emergencia	f	48	1
80607	Trabajo Especial De Grado	f	48	1
100101	Comunicación Y Lenguaje	f	50	1
100102	Psicología Básica	f	50	1
100103	Morfología	f	50	1
100104	Sociantropología	f	50	1
100105	Enfermería Básica	f	50	1
100106	Inglés	f	50	1
100107	Nutrición Y Dietética	f	50	1
100201	Bioquímica	f	50	1
100202	Salud Y Desarrollo Social Y Económico	f	50	1
100203	Bioestadística Y Epidemiología	f	50	1
100204	Anatomía Humana	f	50	1
100205	Inglés Instrumental	f	50	1
100206	Enfermería Materno Infantil I	f	50	1
100301	Farmacología	f	50	1
100302	Microbiología Y Parasitología	f	50	1
100303	Fisiología	f	50	1
100304	Enfermería Materno Infantil Ii	f	50	1
100402	Metodología De La Investigación	f	50	1
100403	Enf. Salud Mental Y Psiquiatrica	f	50	1
100501	Admón. De La Atención De Enf.	f	50	1
100504	Proyecto De Investigación Y Desarrollo Técnico	f	50	1
100602	Presentación Proyecto Grado	f	50	1
51515	Ingenieria Del Software	f	45	1
12101	Investigación Documental	f	41	1
12102	Protección Vegetal I	f	41	1
12103	Botánica	f	41	1
40405	Idiomas Iii	f	44	1
12104	Química	f	41	1
12105	Agroclimatología	f	41	1
12106	Formulación Y Evaluación De Proyectos	f	41	1
12107	Manejo De Suelos Y Aguas I	f	41	1
12108	Matemática General	f	41	1
12109	Estadística Descriptiva	f	41	1
12110	Proyecto I	f	41	1
ELEC19023	Electiva I	f	04	2
91102	Física de la Radiología	f	49	2
12111	Maquinaria Y Equipos Agropecuarios I	f	41	1
12112	Procesos Agroindustriales I	f	41	1
12201	Legislación Agraria	f	41	1
12202	Sociología Rural	f	41	1
12203	Extensión Agropecuaria	f	41	1
12204	Mejoramiento Agropecuario	f	41	1
12205	Instalaciones Pecuarias I	f	41	1
12206	Forrajicultura Y Alimentación Animal I	f	41	1
12207	Proyecto Ii	f	41	1
12208	Maquinarias Y Equipos Agropecuarios Ii	f	41	1
12209	Prevención Y Control De Enfermedades I	f	41	1
12210	Agroindustria Animal I	f	41	1
12211	Fundamentos De Anatomía Y Fisiología Animal I	f	41	1
12212	Mejoramiento Animal	f	41	1
12301	Dibujo	f	41	1
12302	Protección Vegetal Ii	f	41	1
12303	Comercialización Y Mercadeo I	f	41	1
12304	Ingles Técnico	f	41	1
12305	Manejo De Suelos Y Aguas Ii	f	41	1
12306	Fisiología Vegetal	f	41	1
12307	Proyecto Iii	f	41	1
12308	Procesos Agroindustriales Ii	f	41	1
12309	Maquinaria Y Equipos Agropecuarios Iii	f	41	1
12401	Educación Física	f	41	1
12402	Instalaciones Pecuarias Ii	f	41	1
12403	Forrajicultura Y Alimentacion Animal Ii	f	41	1
12404	Topografía	f	41	1
12405	Fundamentos De Anat. Y Fisiolog. Animal	f	41	1
12406	Prevención Y Control De Enfermedades En Animales	f	41	1
12407	Proyecto Sobre Especies Menores	f	41	1
12408	Comercialización Y Mercadeo Ii	f	41	1
12501	Dinámica Del Comportamiento Humano	f	41	1
12502	Raíces Y Tubérculos	f	41	1
12503	Lenguaje Y Comunicacion	f	41	1
12504	Manejo Postcosecha	f	41	1
12505	Cereales Y Leguminosas	f	41	1
12506	Horticultura	f	41	1
12507	Proyecto V	f	41	1
12508	Procesos Agroindustriales Iii	f	41	1
12509	Comercialización Y Mercadeo Iii	f	41	1
12510	Protección Vegetal Iii	f	41	1
12511	Cultivos Hidropónicos	f	41	1
12601	Pasantías	f	41	1
100601	Practica Profesional Integral	f	50	1
100401	Fisiopatología	f	50	1
100404	Enf. Médico Quirúrgico I	f	50	1
100503	Enfermería Comunitaria	f	50	1
100502	Enf. Médico Quirúrgico Ii	f	50	1
100207	Proyecto Ii	f	50	1
100108	Proyecto I	f	50	1
100306	Proyecto Iii	f	50	1
100405	Proyecto Iv	f	50	1
81407	Riesgos Naturales I	f	48	1
12512	Proyecto Sobre Oler. Y Flor.	f	41	1
100305	Educación Para La Salud	f	50	1
40115	Educacion Ambiental	f	44	1
40211	Patrimonio Historico	f	44	1
40517	Ingles Iv	f	44	1
40212	Geografia Turistica	f	44	1
40101	Teoría Y Técnica Del Turismo	f	44	1
40102	Liderazgo, Protagonismo Y Participación	f	44	1
40103	Desarrollo Endógeno	f	44	1
40104	Legislación Turística	f	44	1
40105	Fundamentos De Economía Turística	f	44	1
40106	Proyecto I	f	44	1
40112	Educación Física	f	44	1
40113	Lenguaje Y Comunicación	f	44	1
40114	Matemática General	f	44	1
40201	Metodología De La Investigación	f	44	1
40202	Formulación Y Evaluación De Proyectos Turísticos	f	44	1
40203	Planificación Y Pensamiento Estratégico En Turísmo	f	44	1
40204	Estadística	f	44	1
40205	Idiomas I	f	44	1
40206	Proyectos Ii	f	44	1
40210	Informática Básica	f	44	1
40301	Administración	f	44	1
40302	Contabilidad	f	44	1
40303	Técnicas De Operación De Empresas Turísticas I (alojamiento)	f	44	1
40304	Manifestaciones Culturales (perfiles Psicodemográficos)	f	44	1
40305	Idiomas Ii	f	44	1
40306	Proyectos Iii	f	44	1
40307	Análisis Situacional Y Toma De Decisiones	f	44	1
40323	Servicio Comunitario	f	44	1
40401	Organización De Eventos Y Protocolo	f	44	1
40402	Técnicas De Animación Y Recreación	f	44	1
40403	Transporte Turístico	f	44	1
40404	Técnicas De Operación De Empresas Turísticas Ii	f	44	1
40406	Proyectos Iv	f	44	1
40407	Tráfico Aéreo I	f	44	1
40408	Relaciones Públicas	f	44	1
40409	Contabilidad Aplicada	f	44	1
40413	Mercadeo Turístico	f	44	1
40414	Taller De Fonética	f	44	1
40501	Ecología Y Turismo	f	44	1
40502	Patrimonio Cultural Y Turístico	f	44	1
40503	Idiomas Iv	f	44	1
40504	Historia Regional Y Nacional	f	44	1
40505	Geografía Regional Y Nacional	f	44	1
40506	Aproximación A La Tipología Y Modalidades Del Turismo Cont	f	44	1
40507	Proyectos V	f	44	1
40509	Tráfico Aéreo Ii	f	44	1
40510	Autodesarrollo Y Ética Profesional	f	44	1
40511	Presupuesto Turístico	f	44	1
40516	Taller De Supervisión De Personal	f	44	1
40607	Pasantias	f	44	1
40512	Análisis De Problemas Y Toma De Decisiones	f	44	1
AGOBTAA342	Operaciones Básicas En La Transf Agroecológica De Alimentos	f	01	2
MA6002	Matematica	f	04	2
ADP6032	Administración De La Producción	f	04	2
AIEF6042	Análisis E Interpretación De Estados Financieros	f	04	2
DIE002	Desarrollo Integral	f	04	2
FEP3031	Formulación Y Evaluación De Proyecto	f	04	2
AF6042	Administración Financiera	f	04	2
PIEL1	Electiva I	t	03	2
91602	Pasantías	f	49	2
CON9023	Contabilidad Ii	f	04	2
ELEC39043	Electiva Iii	f	04	2
PSAPD15035	Participación Social En La Adm, Producción Y Distribucción	f	04	5
PRO700324	Diseño Planificación Desarrollo E Innovación De Sistema Adm	f	04	3
PRO700424	Dirección, Control Y Evaluación De Sistemas Adm	f	04	3
PISC2	Servicio Comunitario	f	03	5
PIIS2	Ingenieria Del Software I	f	03	2
AEPS6033	Electiva Iii	f	04	2
MATEti-963	Matematicas	f	06	2
DEINti-301	Desarrollo Integral	f	06	2
IDIOti-602	Idiomas	f	06	2
TECOti-361	Tecnologias De La Comunicacion	f	06	2
PNNCti-963	Proyecto Nacional Y Nueva Ciudadania	f	06	5
IUTSti-482	Intr. A La Univ. Y El Turismo En El Nuevo Modelo Social	f	06	2
PRO630321	Diseño Y Evaluación De Los Sistemas De Información Contables	f	07	3
GPS15035	Gestión Y Participación Social En El Nuevo Modelo De Desarro	f	07	5
FPNTt1-61220	Fomento Del Patrimonio Nacional Y Turistico	f	06	3
PANTt1-1445	Patrimonio Nacional Y Turístico	f	06	5
IDIOt1-2167	Idiomas I	f	06	2
TETUt1-602	Teoría Del Turismo	f	06	2
GETUt1-602	Geografía Turística	f	06	2
DTCSt3-61220	Desarrollo Del Turismo Comunitario Y Social	f	06	3
DSRSt3-1445	Des. Sustentable Y Sost. De Los Recursos Y Serv. Tur.	f	06	5
IDIOt3-28810	Idiomas Iii	f	06	2
GDTUt3-2167	Gestión De Destinos Turísticos	f	06	2
MOTUt3-963	Modalidades Turísticas	f	06	2
INMEt3-963	Investigación De Mercados Emisores	f	06	2
PLMTt3-963	Plan De Mercadeo Turístico	f	06	2
PLTUt1-722	Planificación Turística	f	06	2
DIPTt1-601	Diseño De Producto Turístico	f	06	2
ACACt3	Actividades Acreditables Iii	f	06	1
ACACt1	Actividades Acreditables I	f	06	1
IUTStt-36	Introduccion A La Universidad Y El Turismo	f	06	2
PNNCtt-48	Proyecto Nacional Y Nueva Ciudadania	f	06	5
TECOtt-48	Tecnologias De La Comunicacion	f	06	2
IDIOtt-48	Idiomas	f	06	2
OUPSt2-61220	Oper. Unidades Prod. Social Y Facilitacion De Serv. Turist.	f	06	3
IDIOt2-2167	Idiomas Ii	f	06	2
ADETt2-722	Administracion De Empresas Turisticas	f	06	2
DCCTt2-1445	Desarrollo Y Calidad De Vida De Las Comunidades Turisticas	f	06	5
PROTt2-722	Procesos Y Operaciones Turisticas	f	06	2
GEDAt2-1084	Gestion De Alojamiento	f	06	2
AVTTt2-1084	Administracion De Agencias De Viajes Y Transporte Turistico	f	06	2
GABEt2-843	Gestion De Alimentos Y Bebidas	f	06	2
GOREt2-722	Gestion De Ocio Y Recreacion	f	06	2
ACACt2	Actividades Acreditables Ii	f	06	1
GEPTt4-61220	Gestion De Proyectos Turisticos	f	06	3
ETCAt4-1806	Estudios Del Turismo En El Gran Caribe Y Los Paises Del Alba	f	06	5
IDIOt4-2167	Idiomas Iv	f	06	2
GFETt4-963	Gestion Financiera De Las Empresas Turisticas	f	06	2
DEPTt4-963	Diseño Y Evaluacion De Proyectos Turisticos	f	06	2
COMEt4-963	Comercio Electronico	f	06	2
FAPTt4-963	Factibilidad De Proyectos Turisticos	f	06	2
NETUt4-963	Negociacion Turisticas	f	06	2
DETHt4-722	Desarrollo Del Talento Humano	f	06	2
ACACt4	Actividades Acreditables Iv	f	06	1
CASTt1-722	Calidad De Los Servicios Turisticos	f	06	2
TPTUt1-722	Tecnicas De Promocion Turistica	f	06	2
PGT36	Acreditable Ii	f	05	1
PGT16	Acreditable I	f	05	1
PRO750225	Manejo, Aplicación Y Superv. Sistemas De Informac. Contables	f	07	3
ME15045	Modelos Integración Económica Entre Venezuela, América Lati	f	07	5
901001	Matematicas	f	09	2
901002	Lecto-escritura Universitaria	f	09	2
901003	Uptm Como Proyecto Politico	f	09	5
901004	Introduccion A La Metodologia, Investigacion Y Proyectos	f	09	2
TILC60	Lenguaje, Comunicacion Y Las Tic´s	f	06	2
TIMA60	Matematica Aplicada	f	06	2
TIIU40	Introduccion A La Universidad Y Al Pnf Turismo	f	06	2
TIPN40	Proyecto Nacional Y Nueva Ciudadania	f	06	2
TIDI40	Desarrollo Integral	f	06	2
TIIN60	Ingles	f	06	2
TTLC60	Lenguaje, Comunicacion Y Las Tic´s	f	06	2
TTMA60	Matematica Aplicada	f	06	2
TTIU40	Introduccion A La Universidad Y Al Pnf Turismo	f	06	2
TTPN40	Proyecto Nacional Y Nueva Ciudadania	f	06	5
TTSP40	Seminario De Proyecto	f	06	2
TTIN60	Ingles	f	06	2
T1MC64	Metodos Cuantitativos	f	06	2
T1NV64	Nueva Vision Territorial Y Turismo	f	06	5
T1CT64	Calidad En Turismo	f	06	2
T1PI64	Patrimonio, Identidad Y Turismo	f	06	2
T1OR64	Ocio Y Recreacion	f	06	2
T1MS64	Modalidades Y Servicios Turisticos	f	06	2
T2CG64	Contabilidad Aplicada Al Turismo	f	06	2
T2GR64	Gestion De Riesgos	f	06	2
T2PP180	Practica Profesional I	f	06	2
PIID2	Idiomas	f	03	2
TGU3GP64	Gestion De Programas De Turismo Receptivo	f	06	2
TGU3LA64	Legislacion Aplicada A La Guiatura Turistica	f	06	2
T2AB45	Alimentos Y Bebidas	f	06	2
T1ID68	Idioma I	f	06	2
T1AC34	Acreditable I	f	06	1
T2GV45	Gestion De Viajes Y Operaciones Turisticas	f	06	2
T2MP45	Marketing Turistico Y Planificacion Por Productos	f	06	2
T2PS45	Proyecto Sociointegrador Ii	f	06	3
T2AC34	Acreditable Ii	f	06	1
T2ID68	Idioma Ii	f	06	2
T2TA45	Tecnologia Del Alojamiento	f	06	2
TGU3PS45	Proyecto Sociointegrador Iii	f	06	3
TGU4ID68	Idioma Iv	f	06	2
TGU4PS45	Proyecto Sociointegrador Iv	f	06	3
30001	Fundamento de Ingenieria del Software	f	03	2
30002	Matemática Avanzada	f	03	2
TGU4EL34	Electiva	f	06	2
TGU4PN45	Plan De Negocios Para Unidades De Produccion De Servicios	f	06	2
TGU4DG64	Diseño Y Gestion De Centros De Interpretación Y Parques Tem.	f	06	2
TGU4GR64	Gestion Del Riesgo En Actividades De Guiatura Y Conducción	f	06	2
TGU4PP360	Practica Profesional Ii	f	06	2
TGA3AG64	Administracion Y Calidad En El Servicio Gastronomico	f	06	2
TGA4PP360	Practica Profesional Ii	f	06	2
TAL4PP360	Practica Profesional Ii	f	06	2
TGT3IG64	Indicadores De Gestion Y Cuentas Satelites Para Destinos Tur	f	06	2
TGT3LEO64	Lengua Originaria Y Lenguaje De Señas	f	06	2
TGU4OT45	Operacion En Turismo De Aventura	f	06	2
TGA4PS68	Proyecto Sociointegrador Iv	f	06	3
TGA4ID68	Idioma Iv	f	06	2
TGA4EL34	Electiva	f	06	2
TGA4GN57	Gastronomia En El Nuevo Modelo Social	f	06	5
TGA4GM57	Gestion Financiera Y Marketing De Los Servicios Gastronomico	f	06	2
TGA4DG57	Desarrollo De La Gastronomia Internacional	f	06	2
TAL4PS68	Proyecto Sociointegrador Iv	f	06	3
TAL4EL45	Electiva	f	06	2
TAL4MS68	Modelo Socioproductivo En Las Organizaciones De Alojamiento	f	06	5
TAL4ID68	Idioma Iv	f	06	2
TAL4CP34	Comercializacion Y Promocion De Los Servicios De Alojamiento	f	06	2
TAL4GF68	Gestion Financiera Del Alojamiento	f	06	2
TGT4PS57	Proyecto Sociointegrador Iv	f	06	3
TGT4ID68	Idioma Iv	f	06	2
TGU4OE64	Organizacion Y Gestion De Eventos	f	06	2
TGU4DT64	Desarrollo Del Talento Humano	f	06	2
TGA4DT64	Desarrollo Del Talento Humano	f	06	2
TAL4DT64	Desarrollo Del Talento Humano	f	06	2
TGT4GFE64	Gestion Financiera De Emprendimientos	f	06	2
TGT4GRE64	Gestion De La Recreacion Y El Esparcimiento	f	06	2
TGT4PP360	Practica Profesional Ii	f	06	2
PG417	Acreditable Iv	f	05	1
PG218	Acreditable Ii	f	05	1
TI03SACN01	Introduccion A La Biologia	f	10	2
TI03SACN02	Introduccion A La Quimica	f	10	2
TI03SACN03	Historia De La Salud Como Campo De La Investigacion	f	10	2
TI03SACN04	Aritmetica Y Pensamiento Estrategico	f	10	2
TI03SACN05	Nuevo Estado Social Democratico De Derecho Y De Justicia	f	10	5
TI03SACN06	Etica Y Valores Del Socialismo Del Siglo Xxi	f	10	5
PH0000103	Introduccion A La Universidad Y Al Desarrollo Del Proyecto	f	11	2
PH0000203	Proyecto Nacional Y Nueva Ciudadania	f	11	5
PH0000302	Bases Fundamentales De La Historia Insugente	f	11	2
PH0000403	Lenguaje Y Comunicacion Electiva	f	11	2
PH0000503	Estadistica	f	11	2
PH0000602	Nuevas Tecnologias En La Construccion De La Historia	f	11	2
AG001	Manejo De Las Tic (prosec.)	f	01	2
PG336	Acreditable Iii	f	05	1
901104	Teoria Y Problemas Sociopoliticos Contemporaneos	f	09	5
901105	Desarrollo De Proyectos Socio-productivo I	f	09	3
901106	Acreditable I	f	09	1
901101	Psicologia Del Desarrollo	f	09	2
901102	Historia De La Psicologia Social Mundial Y Latinoamericana	f	09	2
901103	Manejo De Las Tic	f	09	2
901107	Aesthetica Y Homo Ludens En La Psicologia Social	f	09	2
901108	Construccion Social De La Realidad	f	09	2
901109	Nuevas Perspectivas En La Psicologia Educacional	f	09	2
PH0010114	Proyecto I	f	11	3
PH0010306	Antropologia	f	11	2
PH0010407	Teorias Y Metodologias De La Historia	f	11	2
PH0010506	Pueblos Originarios De Venezuela Y Nuestra America	f	11	2
PH0010606	Geografia General	f	11	2
PH0010702	Electiva I	f	11	2
TGT4EL34	Electiva	f	06	2
T103SACN01	Estructura Fisiologica Y Biologica Para La Alimentacion Hum.	f	10	2
T103SACN02	Nutricion En El Ser Humano Y Sus Implicaciones En La Salud	f	10	2
T103SACN03	Tecnologia De Los Alimentos	f	10	2
T103SACN04	Biogeohistoria De La Alimentacion	f	10	2
T103SACN05	Herramientas De Investigacion Participativa	f	10	2
T103SACN06	Caracterizacion Y Diagnostico Colectivo Alimentario De La C.	f	10	3
T103SACN07	Unidad Estetico Ludica	f	10	2
T103SACN08	Practica De Alimentacion	f	10	2
T103SACN09	Participacion Protagonica Y Poder Popular	f	10	2
T1PS79	Proyecto Sociointegrador I	f	06	3
PH0010206	Formacion Sociopolitica I	f	11	5
PH0010803	Actividades Acreditables I	f	11	1
ACRED03	Acreditable Iii	f	02	1
ACRED04	Acreditable Iv	f	02	1
CC20624213	Obras Viales	f	02	2
CC20417313	Mecanica De Fluidos	f	02	2
CCSERCOMUT	Servicio Comunitario	f	02	5
CCACRED002	Acreditable Ii	f	02	1
CC30729213	Resistencia De Materiales Para Ingenieros	f	02	2
CC30728213	Algebra Lineal	f	02	2
CC3083321	Matematica Para Ingenieros	f	02	2
CC30937213	Politica De Habitat Y Vivienda	f	02	5
CC30727213	Desarrollo Endogeno En La Construccion	f	02	5
CC30726913	Tutorial De Proyectos Iii	f	02	3
CC30834312	Analisis Estructural	f	02	2
CC30938213	Economia Y Gerencia De Proyectos	f	02	2
CC30835413	Diseño Vial	f	02	2
CC30731313	Mecanica De Los Fluidos Para Ingenieros	f	02	2
CCACRED003	Acreditable Iii	f	02	1
CC30939213	Concreto Armado	f	02	2
CC30832113	Organismos Y Convenios Internacionales	f	02	5
CC30730213	Geologia Aplicada	f	02	2
CC30836413	Acueductos De Cloacas Y Drenajes	f	02	2
CC41252313	Fundaciones Y Muros	f	02	2
CC41150213	Saneamientos Y Conservacion Ambiental	f	02	2
CC41254213	Obras Hidraulicas	f	02	2
CC41040913	Tutorial De Proyectos Iv	f	02	3
ACR004	Acreditable IV	t	03	1
CC41041213	Ingenieria Y Patrimonio	f	02	5
CC41251213	Evaluacion Ambiental	f	02	5
CC41149313	Pavimentos	f	02	2
CC41253213	Obras De Sistemas De Transporte	f	02	2
CC41148313	Diseño Estructural	f	02	2
CCACRED004	Acreditable Iv	f	02	1
CC41043313	Acero Y Madera	f	02	2
CC41146113	Gerencia Social	f	02	5
CC41042213	Urbanismos Y Edificaciones	f	02	2
CC41147413	Mantenimiento De Obras Civiles	f	02	2
CC41044213	Ingenieria De Transito	f	02	2
CC41045213	Hidrologia	f	02	2
CCIU01013	Proyecto Nacional Y Nueva Ciudadania	f	02	5
CCIU03013	Matematica Inicial	f	02	2
CCIU02013	Taller De Introduccion A La Universidad Y Al Programa	f	02	5
CCIU04013	Construccion Civil Y Sociedad	f	02	2
CCTU04013	Mecanica Aplicada	f	02	2
CCTU02013	Taller De Introduccion A La Universidad Y Al Programa	f	02	5
CCTU03013	Matematica De Nivelacion	f	02	2
CCTU01013	Proyecto Nacional Y Nueva Ciudadania	f	02	5
CC10106913	Expresion Grafica Y Dibujo De Proyecto	f	02	2
CC10311313	Mecanica	f	02	2
CC10105913	Topografia	f	02	2
CC10101913	Tutorial De Proyectos I	f	02	3
CC10207213	Estructura Organizativa Del Estado	f	02	5
CC10309113	Geografia Y Habitat	f	02	5
CC10102213	Construccion De Documentos	f	02	5
CC10103413	Matematica	f	02	2
CC10310113	Analisis Estadisticos	f	02	2
CC10208213	Fisica Aplicada	f	02	2
CC10104213	Quimica General	f	02	2
CCACRED001	Acreditable I	f	02	1
CC20415213	Materiales De Construccion	f	02	2
CC20521313	Instalaciones Sanitarias Y Gas	f	02	2
CC20625313	Sistemas Hidrosanitarios	f	02	2
CC20414213	Electricidad Y Mecanica	f	02	2
CC20412913	Tutorial De Proyectos Ii	f	02	3
CC20413213	Higiene Y Seguridad Industrial	f	02	5
CC20518213	Impacto Ambiental En La Construccion	f	02	5
CC20622113	Desarrollo Profesional Y Etica	f	02	5
CC20519413	Administracion De Obras	f	02	2
CC20520213	Tecnologia De La Construccion	f	02	2
CC20623313	Resistencia De Materiales	f	02	2
CC20416413	Mecanica De Suelos	f	02	2
CCELECVT01	Electiva I	f	02	2
CCELECVT02	Electiva Ii	f	02	2
CCPRACT001	Practica Profesional I	f	02	2
CCPRACT002	Practica Profesional Ii	f	02	2
T2SC000	Servicio Comunitario	f	06	2
TGU3ID68	Idioma Iii	f	06	2
TGU3AC34	Acreditable Iii	f	06	1
TGU3APC34	Atributos E Interpretacion Del Patrimonio Cultural	f	06	2
TGU3APN34	Atributos E Interpretacion Del Patrimonio Natural	f	06	2
TGU3PC34	Promocion Y Comercializacion De Productos Turisticos	f	06	2
TGA3PS57	Proyecto Sociointegrador Iii	f	06	3
TGA3ID68	Idioma Iii	f	06	2
TGA3AC34	Acreditable Iii	f	06	2
TGA3HP68	Historia Y Evolucion Del Patrimonio Gastronomico Nacional	f	06	5
TGA3DG56	Desarrollo Del Acervo Gastronomico Nacional	f	06	2
TGU3PT64	Principios Y Tecnicas De La Guiatura Turistica	f	06	2
TGU3GO64	Gestion Y Operacion De Campamentos	f	06	2
TAL3PS57	Proyecto Sociointegrador Iii	f	06	3
TAL3ID68	Idioma Iii	f	06	2
TAL3AC34	Acreditable Iii	f	06	1
TAL3EMS68	Equipamiento, Mantenimiento Y Seguridad Del Alojamiento	f	06	2
TAL3GC34	Gestion De La Calidad De Los Servicios De Alojamiento	f	06	2
TAL3GA45	Gestion Del Alojamiento	f	06	2
TAL3GE45	Gestion De Eventos Y Protocolo	f	06	2
TAL3LA34	Legislacion De Los Servicios De Alojamiento	f	06	2
TGT4PS45	Proyecto Sociointegrador Iii	f	06	3
TGT3ID68	Idioma Iii	f	06	2
TGT3AC34	Acreditable Iii	f	06	1
TGT3PE34	Planificacion Y Gestion Estrategica De Destinos Turisticos	f	06	2
TGT3AGE34	Administracion, Organizacion Y Gestion De Emprendimientos	f	06	2
TGT3ACP34	Asociatividad, Comercializacion Y Promocion Turistica	f	06	2
TGT4FPI45	Formulacion De Proyectos De Inversion Y Plan De Negocios	f	06	2
TGT4FGM45	Formulacion Y Gestion Del Plan De Marketing Turistico	f	06	2
TGA3HG64	Higiene, Seguridad E Ingenieria De Los Insumos Gastronomicos	f	06	2
TGA3LG64	Legislacion De La Gastronomia	f	06	2
TGT4TA64	Turismo Alternativo	f	06	2
TGT4GEC64	Gestion De Eventos, Ceremonial Y Protocolo	f	06	2
TGT3LAT64	Legislacion Aplicada Al Turismo	f	06	2
TGT3MTI64	Manejo De Tic Y Programas Operativos Para Turismo	f	06	2
PPF12020	Práctica Profesional I	f	04	2
PPF12040	Práctica Profesional Ii	f	04	2
IDI9003	Acreditable Ii Idiomas	f	04	2
DAR9003	Acreditable I Deporte Arte Y Recreación	f	04	2
CON25015	Contabilidad Ii	f	04	2
PFC9023	Deberes Formales Del Contribuyente Ii (islr)	f	04	2
AAD9043	Auditoría Administrativa	f	04	2
MFPII48TIII2	Morfofisiopatología Ii	f	12	2
GCHAE864TIV30	Gestión Y Cuidado Humano Por Áreas Específicas	f	12	2
ISP144TIV4	Integracion Sociopolitica	f	12	5
IECH264TIV8	Investigación En Enfermería Para El Cuidado Humano	f	12	2
CHQ288TIV10	Cuidado Humano Quirúrgico	f	12	2
CHH288TIV10	Cuidado Humano En Hemoterapia	f	12	2
CHIN288TIV10	Cuidado Humano Intensivo Neonatal	f	12	2
CHN288TIV10	Cuidado Humano En Nefrología	f	12	2
CHIA288TIV10	Cuidado Humano Intensivo En El Adulto	f	12	2
901110	Homo Ludens (deporte Y Recreación I)	f	09	2
AGACRED003	Acreditable III	t	01	1
AGACRED001	Acreditable I	t	01	1
AGACRED004	Acreditable IV	t	01	1
AGACRED002	Acreditable II	t	01	1
PIMT005	Matemática I	f	01	2
AGMAI142	Taller de Inducción	f	01	2
AGMAF142	Física Aplicada	f	01	2
AGMAP142	Introducción a la Universidad Politecnica y PNF	f	01	2
ACR002	Acreditable II	t	03	1
ACR003	Acreditable III	t	03	1
ACR001	Acreditable I	t	03	1
PIEL2	Electiva II	t	03	2
PIEL4	Electiva IV	t	03	2
91205	Ingles Instrumental	f	49	2
91202	Ética	f	49	2
91401	Radiología Legal	f	49	2
91501	Servicio Comunitario	f	49	2
91106	Terminología Médica	f	49	2
91302	Electiva I	t	49	2
91402	Electiva II	t	49	2
91201	Fisiología	f	49	2
91105	Anatomía Radiológica	f	49	2
91107	Atención al Paciente	f	49	2
91103	Deporte y Cultura	f	49	2
91101	Computación Aplicada a la Radiología	f	49	2
91104	Radiología I	f	49	2
91203	Psicología	f	49	2
91204	Matemática	f	49	2
91207	Redaccion de Informes	f	49	2
91206	Radiología II	f	49	2
91301	Uso de Fármacos en Radiología	f	49	2
91303	Gerencia de Servicios Radiológicos	f	49	2
91304	Estadística Aplicada	f	49	2
91305	Protección Radiológica I	f	49	2
91307	Prácticas Radiológicas I	f	49	2
91306	Radiologia III	f	49	2
91403	Metodología de la Investigación I	f	49	2
91404	Epidemiología	f	49	2
91405	Protección Radiológica II	f	49	2
91406	Radiología IV	f	49	2
91502	Políticas Públicas	f	49	2
91503	Metodología Investigación II	f	49	2
91504	Gestión en Salud	f	49	2
91505	Sociología de la Salud	f	49	2
91507	Prácticas Radiológicas III	f	49	2
91506	Radiología V	f	49	2
91601	Trabajo Especial de Grado	f	49	2
91407	Prácticas Radiológicas II	f	49	2
90001	Introducción a la Biología	f	09	2
90002	Introducción a la Química	f	09	2
90003	Historia de la Salud como Campo de Investigación	f	09	2
90004	Aritmética y Pensamiento Estratégico	f	09	2
90005	Nuevo Estado Social Demacrático de Derecho y Justicia	f	09	3
90006	Ética y Valores del Socialismo del Siglo XXI	f	09	5
90011	Estructuras Fisiológicas y Biológicas para la alimentación	f	09	2
90012	Nutrición en el Ser Humano y sus Implicaciones en la Salud	f	09	2
90013	Bio Geo Historia de la Alimentación	f	09	2
90014	Tecnología de los Alimentos	f	09	2
90015	Participación Protagónica y Poder Popular	f	09	2
90016	Herramientas de Investigación Acción Participativa	f	09	2
90017	Caracterización y Diagóstico Colectivo Alimentario de la Comunidad	f	09	2
90018	Prácticas de Alimentación	f	09	2
90019	Unidad Estético, Lúdico, Cultural y Recreativa	f	09	2
90021	Calidad e Inocuidad de los Alimentos para Garantizar la Seguridad y la Soberanía Alimentaría	f	09	2
90022	Alimentación y Prácticas Saludables	f	09	2
90023	Geohistoria d la Alimentación en Venezuela	f	09	2
90024	Factores que Influyen en la Alimentación Humana	f	09	2
90025	La Alimentación como un Acto de Soberanía y Seguridad Alimentaria	f	09	2
90026	Experiencias de Integración Comunitaria	f	09	2
90027	IAP Contrucción y Ejecución Colectiva de Plan de Acción Comunitario	f	09	2
90028	Sistematización de la Experiencia	f	09	2
90029	Unidad Estético, Lúdico, Cultural, Deportiva	f	09	2
900210	Electiva	t	09	2
ELECTIVA-222	Electiva II	t	08	2
\.


--
-- Data for Name: carga; Type: TABLE DATA; Schema: public; Owner: -
--

COPY carga (id, "dividirHT", "nuevoNombre", "idProfesor", "idSeccion", "idSuplente", "idUC") FROM stdin;
99	f	\N	5447146	15	\N	ADF6042
100	f	\N	13525905	15	\N	PCG6042
101	f	\N	8037619	15	\N	PRO570419
102	f	Administración de Empresas de Propiedad Social	11955850	15	\N	AFPS6033
103	f	Administración de Empresas Turisticas	10718393	15	\N	ELEC49043
104	f	\N	15565857	15	\N	FSC18046
105	f	\N	9472514	15	\N	FEP9043
107	f	\N	9906067	15	6729553	SHDD9043
108	f	\N	16317126	16	\N	ADF6042
109	f	\N	15175795	16	\N	PCG6042
110	f	\N	12048353	16	\N	PRO570419
111	f	Administración de Empresas de Propiedad Social	6729553	16	\N	AFPS6033
112	f	Administración de Empresas Turisticas	6547603	16	\N	ELEC49043
113	f	\N	3692342	16	\N	FSC18046
114	f	\N	17523454	16	\N	FEP9043
115	f	\N	10718393	16	\N	SHDD9043
116	f	\N	3966127	24	\N	IDI9013
117	f	\N	3966127	20	\N	IDI9033
118	f	\N	3966127	21	\N	IDI9033
119	f	\N	5447146	21	\N	PPL6032
120	f	\N	5447146	22	\N	SHA9023
121	f	\N	5447146	29	\N	EEP60T2
122	f	\N	6547603	21	\N	PRO570319
123	f	\N	6547603	24	\N	DFC6012
124	f	\N	11108398	24	\N	PRO570119
125	f	\N	11108398	25	\N	CON12014
126	f	\N	11108398	23	\N	ADC6022
127	f	\N	5753564	28	\N	FSC12014
128	f	\N	5753564	18	\N	FSC18036
129	f	\N	5753564	19	\N	FSC18036
130	f	\N	10104966	20	\N	ADM6032
131	f	\N	10104966	21	\N	ADM6032
133	f	\N	10104966	22	14281324	PDF3012
134	f	\N	10104966	27	14281324	PRO27019
135	f	\N	9472514	20	\N	PPL6032
136	f	\N	9472514	18	\N	PRO570319
137	f	\N	9475173	27	\N	TIC6012
138	f	Desarrollo Social Comunitario	8037619	27	5871766	ELC6012
139	f	\N	8037619	29	5871766	ANM60T2
140	f	\N	8041510	24	\N	OF6012
141	f	Desarrollo Social Comunitario	8041510	28	8223161	ELC6012
142	f	\N	8041510	26	8223161	PRO570119
143	f	\N	13525905	21	\N	PRE9033
144	f	\N	13525905	19	\N	PRO570319
145	f	\N	10314511	22	\N	CON12024
146	f	\N	10314511	23	\N	CON12024
147	f	\N	10314511	20	\N	PRE9033
148	f	Calidad y Gestión Ambiental	9028433	22	\N	ELEC29023
149	f	Calidad y Gestión Ambiental	9028433	23	\N	ELEC29023
150	f	\N	9473423	28	\N	EOE6012
151	f	\N	9473423	27	\N	FSC12014
152	f	\N	9473423	29	\N	PNC60T2
153	f	\N	8683060	26	\N	IDI9013
154	f	\N	8022671	25	\N	TPM6012
155	f	\N	8022671	26	\N	TPM6012
156	f	\N	8039160	17	\N	TIC6032
157	f	\N	8039160	18	\N	TIC6032
158	f	\N	8039160	19	\N	TIC6032
159	f	\N	8958864	17	\N	DAR9033
160	f	\N	8958864	18	\N	DAR9033
161	f	\N	8958864	19	\N	DAR9033
162	f	\N	8958864	20	\N	DAR9033
163	f	\N	8958864	21	\N	DAR9033
164	f	\N	8958864	24	\N	DAR9013
165	f	\N	8958864	25	\N	DAR9013
166	f	\N	8958864	26	\N	DAR9013
167	f	\N	4489957	25	\N	IDI9013
169	f	\N	8021736	27	\N	EOE6012
170	f	\N	15565857	24	\N	FSC18016
171	f	\N	15565857	25	\N	FSC18016
172	f	\N	15565857	20	\N	FSC18036
173	f	\N	15565857	21	\N	FSC18036
174	f	\N	8223161	17	\N	ADM6032
175	f	\N	9643447	25	\N	OF6012
176	f	\N	9643447	20	\N	ADP9033
177	f	\N	9643447	20	\N	PRO570319
178	f	\N	12817844	23	\N	PCG3011
179	f	\N	3692342	22	\N	FSC18026
180	f	\N	3692342	23	\N	SHA9023
181	f	\N	3692342	17	\N	FSC18036
182	f	\N	15175795	25	\N	PRO570119
183	f	\N	15175795	19	\N	ADM6032
184	f	\N	12722753	17	\N	ADP9033
185	f	\N	12722753	21	\N	ADP9033
186	f	\N	12722753	29	\N	GEA60T2
187	f	\N	9234597	25	\N	DFC6012
188	f	\N	9234597	22	\N	PRO57019
189	f	\N	9234597	18	\N	ADP9033
190	f	\N	11955850	23	\N	PRO57019
191	f	\N	11955850	28	\N	FAD15015
192	f	\N	17523454	22	\N	ADC6022
193	f	\N	17523454	17	\N	PRO570319
194	f	\N	12048353	24	\N	TPM6012
195	f	\N	12048353	26	\N	DFC6012
196	f	\N	1010633	26	\N	OF6012
197	f	\N	1010633	19	\N	ADP9033
198	f	\N	1010633	28	\N	PRO27019
199	f	\N	6729553	29	\N	SEM260T2
200	f	\N	6729553	18	\N	ADM6032
201	f	\N	11953052	26	\N	CON12014
202	f	\N	11953052	29	\N	SEM160T2
203	f	\N	9906067	26	\N	FSC18016
204	f	\N	9906067	23	\N	FSC18026
205	f	\N	9906067	27	\N	FAD15015
206	f	\N	5871766	22	\N	PCG3011
207	f	\N	16317126	27	\N	CON15015
208	f	\N	16317126	28	\N	CON15015
209	f	\N	16317126	24	\N	CON12014
210	f	\N	11705856	28	\N	TIC6012
212	f	\N	14281324	23	\N	PDF3012
218	f	\N	14131053	33	\N	AGSIP342
219	f	\N	14131053	34	\N	AGSIP342
220	f	\N	14131053	35	\N	AGSCSNI442
221	f	\N	8034300	35	\N	AGECE442
222	f	\N	8034300	36	\N	AGECE442
224	f	\N	9501330	35	\N	AGPEP442
225	f	\N	9501330	36	\N	AGPEP442
226	f	\N	9081546	34	7824945	AGPFIII3166
227	f	\N	8039463	33	\N	AGPSLC342
228	f	\N	8039463	34	\N	AGPSLC342
229	f	\N	8013671	35	\N	AGPFIV4166
230	f	\N	7326064	36	\N	AGPFIV4166
231	f	\N	8046659	33	\N	AGMSA342
232	f	\N	8046659	34	\N	AGMSA342
233	f	\N	9478674	33	\N	AGANA342
234	f	\N	16285988	33	\N	AGEPS342
235	f	\N	16285988	34	\N	AGEPS342
236	f	\N	19592116	34	\N	AGANA342
237	f	\N	5201033	36	\N	AGSCSNI442
238	f	\N	8022340	35	\N	AGECC442
239	f	\N	8022340	36	\N	AGECC442
240	f	\N	4589713	33	\N	AGPFIII3166
241	f	\N	8013569	33	\N	AGSRD342
242	f	\N	8013569	34	\N	AGSRD342
244	f	\N	5466076	48	\N	AGMAP442
245	f	\N	5466076	44	\N	AGDREV242
248	f	\N	9081546	39	7824945	AGPFI1126
253	f	\N	13649962	41	8038611	AGPLA162
254	f	\N	13649962	42	8038611	AGPLA162
255	f	\N	13649962	43	8038611	AGPLA162
256	f	\N	13649962	44	14917541	AGAGE242
257	f	\N	10720364	39	\N	AGCGA16
258	f	\N	10720364	40	\N	AGCGA16
259	f	\N	9501330	39	\N	AGSALC14
260	f	\N	5561396	44	\N	AGSEA262
261	f	\N	5561396	40	\N	AGPRA162
262	f	\N	8013671	40	\N	AGBSD162
263	f	\N	7326064	43	19592116	AGPFI1126
264	f	\N	10102108	40	\N	AGPFI1126
265	f	\N	9478674	42	\N	AGZFA162
266	f	\N	9478674	44	\N	AGREA262
267	f	\N	15516303	47	\N	AGFIA162
268	f	\N	10718091	41	\N	AGMEI162
269	f	\N	10718091	42	\N	AGMEI162
270	f	\N	10718091	43	\N	AGMEI162
271	f	Investigación e Innovación Participativa Comunitaria	84570604	39	\N	AGACRED001
272	f	Investigación e Innovación Participativa Comunitaria	84570604	40	\N	AGACRED001
273	f	Investigación e Innovación Participativa Comunitaria	84570604	41	\N	AGACRED001
274	t	\N	19440209	39	\N	AGPRB162
275	t	\N	19440209	40	\N	AGPRB162
276	t	\N	3908624	47	\N	AGQGA16
277	f	\N	3908624	42	\N	AGPRBQ162
278	t	\N	3908624	43	\N	AGPRBQ162
279	f	\N	12779833	41	\N	AGZFA162
280	f	\N	12779833	43	\N	AGZFA162
281	f	Investigación e Innovación Participativa Comunitaria	8019784	42	\N	AGACRED001
282	f	Investigación e Innovación Participativa Comunitaria	8019784	43	\N	AGACRED001
283	f	\N	14917541	40	\N	AGSALC14
284	f	\N	14917541	47	\N	AGMAA16
285	f	\N	4589713	39	\N	AGPRA162
286	f	\N	4589713	41	\N	AGPRBQ162
287	f	\N	14917365	44	\N	AGTOG262
288	t	\N	14131053	51	\N	AGMEI362
290	f	\N	3062497	54	8023975	AGECC442
291	f	\N	13098948	44	8005159	AGAGC242
292	f	\N	13098948	39	8013671	AGBSD162
293	f	\N	8034300	53	\N	AGECE442
294	f	\N	7080727	53	13524820	AGOTA362
295	f	\N	10720364	49	\N	PIMT005
296	f	\N	8041985	52	5201033	AGPFIII3126
297	f	\N	8041985	53	19592116	AGSPA262
298	f	\N	9501330	54	\N	AGPEP462
299	f	\N	5561396	53	\N	AGPFIII3126
300	f	\N	8005159	41	\N	AGBFV162
301	f	\N	8005159	42	\N	AGBFV162
302	f	\N	8005159	43	\N	AGBFV162
303	f	\N	8039463	54	11462979	AGPFIV41
304	f	\N	8046659	52	\N	AGMSA342
305	f	\N	8046659	53	\N	AGMSA342
307	f	\N	15142314	51	9473567	AGPFIII3126
308	f	\N	10102108	51	\N	AGGAE362
310	f	\N	15516303	50	\N	AGFIAIP
311	f	\N	9473567	52	\N	AGGAE362
312	f	\N	16285988	51	\N	AGEPS342
314	f	\N	14917541	51	\N	AGETD362
315	f	\N	18962414	54	\N	AGHCA462
316	f	\N	8013569	52	\N	AGEPS342
317	f	\N	16964770	51	\N	AGANM362
318	f	\N	16964770	52	\N	AGANM362
319	f	\N	14917365	54	\N	AGSIP362
320	f	\N	15142314	41	\N	AGPFI1126
322	f	\N	3062497	42	18962414	AGPFI1126
323	f	\N	11462979	44	\N	AGPFII2126
324	f	\N	8013569	53	\N	AGSRD362
325	f	\N	5655983	59	\N	PIPT2
326	f	Desarrollo de Actividades en la Web	5655983	71	13477378	PIEL4
327	t	\N	8047120	56	\N	PIAP1
328	f	\N	4484976	67	\N	PIFC1
329	f	\N	4484976	68	\N	PIFC1
330	f	Redacción y Comprensión Lectora	4484976	68	\N	ACR001
331	f	\N	7168412	61	9201868	PIMA3
332	f	\N	13966054	60	11957795	PIPT2
333	f	\N	13966054	68	11957795	PIPT1
334	f	\N	13966054	58	13966349	PIAC1
335	f	\N	14917178	66	17663839	PIPT4
336	f	\N	14917178	64	17663839	PIIS3
337	f	\N	14917178	69	17663839	PIMT1
338	f	\N	10256095	55	\N	PIPT1
339	f	\N	10256095	57	\N	PIPT1
340	f	\N	10256095	58	\N	PIPT1
341	f	\N	9499979	63	\N	PIPT3
342	f	\N	9499979	64	\N	PIPT3
343	f	\N	9499979	65	\N	PIPT3
344	f	\N	12722185	71	13477378	PIAI4
345	f	\N	4491973	61	17027780	PIMB3
346	f	Tecnología Aplicada a la Base de Datos	4491973	59	17027780	PIEL2
347	f	Tecnología Aplicada a la Base de Datos	4491973	60	17027780	PIEL2
348	f	\N	8027793	67	\N	PIMT1
349	f	\N	8027793	68	\N	PIMT1
350	f	\N	8027793	72	\N	30002
351	t	\N	10898072	57	\N	PIAP1
352	f	Programación Orientada a Objetos	10898072	61	\N	ACR003
353	f	\N	10898072	62	\N	PIMB3
354	f	Programación Orientada a Objetos	6953950	62	\N	ACR003
355	t	\N	6953950	59	\N	PIPP2
356	f	Reingeniería de Sistemas	6953950	66	\N	ACR004
358	f	\N	11960173	56	11466224	PIPT1
359	f	\N	11960173	56	11466224	PIAC1
360	f	\N	11303172	61	\N	PIIS3
361	f	\N	11303172	65	\N	PIIS3
362	f	\N	11303172	63	\N	PIIS3
363	t	\N	13524109	69	\N	PIAP1
364	f	\N	13524109	66	\N	PISI4
365	f	\N	9389944	55	\N	PIMT1
366	f	\N	9389944	56	\N	PIMT1
367	f	\N	9389944	57	\N	PIMT1
368	f	\N	8044725	61	\N	PIPT3
369	f	\N	8044725	62	\N	PIPT3
370	t	\N	5239250	58	\N	PIAP1
371	t	\N	5239250	68	\N	PIAP1
372	f	\N	11956576	55	\N	PIID1
373	f	\N	11956576	56	\N	PIID1
374	f	\N	11956576	57	\N	PIID1
375	f	\N	11956576	58	\N	PIID1
376	f	\N	11956576	68	\N	PIID1
377	f	\N	11956576	66	\N	PIID4
378	f	\N	11956576	71	\N	PIID4
379	f	\N	4489957	67	\N	PIID1
380	f	\N	4489957	69	\N	PIID1
381	f	\N	13014569	67	\N	PIAC1
382	f	\N	13014569	68	13966349	PIAC1
383	f	\N	7509507	64	\N	PIIO3
384	f	\N	7509507	65	\N	PIIO3
385	f	Programación Orientada a Proyecto	7509507	65	\N	PIEL3
386	f	\N	8029075	63	\N	PIFC3
387	f	\N	8029075	64	\N	PIFC3
389	f	\N	8029075	59	\N	PIFC2
390	f	\N	8029075	60	\N	PIFC2
391	f	\N	8029075	61	\N	PIFC3
392	f	\N	8029075	66	\N	PIFC4
393	f	\N	8029075	71	\N	PIFC4
394	f	\N	13648603	60	\N	PIPP2
395	f	Programación Orientada a Proyecto	13648603	63	\N	PIEL3
396	f	Programación Orientada a Proyecto	13648603	64	\N	PIEL3
397	f	\N	13967486	55	\N	PIAC1
398	f	\N	13967486	69	\N	PIAC1
399	t	\N	15296169	55	\N	PIAP1
400	f	\N	15296169	69	\N	PIFC1
403	t	\N	13723698	67	\N	PIAP1
404	f	\N	13723698	57	\N	PIAC1
405	f	\N	9201868	58	\N	PIMT1
406	f	\N	9201868	62	\N	PIMA3
407	f	\N	11954144	65	\N	PIFC3
408	f	\N	11954144	72	\N	PIPNP03
409	f	\N	11954144	62	\N	PIFC3
410	f	\N	11954144	55	\N	PIFC1
411	f	\N	11954144	56	\N	PIFC1
412	f	\N	11954144	57	\N	PIFC1
413	f	\N	11954144	58	\N	PIFC1
414	f	\N	14401340	71	\N	PIPT4
415	f	\N	14401340	72	\N	PITIP02
416	f	\N	17254684	73	\N	30001
417	f	\N	17254684	73	\N	PITIP02
418	f	\N	14401340	69	\N	PIPT1
419	f	\N	11466224	66	\N	PIRA4
420	f	\N	17663839	70	\N	PIMT004
421	f	\N	20039181	73	\N	PIPNP03
422	f	\N	20039181	73	\N	30002
423	f	\N	11957795	67	\N	PIPT1
424	f	\N	8028204	63	\N	PIIO3
425	f	\N	8028204	62	\N	PIIS3
426	f	\N	8028204	72	\N	30001
427	f	\N	9474618	74	\N	90017
428	f	\N	9474618	74	\N	90018
429	f	\N	9474618	75	\N	90026
430	f	\N	17129049	74	\N	90011
431	f	\N	17129049	74	\N	90014
432	f	\N	17129049	74	\N	90013
433	f	\N	10172170	74	\N	90012
434	f	\N	11036485	74	\N	90016
435	f	\N	11036485	75	\N	90027
436	f	\N	20199965	75	\N	90024
437	f	\N	20199965	75	\N	90022
438	f	\N	12348836	75	\N	90021
439	f	\N	12348836	75	\N	90025
440	f	\N	8021736	76	\N	PRACPROF-2120
441	f	\N	3661985	76	\N	RECUPSFO-245
442	f	\N	3661985	76	\N	DIAGINAU-245
443	f	\N	4356042	76	\N	PROYSOCI-234
444	f	\N	5198826	76	\N	NEUROLIN-245
445	f	\N	5198826	76	\N	PATOCOHU-256
446	f	Lenguaje de Señas Venezolanas II	19421996	76	\N	ELECTIVA-222
447	f	\N	10751767	76	\N	DIAGINLE-256
448	f	\N	10751767	76	\N	DIAGINHA-256
\.


--
-- Name: carga_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('carga_id_seq', 448, true);


--
-- Name: carreraSede_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"carreraSede_id_seq"', 14, true);


--
-- Name: condicion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('condicion_id_seq', 4, true);


--
-- Data for Name: edificio; Type: TABLE DATA; Schema: public; Owner: -
--

COPY edificio (id, edificio, id_sede) FROM stdin;
\.


--
-- Name: edificio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('edificio_id_seq', 1, false);


--
-- Name: eje_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('eje_id_seq', 5, true);


--
-- Name: estructuraCS_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"estructuraCS_id_seq"', 15, true);


--
-- Name: estructura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('estructura_id_seq', 4, true);


--
-- Data for Name: firma; Type: TABLE DATA; Schema: public; Owner: -
--

COPY firma (orden, cargo, "idProfesor") FROM stdin;
\.


--
-- Data for Name: historial; Type: TABLE DATA; Schema: public; Owner: -
--

COPY historial (id, usuario, descripcion, sql) FROM stdin;
1455656550	Nombre Apellido (12345678)	Se modificó al profesor <strong>Ana Angulo (14131053)</strong>	update persona set cedula=&#039;14131053&#039;, nombre=&#039;Ana&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Angulo&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;14131053&#039;\n\nupdate profesor set cedula=&#039;14131053&#039;, categoria=&#039;Tit&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;47&#039; where cedula=&#039;14131053&#039;
1455656714	Nombre Apellido (12345678)	Se modificó al profesor <strong>Zaira Bouqet (3062497)</strong>	update persona set cedula=&#039;3062497&#039;, nombre=&#039;Zaira&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Bouqet&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;3062497&#039;\n\nupdate profesor set cedula=&#039;3062497&#039;, categoria=&#039;AuxV&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;47&#039; where cedula=&#039;3062497&#039;
1455656804	Nombre Apellido (12345678)	Se modificó al profesor <strong>Esteban Briceño (5466076)</strong>	update persona set cedula=&#039;5466076&#039;, nombre=&#039;Esteban&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Briceño&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;5466076&#039;\n\nupdate profesor set cedula=&#039;5466076&#039;, categoria=&#039;Agre&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;47&#039; where cedula=&#039;5466076&#039;
1455656864	Nombre Apellido (12345678)	Se modificó al profesor <strong>Federico Del Cura (13098948)</strong>	update persona set cedula=&#039;13098948&#039;, nombre=&#039;Federico&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Del Cura&#039;, &quot;segundoApellido&quot;=&#039;Delgado&#039;, sexo=&#039;m&#039;, correo=&#039;federico.delcura@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0416-7759881&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;13098948&#039;\n\nupdate profesor set cedula=&#039;13098948&#039;, categoria=&#039;Agre&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;40&#039; where cedula=&#039;13098948&#039;
1455656917	Nombre Apellido (12345678)	Se modificó al profesor <strong>Pedro Gonzalez (8034300)</strong>	update persona set cedula=&#039;8034300&#039;, nombre=&#039;Pedro&#039;, &quot;segundoNombre&quot;=&#039;William&#039;, apellido=&#039;Gonzalez&#039;, &quot;segundoApellido&quot;=&#039;Guillen&#039;, sexo=&#039;m&#039;, correo=&#039;pwgg@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8034300&#039;\n\nupdate profesor set cedula=&#039;8034300&#039;, categoria=&#039;Agre&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;47&#039; where cedula=&#039;8034300&#039;
1455656994	Nombre Apellido (12345678)	Se modificó al profesor <strong>Simón Hollo (9081546)</strong>	update persona set cedula=&#039;9081546&#039;, nombre=&#039;Simón&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Hollo&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;9081546&#039;\n\nupdate profesor set cedula=&#039;9081546&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;21&#039; where cedula=&#039;9081546&#039;
1455657075	Nombre Apellido (12345678)	Se modificó al profesor <strong>Ivan Lopez (7080727)</strong>	update persona set cedula=&#039;7080727&#039;, nombre=&#039;Ivan&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Lopez&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;7080727&#039;\n\nupdate profesor set cedula=&#039;7080727&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;8&#039; where cedula=&#039;7080727&#039;
1455657107	Nombre Apellido (12345678)	Se modificó al profesor <strong>Yimi Marquez (13649962)</strong>	update persona set cedula=&#039;13649962&#039;, nombre=&#039;Yimi&#039;, &quot;segundoNombre&quot;=&#039;Leandro&#039;, apellido=&#039;Marquez&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;marquezyimi@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04265731501&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;13649962&#039;\n\nupdate profesor set cedula=&#039;13649962&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;47&#039; where cedula=&#039;13649962&#039;
1455657373	Nombre Apellido (12345678)	Se modificó al profesor <strong>Jose Milla (10720364)</strong>	update persona set cedula=&#039;10720364&#039;, nombre=&#039;Jose&#039;, &quot;segundoNombre&quot;=&#039;Timoteo&#039;, apellido=&#039;Milla&#039;, &quot;segundoApellido&quot;=&#039;Monsalve&#039;, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0414-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;10720364&#039;\n\nupdate profesor set cedula=&#039;10720364&#039;, categoria=&#039;Agre&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;20&#039; where cedula=&#039;10720364&#039;
1455657442	Nombre Apellido (12345678)	Se modificó al profesor <strong>Jesús Montilla (8041985)</strong>	update persona set cedula=&#039;8041985&#039;, nombre=&#039;Jesús&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Montilla&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8041985&#039;\n\nupdate profesor set cedula=&#039;8041985&#039;, categoria=&#039;Agre&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;47&#039; where cedula=&#039;8041985&#039;
1455657503	Nombre Apellido (12345678)	Se modificó al profesor <strong>Orlando Oberto (9501330)</strong>	update persona set cedula=&#039;9501330&#039;, nombre=&#039;Orlando&#039;, &quot;segundoNombre&quot;=&#039;Antonio&#039;, apellido=&#039;Oberto&#039;, &quot;segundoApellido&quot;=&#039;Urbina&#039;, sexo=&#039;m&#039;, correo=&#039;orlandooberto@yahoo.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;9501330&#039;\n\nupdate profesor set cedula=&#039;9501330&#039;, categoria=&#039;Agre&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;22&#039; where cedula=&#039;9501330&#039;
1455814853	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Hollo Simón (9081546)</strong>	insert into carga values(default, false, null, &#039;9081546&#039;, &#039;34&#039;, null, &#039;AGPFIII3166&#039;)
1455657590	Nombre Apellido (12345678)	Se modificó al profesor <strong>Manuel Oliveros (5561396)</strong>	update persona set cedula=&#039;5561396&#039;, nombre=&#039;Manuel&#039;, &quot;segundoNombre&quot;=&#039;Antonio&#039;, apellido=&#039;Oliveros&#039;, &quot;segundoApellido&quot;=&#039;Carruyo&#039;, sexo=&#039;m&#039;, correo=&#039;mao5561@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0426-5580062&#039;, &quot;telefonoFijo&quot;=&#039;0274-2216348&#039; where cedula=&#039;5561396&#039;\n\nupdate profesor set cedula=&#039;5561396&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;21&#039; where cedula=&#039;5561396&#039;
1455657633	Nombre Apellido (12345678)	Se modificó al profesor <strong>Rigoberto Paredes (8005159)</strong>	update persona set cedula=&#039;8005159&#039;, nombre=&#039;Rigoberto&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Paredes&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04144569878&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8005159&#039;\n\nupdate profesor set cedula=&#039;8005159&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;47&#039; where cedula=&#039;8005159&#039;
1455657671	Nombre Apellido (12345678)	Se modificó al profesor <strong>Ramses Pernia (8039463)</strong>	update persona set cedula=&#039;8039463&#039;, nombre=&#039;Ramses&#039;, &quot;segundoNombre&quot;=&#039;Alonzo&#039;, apellido=&#039;Pernia&#039;, &quot;segundoApellido&quot;=&#039;Suarez&#039;, sexo=&#039;m&#039;, correo=&#039;ramsespernia0606@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8039463&#039;\n\nupdate profesor set cedula=&#039;8039463&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;47&#039; where cedula=&#039;8039463&#039;
1455657727	Nombre Apellido (12345678)	Se modificó al profesor <strong>Aida Peña (8013671)</strong>	update persona set cedula=&#039;8013671&#039;, nombre=&#039;Aida&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Peña&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8013671&#039;\n\nupdate profesor set cedula=&#039;8013671&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;21&#039; where cedula=&#039;8013671&#039;
1455657764	Nombre Apellido (12345678)	Se modificó al profesor <strong>Ramon Riera (7326064)</strong>	update persona set cedula=&#039;7326064&#039;, nombre=&#039;Ramon&#039;, &quot;segundoNombre&quot;=&#039;Fernando&#039;, apellido=&#039;Riera&#039;, &quot;segundoApellido&quot;=&#039;Tona&#039;, sexo=&#039;m&#039;, correo=&#039;rriera60@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0416-6562052&#039;, &quot;telefonoFijo&quot;=&#039;0274-2452722&#039; where cedula=&#039;7326064&#039;\n\nupdate profesor set cedula=&#039;7326064&#039;, categoria=&#039;Agre&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;47&#039; where cedula=&#039;7326064&#039;
1455657835	Nombre Apellido (12345678)	Se modificó al profesor <strong>Milton Silva (8046659)</strong>	update persona set cedula=&#039;8046659&#039;, nombre=&#039;Milton&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Silva&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8046659&#039;\n\nupdate profesor set cedula=&#039;8046659&#039;, categoria=&#039;Agre&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;30&#039; where cedula=&#039;8046659&#039;
1455657869	Nombre Apellido (12345678)	Se modificó al profesor <strong>Pablo Silgueiro (15142314)</strong>	update persona set cedula=&#039;15142314&#039;, nombre=&#039;Pablo&#039;, &quot;segundoNombre&quot;=&#039;Martin&#039;, apellido=&#039;Silgueiro&#039;, &quot;segundoApellido&quot;=&#039;Soto&#039;, sexo=&#039;m&#039;, correo=&#039;pablosilgueiro@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04267549299&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;15142314&#039;\n\nupdate profesor set cedula=&#039;15142314&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;47&#039; where cedula=&#039;15142314&#039;
1455657930	Nombre Apellido (12345678)	Se modificó al profesor <strong>Yasmelia Zerpa (10102108)</strong>	update persona set cedula=&#039;10102108&#039;, nombre=&#039;Yasmelia&#039;, &quot;segundoNombre&quot;=&#039;Del Carmen&#039;, apellido=&#039;Zerpa&#039;, &quot;segundoApellido&quot;=&#039;Vielma&#039;, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;10102108&#039;\n\nupdate profesor set cedula=&#039;10102108&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;47&#039; where cedula=&#039;10102108&#039;
1455658014	Nombre Apellido (12345678)	Se modificó al profesor <strong>Carlos Zordan (9478674)</strong>	update persona set cedula=&#039;9478674&#039;, nombre=&#039;Carlos&#039;, &quot;segundoNombre&quot;=&#039;Antonio&#039;, apellido=&#039;Zordan&#039;, &quot;segundoApellido&quot;=&#039;Zordan&#039;, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;9478674&#039;\n\nupdate profesor set cedula=&#039;9478674&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;47&#039; where cedula=&#039;9478674&#039;
1455658113	Nombre Apellido (12345678)	Se modificó al profesor <strong>Hebert Avendaño (15516303)</strong>	update persona set cedula=&#039;15516303&#039;, nombre=&#039;Hebert&#039;, &quot;segundoNombre&quot;=&#039;Joel&#039;, apellido=&#039;Avendaño&#039;, &quot;segundoApellido&quot;=&#039;La Cruz&#039;, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;15516303&#039;\n\nupdate profesor set cedula=&#039;15516303&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TCv&#039;, profesion=&#039;38&#039; where cedula=&#039;15516303&#039;
1455658152	Nombre Apellido (12345678)	Se modificó al profesor <strong>Omar Balza (10718091)</strong>	update persona set cedula=&#039;10718091&#039;, nombre=&#039;Omar&#039;, &quot;segundoNombre&quot;=&#039;Alonzo&#039;, apellido=&#039;Balza&#039;, &quot;segundoApellido&quot;=&#039;Carrillo&#039;, sexo=&#039;m&#039;, correo=&#039;balzaomar@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0424-7728962&#039;, &quot;telefonoFijo&quot;=&#039;0274-4166125&#039; where cedula=&#039;10718091&#039;\n\nupdate profesor set cedula=&#039;10718091&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TCv&#039;, profesion=&#039;47&#039; where cedula=&#039;10718091&#039;
1456498045	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Agroalimentación Ejido PNFAg-2-PRO.pdf</strong>	No SQL
1455658278	Nombre Apellido (12345678)	Se modificó al profesor <strong>Guillermo Bustos (84570604)</strong>	update persona set cedula=&#039;84570604&#039;, nombre=&#039;Guillermo&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Bustos&#039;, &quot;segundoApellido&quot;=&#039;Prada&#039;, sexo=&#039;m&#039;, correo=&#039;guillermobustopradam@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04261529464&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;84570604&#039;\n\nupdate profesor set cedula=&#039;84570604&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;37&#039; where cedula=&#039;84570604&#039;
1455658312	Nombre Apellido (12345678)	Se modificó al profesor <strong>Guillermo Bustos (84570604)</strong>	update persona set cedula=&#039;84570604&#039;, nombre=&#039;Guillermo&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Bustos&#039;, &quot;segundoApellido&quot;=&#039;Prada&#039;, sexo=&#039;m&#039;, correo=&#039;guillermobustopradam@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04261529464&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;84570604&#039;\n\nupdate profesor set cedula=&#039;84570604&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;37&#039; where cedula=&#039;84570604&#039;
1455658398	Nombre Apellido (12345678)	Se modificó al profesor <strong>Juan Bracho (19440209)</strong>	update persona set cedula=&#039;19440209&#039;, nombre=&#039;Juan&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Bracho&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;19440209&#039;\n\nupdate profesor set cedula=&#039;19440209&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;37&#039; where cedula=&#039;19440209&#039;
1455658464	Nombre Apellido (12345678)	Se modificó al profesor <strong>Thais Bracho (7824945)</strong>	update persona set cedula=&#039;7824945&#039;, nombre=&#039;Thais&#039;, &quot;segundoNombre&quot;=&#039;Coromoto&#039;, apellido=&#039;Bracho&#039;, &quot;segundoApellido&quot;=&#039;Urdaneta&#039;, sexo=&#039;f&#039;, correo=&#039;thaisbracho49@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0414-7172393&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;7824945&#039;\n\nupdate profesor set cedula=&#039;7824945&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;47&#039; where cedula=&#039;7824945&#039;
1455658533	Nombre Apellido (12345678)	Se agregó la profesión <strong>Ing Prod Agrop</strong>	insert into profesion values(default, &#039;Ing Prod Agrop&#039;)
1455658586	Nombre Apellido (12345678)	Se modificó al profesor <strong>Thais Bracho (7824945)</strong>	update persona set cedula=&#039;7824945&#039;, nombre=&#039;Thais&#039;, &quot;segundoNombre&quot;=&#039;Coromoto&#039;, apellido=&#039;Bracho&#039;, &quot;segundoApellido&quot;=&#039;Urdaneta&#039;, sexo=&#039;f&#039;, correo=&#039;thaisbracho49@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0414-7172393&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;7824945&#039;\n\nupdate profesor set cedula=&#039;7824945&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;53&#039; where cedula=&#039;7824945&#039;
1455658685	Nombre Apellido (12345678)	Se modificó al profesor <strong>Froilan Contreras (3908624)</strong>	update persona set cedula=&#039;3908624&#039;, nombre=&#039;Froilan&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Contreras&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;3908624&#039;\n\nupdate profesor set cedula=&#039;3908624&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;39&#039; where cedula=&#039;3908624&#039;
1455658829	Nombre Apellido (12345678)	Se modificó al profesor <strong>Lisbeth Diaz (9473567)</strong>	update persona set cedula=&#039;9473567&#039;, nombre=&#039;Lisbeth&#039;, &quot;segundoNombre&quot;=&#039;Jane&#039;, apellido=&#039;Diaz&#039;, &quot;segundoApellido&quot;=&#039;De Garcia&#039;, sexo=&#039;f&#039;, correo=&#039;lisbethjane@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;9473567&#039;\n\nupdate profesor set cedula=&#039;9473567&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;47&#039; where cedula=&#039;9473567&#039;
1455658907	Nombre Apellido (12345678)	Se modificó al profesor <strong>Luisana Fonseca (16285988)</strong>	update persona set cedula=&#039;16285988&#039;, nombre=&#039;Luisana&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Fonseca&#039;, &quot;segundoApellido&quot;=&#039;Cadenas&#039;, sexo=&#039;f&#039;, correo=&#039;luisanafonseca12@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;16285988&#039;\n\nupdate profesor set cedula=&#039;16285988&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;50&#039; where cedula=&#039;16285988&#039;
1455659014	Nombre Apellido (12345678)	Se agregó al profesor <strong>Victor Garcia (19592116)</strong>	insert into persona values(&#039;19592116&#039;, &#039;Victor&#039;, null, &#039;Garcia&#039;, null, &#039;m&#039;, &#039;inicialnombreapellido@uptm.edu.ve&#039;, &#039;Sin Asignar&#039;, &#039;0000-0000000&#039;, null)\n\ninsert into profesor values(&#039;19592116&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;TC&#039;, &#039;47&#039;)
1455659119	Nombre Apellido (12345678)	Se agregó al profesor <strong>Adriana Garcia (12779833)</strong>	insert into persona values(&#039;12779833&#039;, &#039;Adriana&#039;, null, &#039;Garcia&#039;, null, &#039;f&#039;, &#039;inicialnombreapellido@uptm.edu.ve&#039;, &#039;Sin Asignar&#039;, &#039;0000-0000000&#039;, null)\n\ninsert into profesor values(&#039;12779833&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;MT&#039;, &#039;37&#039;)
1455659181	Nombre Apellido (12345678)	Se modificó al profesor <strong>Carmen Graterol (5201033)</strong>	update persona set cedula=&#039;5201033&#039;, nombre=&#039;Carmen&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Graterol&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;5201033&#039;\n\nupdate profesor set cedula=&#039;5201033&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;21&#039; where cedula=&#039;5201033&#039;
1455814935	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Oberto Orlando (9501330)</strong>	insert into carga values(default, false, null, &#039;9501330&#039;, &#039;35&#039;, null, &#039;AGPEP442&#039;)
1455748856	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg</strong>	update malla set id=&#039;PNFAg&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg&#039;
1455814936	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T4-t2</strong> al profesor <strong>Oberto Orlando (9501330)</strong>	insert into carga values(default, false, null, &#039;9501330&#039;, &#039;36&#039;, null, &#039;AGPEP442&#039;)
1455659242	Nombre Apellido (12345678)	Se modificó al profesor <strong>Liria Gutierrez (8019784)</strong>	update persona set cedula=&#039;8019784&#039;, nombre=&#039;Liria&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Gutierrez&#039;, &quot;segundoApellido&quot;=&#039;De Rojas&#039;, sexo=&#039;f&#039;, correo=&#039;lirios_gutierrez@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8019784&#039;\n\nupdate profesor set cedula=&#039;8019784&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;23&#039; where cedula=&#039;8019784&#039;
1455659374	Nombre Apellido (12345678)	Se modificó al profesor <strong>Emi Linero (14917541)</strong>	update persona set cedula=&#039;14917541&#039;, nombre=&#039;Emi&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Linero&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;14917541&#039;\n\nupdate profesor set cedula=&#039;14917541&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;23&#039; where cedula=&#039;14917541&#039;
1455659433	Nombre Apellido (12345678)	Se modificó al profesor <strong>Manuel Oliveros (18962414)</strong>	update persona set cedula=&#039;18962414&#039;, nombre=&#039;Manuel&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Oliveros&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;18962414&#039;\n\nupdate profesor set cedula=&#039;18962414&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;37&#039; where cedula=&#039;18962414&#039;
1455659493	Nombre Apellido (12345678)	Se modificó al profesor <strong>Jairo Perez (8022340)</strong>	update persona set cedula=&#039;8022340&#039;, nombre=&#039;Jairo&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Perez&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8022340&#039;\n\nupdate profesor set cedula=&#039;8022340&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TCv&#039;, profesion=&#039;47&#039; where cedula=&#039;8022340&#039;
1455659591	Nombre Apellido (12345678)	Se modificó al profesor <strong>Henry Porras (4589713)</strong>	update persona set cedula=&#039;4589713&#039;, nombre=&#039;Henry&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Porras&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;4589713&#039;\n\nupdate profesor set cedula=&#039;4589713&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;23&#039; where cedula=&#039;4589713&#039;
1455659625	Nombre Apellido (12345678)	Se modificó al profesor <strong>Lisbeth Rivas (13524820)</strong>	update persona set cedula=&#039;13524820&#039;, nombre=&#039;Lisbeth&#039;, &quot;segundoNombre&quot;=&#039;Fabiola&#039;, apellido=&#039;Rivas&#039;, &quot;segundoApellido&quot;=&#039;Vielma&#039;, sexo=&#039;f&#039;, correo=&#039;fabiolarivas17777@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04167749828&#039;, &quot;telefonoFijo&quot;=&#039;02742214331&#039; where cedula=&#039;13524820&#039;\n\nupdate profesor set cedula=&#039;13524820&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;8&#039; where cedula=&#039;13524820&#039;
1455659674	Nombre Apellido (12345678)	Se modificó al profesor <strong>Frank Rodriguez (8038611)</strong>	update persona set cedula=&#039;8038611&#039;, nombre=&#039;Frank&#039;, &quot;segundoNombre&quot;=&#039;Reinaldo&#039;, apellido=&#039;Rodriguez&#039;, &quot;segundoApellido&quot;=&#039;Calderon&#039;, sexo=&#039;m&#039;, correo=&#039;srodriguez@inia.gob.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8038611&#039;\n\nupdate profesor set cedula=&#039;8038611&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;6&#039; where cedula=&#039;8038611&#039;
1455659725	Nombre Apellido (12345678)	Se modificó al profesor <strong>José Rodriguez (8013569)</strong>	update persona set cedula=&#039;8013569&#039;, nombre=&#039;José&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Rodriguez&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8013569&#039;\n\nupdate profesor set cedula=&#039;8013569&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;21&#039; where cedula=&#039;8013569&#039;
1455659796	Nombre Apellido (12345678)	Se modificó al profesor <strong>Jorge Rondon (8023975)</strong>	update persona set cedula=&#039;8023975&#039;, nombre=&#039;Jorge&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Rondon&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8023975&#039;\n\nupdate profesor set cedula=&#039;8023975&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;27&#039; where cedula=&#039;8023975&#039;
1455659832	Nombre Apellido (12345678)	Se modificó al profesor <strong>Sarai Sojo (16964770)</strong>	update persona set cedula=&#039;16964770&#039;, nombre=&#039;Sarai&#039;, &quot;segundoNombre&quot;=&#039;Margarita&#039;, apellido=&#039;Sojo&#039;, &quot;segundoApellido&quot;=&#039;Portillo&#039;, sexo=&#039;f&#039;, correo=&#039;sarfer60@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04147425566&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;16964770&#039;\n\nupdate profesor set cedula=&#039;16964770&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;23&#039; where cedula=&#039;16964770&#039;
1455814793	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Gonzalez Pedro (8034300)</strong>	insert into carga values(default, false, null, &#039;8034300&#039;, &#039;35&#039;, null, &#039;AGECE442&#039;)
1455814794	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T4-t2</strong> al profesor <strong>Gonzalez Pedro (8034300)</strong>	insert into carga values(default, false, null, &#039;8034300&#039;, &#039;36&#039;, null, &#039;AGECE442&#039;)
1455659860	Nombre Apellido (12345678)	Se modificó al profesor <strong>Martha Triana (11462979)</strong>	update persona set cedula=&#039;11462979&#039;, nombre=&#039;Martha&#039;, &quot;segundoNombre&quot;=&#039;Ivonne&#039;, apellido=&#039;Triana&#039;, &quot;segundoApellido&quot;=&#039;Vargas&#039;, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04247145086&#039;, &quot;telefonoFijo&quot;=&#039;02742715952&#039; where cedula=&#039;11462979&#039;\n\nupdate profesor set cedula=&#039;11462979&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;40&#039; where cedula=&#039;11462979&#039;
1456498048	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Agroalimentación Ejido PNFAg-2.pdf</strong>	No SQL
1455659892	Nombre Apellido (12345678)	Se modificó al profesor <strong>Johan Zerpa (14917365)</strong>	update persona set cedula=&#039;14917365&#039;, nombre=&#039;Johan&#039;, &quot;segundoNombre&quot;=&#039;Alejandro&#039;, apellido=&#039;Zerpa&#039;, &quot;segundoApellido&quot;=&#039;Torres&#039;, sexo=&#039;m&#039;, correo=&#039;jazt23@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0426-7730348&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;14917365&#039;\n\nupdate profesor set cedula=&#039;14917365&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;23&#039; where cedula=&#039;14917365&#039;
1455714961	Nombre Apellido (12345678)	Se modificó la profesión <strong>Ing Prod Agrop</strong>	update profesion set nombre=&#039;Ing. en Producción Agropecuaria&#039; where nombre=&#039;Ing Prod Agrop&#039;
1455715286	Nombre Apellido (12345678)	Se creó el respaldo <strong>2016-02-17_08-51-26.sql</strong>	No SQL
1455745412	Nombre Apellido (12345678)	Se modificó la carrera <strong>PNF Agroalimentación</strong>	update carrera set id=&#039;01&#039;, nombre=&#039;PNF Agroalimentación&#039;, &quot;idArea&quot;=&#039;3&#039; where id=&#039;01&#039;
1455746092	Nombre Apellido (12345678)	Se agregó la malla <strong>PNFAg</strong>	insert into malla values(&#039;PNFAg&#039;, &#039;2016-02-17&#039;) returning id
1455746566	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg</strong>	update malla set id=&#039;PNFAg&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg&#039;
1455747133	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg</strong>	update malla set id=&#039;PNFAg&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg&#039;
1455747730	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg</strong>	update malla set id=&#039;PNFAg&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg&#039;
1455747942	Nombre Apellido (12345678)	Se activó el nuevo periodo <strong>2015-B</strong>	insert into periodo values(default, &#039;2015-B&#039;, &#039;2016-02-17&#039;, &#039;2016-02-21&#039;, &#039;p&#039;, &#039;8&#039;)\n\ninsert into periodo values(default, &#039;2015-B&#039;, &#039;2015-05-18&#039;, &#039;2015-10-03&#039;, &#039;a&#039;, &#039;8&#039;)
1455747943	Nombre Apellido (12345678)	Se activó el nuevo periodo <strong>2015-B</strong>	insert into periodo values(default, &#039;2015-B&#039;, &#039;2016-02-17&#039;, &#039;2016-02-21&#039;, &#039;p&#039;, &#039;9&#039;)\n\ninsert into periodo values(default, &#039;2015-B&#039;, &#039;2015-05-18&#039;, &#039;2015-10-03&#039;, &#039;a&#039;, &#039;9&#039;)
1455748126	Nombre Apellido (12345678)	Se agregó la malla <strong>PNFAg-2</strong>	insert into malla values(&#039;PNFAg-2&#039;, &#039;2016-02-17&#039;) returning id
1455748261	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T3-t3</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;9&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T3-t3&#039;)
1455748279	Nombre Apellido (12345678)	Se agregó la sección <strong>B</strong> del <strong>T3-t3</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;B&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;9&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T3-t3&#039;)
1455748336	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T4-t2</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;9&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T4-t2&#039;)
1455748350	Nombre Apellido (12345678)	Se agregó la sección <strong>B</strong> del <strong>T4-t2</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;B&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;9&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T4-t2&#039;)
1455748666	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Angulo Ana (14131053)</strong>	insert into carga values(default, false, null, &#039;14131053&#039;, &#039;33&#039;, null, &#039;AGSIP342&#039;)
1455748667	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Angulo Ana (14131053)</strong>	insert into carga values(default, false, null, &#039;14131053&#039;, &#039;34&#039;, null, &#039;AGSIP342&#039;)
1455748799	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg-2</strong>	update malla set id=&#039;PNFAg-2&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg-2&#039;
1455748814	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Angulo Ana (14131053)</strong>	insert into carga values(default, false, null, &#039;14131053&#039;, &#039;35&#039;, null, &#039;AGSCSNI442&#039;)
1455748836	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg</strong>	update malla set id=&#039;PNFAg&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg&#039;
1455815058	Nombre Apellido (12345678)	Se desasignó la sección <strong>B</strong> del <strong>T3-t3</strong> del profesor <strong>Hollo Simón (9081546)</strong>	delete from carga where id=&#039;223&#039;
1455815096	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Hollo Simón (9081546)</strong>. Suple <strong>Bracho Thais (7824945)</strong>	insert into carga values(default, false, null, &#039;9081546&#039;, &#039;34&#039;, 7824945, &#039;AGPFIII3166&#039;)
1455815169	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Pernia Ramses (8039463)</strong>	insert into carga values(default, false, null, &#039;8039463&#039;, &#039;33&#039;, null, &#039;AGPSLC342&#039;)
1455815170	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Pernia Ramses (8039463)</strong>	insert into carga values(default, false, null, &#039;8039463&#039;, &#039;34&#039;, null, &#039;AGPSLC342&#039;)
1455815250	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Peña Aida (8013671)</strong>	insert into carga values(default, false, null, &#039;8013671&#039;, &#039;35&#039;, null, &#039;AGPFIV4166&#039;)
1455815287	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T4-t2</strong> al profesor <strong>Riera Ramon (7326064)</strong>	insert into carga values(default, false, null, &#039;7326064&#039;, &#039;36&#039;, null, &#039;AGPFIV4166&#039;)
1455815341	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Silva Milton (8046659)</strong>	insert into carga values(default, false, null, &#039;8046659&#039;, &#039;33&#039;, null, &#039;AGMSA342&#039;)
1455815342	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Silva Milton (8046659)</strong>	insert into carga values(default, false, null, &#039;8046659&#039;, &#039;34&#039;, null, &#039;AGMSA342&#039;)
1455815383	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Zordan Carlos (9478674)</strong>	insert into carga values(default, false, null, &#039;9478674&#039;, &#039;33&#039;, null, &#039;AGANA342&#039;)
1455815634	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Fonseca Luisana (16285988)</strong>	insert into carga values(default, false, null, &#039;16285988&#039;, &#039;33&#039;, null, &#039;AGEPS342&#039;)
1455815635	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Fonseca Luisana (16285988)</strong>	insert into carga values(default, false, null, &#039;16285988&#039;, &#039;34&#039;, null, &#039;AGEPS342&#039;)
1455815682	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Garcia Victor (19592116)</strong>	insert into carga values(default, false, null, &#039;19592116&#039;, &#039;34&#039;, null, &#039;AGANA342&#039;)
1455815787	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T4-t2</strong> al profesor <strong>Graterol Carmen (5201033)</strong>	insert into carga values(default, false, null, &#039;5201033&#039;, &#039;36&#039;, null, &#039;AGSCSNI442&#039;)
1455815866	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Perez Jairo (8022340)</strong>	insert into carga values(default, false, null, &#039;8022340&#039;, &#039;35&#039;, null, &#039;AGECC442&#039;)
1455815867	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T4-t2</strong> al profesor <strong>Perez Jairo (8022340)</strong>	insert into carga values(default, false, null, &#039;8022340&#039;, &#039;36&#039;, null, &#039;AGECC442&#039;)
1455815904	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Porras Henry (4589713)</strong>	insert into carga values(default, false, null, &#039;4589713&#039;, &#039;33&#039;, null, &#039;AGPFIII3166&#039;)
1455816026	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Rodriguez José (8013569)</strong>	insert into carga values(default, false, null, &#039;8013569&#039;, &#039;33&#039;, null, &#039;AGSRD342&#039;)
1455816027	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Rodriguez José (8013569)</strong>	insert into carga values(default, false, null, &#039;8013569&#039;, &#039;34&#039;, null, &#039;AGSRD342&#039;)
1455818061	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg-2</strong>	update malla set id=&#039;PNFAg-2&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg-2&#039;
1455818571	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg-2</strong>	update malla set id=&#039;PNFAg-2&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg-2&#039;
1455823151	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T1-t1</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;10&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-t1&#039;)
1455823180	Nombre Apellido (12345678)	Se agregó la sección <strong>B</strong> del <strong>T1-t1</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;B&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;10&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-t1&#039;)
1455824174	Nombre Apellido (12345678)	Se modificó el periodo <strong>2015-B</strong> de <strong>PNF Agroalimentación - Ejido (PNF Trimestral)</strong>	update periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2016-02-17&#039;, &quot;fechaFin&quot;=&#039;2016-02-21&#039; where id=&#039;2015-B&#039; and tipo=&#039;p&#039; and &quot;idECS&quot;=&#039;8&#039;\n\nupdate periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2015-05-18&#039;, &quot;fechaFin&quot;=&#039;2016-02-18&#039; where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=&#039;8&#039;
1455832688	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Oliveros Manuel (5561396)</strong>	insert into carga values(default, false, null, &#039;5561396&#039;, &#039;40&#039;, null, &#039;AGPRA162&#039;)
1456498051	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Agroalimentación Ejido PNFAg.pdf</strong>	No SQL
1456498234	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Agroalimentación Ejido PNFAg-2.pdf</strong>	No SQL
1455824192	Nombre Apellido (12345678)	Se modificó el periodo <strong>2015-B</strong> de <strong>PNF Agroalimentación - Ejido (Prosecucion)</strong>	update periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2016-02-17&#039;, &quot;fechaFin&quot;=&#039;2016-02-21&#039; where id=&#039;2015-B&#039; and tipo=&#039;p&#039; and &quot;idECS&quot;=&#039;9&#039;\n\nupdate periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2015-05-18&#039;, &quot;fechaFin&quot;=&#039;2016-02-18&#039; where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=&#039;9&#039;
1455824438	Nombre Apellido (12345678)	Se creó el respaldo <strong>2016-02-18_15-10-38.sql</strong>	No SQL
1455825835	Nombre Apellido (12345678)	Se eliminó <strong>37</strong>	delete from &quot;seccion&quot; where &quot;ID&quot;=&#039;37&#039;
1455825842	Nombre Apellido (12345678)	Se eliminó <strong>38</strong>	delete from &quot;seccion&quot; where &quot;ID&quot;=&#039;38&#039;
1455825862	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T1-t1</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, true, &#039;10&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-t1&#039;)
1455825888	Nombre Apellido (12345678)	Se agregó la sección <strong>B</strong> del <strong>T1-t1</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;B&#039;, &#039;d&#039;, &#039;1&#039;, true, &#039;10&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-t1&#039;)
1455825933	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T1-t3</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;10&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-t3&#039;)
1455825952	Nombre Apellido (12345678)	Se agregó la sección <strong>B</strong> del <strong>T1-t3</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;B&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;10&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-t3&#039;)
1455825971	Nombre Apellido (12345678)	Se agregó la sección <strong>C</strong> del <strong>T1-t3</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;C&#039;, &#039;d&#039;, &#039;1&#039;, true, &#039;10&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-t3&#039;)
1455826011	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T2-t3</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;10&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T2-t3&#039;)
1455826151	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T4-t1</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;10&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T4-t1&#039;)
1455827272	Nombre Apellido (12345678)	Se agregó la sección <strong>R</strong> del <strong>T4-t1</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;R&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;10&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T4-t1&#039;)
1455827278	Nombre Apellido (12345678)	Se eliminó <strong>45</strong>	delete from &quot;seccion&quot; where &quot;ID&quot;=&#039;45&#039;
1455827348	Nombre Apellido (12345678)	Se agregó la sección <strong>R</strong> del <strong>T1-t2</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;R&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;10&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-t2&#039;)
1455829285	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg-2</strong>	update malla set id=&#039;PNFAg-2&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg-2&#039;
1455829405	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg</strong>	update malla set id=&#039;PNFAg&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg&#039;
1455829725	Nombre Apellido (12345678)	Se eliminó <strong>46</strong>	delete from &quot;seccion&quot; where &quot;ID&quot;=&#039;46&#039;
1455832961	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Peña Aida (8013671)</strong>	insert into carga values(default, false, null, &#039;8013671&#039;, &#039;40&#039;, null, &#039;AGBSD162&#039;)
1456498142	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Agroalimentación Ejido PNFAg-2.pdf</strong>	No SQL
1455829747	Nombre Apellido (12345678)	Se agregó la sección <strong>R</strong> del <strong>T4-t1</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;R&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;9&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T4-t1&#039;)
1455830959	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Bouqet Zaira (3062497)</strong>. Suple <strong>Oliveros Manuel (18962414)</strong>	insert into carga values(default, false, null, &#039;3062497&#039;, &#039;41&#039;, 18962414, &#039;AGPFI1126&#039;)
1455831244	Nombre Apellido (12345678)	Se asignó la sección <strong>R</strong> del <strong>T4-t1</strong> al profesor <strong>Briceño Esteban (5466076)</strong>	insert into carga values(default, false, null, &#039;5466076&#039;, &#039;48&#039;, null, &#039;AGMAP442&#039;)
1455831272	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Briceño Esteban (5466076)</strong>	insert into carga values(default, false, null, &#039;5466076&#039;, &#039;44&#039;, null, &#039;AGDREV242&#039;)
1455831574	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Del Cura Federico (13098948)</strong>	insert into carga values(default, false, null, &#039;13098948&#039;, &#039;44&#039;, null, &#039;AGAGC242&#039;)
1455831723	Nombre Apellido (12345678)	Se modificó al profesor <strong>Simón Hoyo (9081546)</strong>	update persona set cedula=&#039;9081546&#039;, nombre=&#039;Simón&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Hoyo&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;9081546&#039;\n\nupdate profesor set cedula=&#039;9081546&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;21&#039; where cedula=&#039;9081546&#039;
1455831973	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Del Cura Federico (13098948)</strong>	insert into carga values(default, false, null, &#039;13098948&#039;, &#039;39&#039;, null, &#039;AGBSD162&#039;)
1455832291	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Hoyo Simón (9081546)</strong>. Suple <strong>Bracho Thais (7824945)</strong>	insert into carga values(default, false, null, &#039;9081546&#039;, &#039;39&#039;, 7824945, &#039;AGPFI1126&#039;)
1455832339	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Marquez Yimi (13649962)</strong>	insert into carga values(default, false, null, &#039;13649962&#039;, &#039;41&#039;, null, &#039;AGPLA162&#039;)
1455832340	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Marquez Yimi (13649962)</strong>	insert into carga values(default, false, null, &#039;13649962&#039;, &#039;42&#039;, null, &#039;AGPLA162&#039;)
1455832341	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Marquez Yimi (13649962)</strong>	insert into carga values(default, false, null, &#039;13649962&#039;, &#039;43&#039;, null, &#039;AGPLA162&#039;)
1455832471	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Marquez Yimi (13649962)</strong>	insert into carga values(default, false, null, &#039;13649962&#039;, &#039;44&#039;, null, &#039;AGAGE242&#039;)
1455832480	Nombre Apellido (12345678)	Se desasignó la sección <strong>A</strong> del <strong>T2-t3</strong> del profesor <strong>Marquez Yimi (13649962)</strong>	delete from carga where id=&#039;252&#039;
1455832504	Nombre Apellido (12345678)	Se desasignó la sección <strong>C</strong> del <strong>T1-t3</strong> del profesor <strong>Marquez Yimi (13649962)</strong>	delete from carga where id=&#039;251&#039;
1455832507	Nombre Apellido (12345678)	Se desasignó la sección <strong>B</strong> del <strong>T1-t3</strong> del profesor <strong>Marquez Yimi (13649962)</strong>	delete from carga where id=&#039;250&#039;
1455832511	Nombre Apellido (12345678)	Se desasignó la sección <strong>A</strong> del <strong>T1-t3</strong> del profesor <strong>Marquez Yimi (13649962)</strong>	delete from carga where id=&#039;249&#039;
1455832539	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Marquez Yimi (13649962)</strong>. Suple <strong>Rodriguez Frank (8038611)</strong>	insert into carga values(default, false, null, &#039;13649962&#039;, &#039;41&#039;, 8038611, &#039;AGPLA162&#039;)
1455832540	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Marquez Yimi (13649962)</strong>. Suple <strong>Rodriguez Frank (8038611)</strong>	insert into carga values(default, false, null, &#039;13649962&#039;, &#039;42&#039;, 8038611, &#039;AGPLA162&#039;)
1455832541	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Marquez Yimi (13649962)</strong>. Suple <strong>Rodriguez Frank (8038611)</strong>	insert into carga values(default, false, null, &#039;13649962&#039;, &#039;43&#039;, 8038611, &#039;AGPLA162&#039;)
1455832558	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Marquez Yimi (13649962)</strong>. Suple <strong>Linero Emi (14917541)</strong>	insert into carga values(default, false, null, &#039;13649962&#039;, &#039;44&#039;, 14917541, &#039;AGAGE242&#039;)
1455832583	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Milla Jose (10720364)</strong>	insert into carga values(default, false, null, &#039;10720364&#039;, &#039;39&#039;, null, &#039;AGCGA16&#039;)
1455832584	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Milla Jose (10720364)</strong>	insert into carga values(default, false, null, &#039;10720364&#039;, &#039;40&#039;, null, &#039;AGCGA16&#039;)
1455832610	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Oberto Orlando (9501330)</strong>	insert into carga values(default, false, null, &#039;9501330&#039;, &#039;39&#039;, null, &#039;AGSALC14&#039;)
1455832664	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Oliveros Manuel (5561396)</strong>	insert into carga values(default, false, null, &#039;5561396&#039;, &#039;44&#039;, null, &#039;AGSEA262&#039;)
1455833013	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Riera Ramon (7326064)</strong>. Suple <strong>Garcia Victor (19592116)</strong>	insert into carga values(default, false, null, &#039;7326064&#039;, &#039;43&#039;, 19592116, &#039;AGPFI1126&#039;)
1455833688	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Zerpa Yasmelia (10102108)</strong>	insert into carga values(default, false, null, &#039;10102108&#039;, &#039;40&#039;, null, &#039;AGPFI1126&#039;)
1455833726	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Zordan Carlos (9478674)</strong>	insert into carga values(default, false, null, &#039;9478674&#039;, &#039;42&#039;, null, &#039;AGZFA162&#039;)
1455833748	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Zordan Carlos (9478674)</strong>	insert into carga values(default, false, null, &#039;9478674&#039;, &#039;44&#039;, null, &#039;AGREA262&#039;)
1455833782	Nombre Apellido (12345678)	Se asignó la sección <strong>R</strong> del <strong>T1-t2</strong> al profesor <strong>Avendaño Hebert (15516303)</strong>	insert into carga values(default, false, null, &#039;15516303&#039;, &#039;47&#039;, null, &#039;AGFIA162&#039;)
1455833808	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Balza Omar (10718091)</strong>	insert into carga values(default, false, null, &#039;10718091&#039;, &#039;41&#039;, null, &#039;AGMEI162&#039;)
1455833809	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Balza Omar (10718091)</strong>	insert into carga values(default, false, null, &#039;10718091&#039;, &#039;42&#039;, null, &#039;AGMEI162&#039;)
1455833810	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Balza Omar (10718091)</strong>	insert into carga values(default, false, null, &#039;10718091&#039;, &#039;43&#039;, null, &#039;AGMEI162&#039;)
1455833967	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg-2</strong>	update malla set id=&#039;PNFAg-2&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg-2&#039;
1455834092	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Acreditable Iii</strong>	update &quot;unidadCurricular&quot; set id=&#039;AGACRED003&#039;, nombre=&#039;Acreditable III&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;01&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;AGACRED003&#039;
1455834102	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Acreditable I</strong>	update &quot;unidadCurricular&quot; set id=&#039;AGACRED001&#039;, nombre=&#039;Acreditable I&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;01&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;AGACRED001&#039;
1455834118	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Acreditable Iv</strong>	update &quot;unidadCurricular&quot; set id=&#039;AGACRED004&#039;, nombre=&#039;Acreditable IV&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;01&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;AGACRED004&#039;
1455834173	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Acreditable II</strong>	insert into &quot;unidadCurricular&quot; values(&#039;AGACRED002&#039;, &#039;Acreditable II&#039;, true, &#039;01&#039;, &#039;1&#039;)
1455834461	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg</strong>	update malla set id=&#039;PNFAg&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg&#039;
1455834531	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg-2</strong>	update malla set id=&#039;PNFAg-2&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg-2&#039;
1455834604	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Bustos Guillermo (84570604)</strong>	insert into carga values(default, false, &#039;Investigación e Innovación Participativa Comunitaria&#039;, &#039;84570604&#039;, &#039;39&#039;, null, &#039;AGACRED001&#039;)
1455834605	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Bustos Guillermo (84570604)</strong>	insert into carga values(default, false, &#039;Investigación e Innovación Participativa Comunitaria&#039;, &#039;84570604&#039;, &#039;40&#039;, null, &#039;AGACRED001&#039;)
1455834633	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Bustos Guillermo (84570604)</strong>	insert into carga values(default, false, &#039;Investigación e Innovación Participativa Comunitaria&#039;, &#039;84570604&#039;, &#039;41&#039;, null, &#039;AGACRED001&#039;)
1455834789	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Bracho Juan (19440209)</strong>	insert into carga values(default, true, null, &#039;19440209&#039;, &#039;39&#039;, null, &#039;AGPRB162&#039;)
1455834790	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Bracho Juan (19440209)</strong>	insert into carga values(default, true, null, &#039;19440209&#039;, &#039;40&#039;, null, &#039;AGPRB162&#039;)
1455835291	Nombre Apellido (12345678)	Se asignó la sección <strong>R</strong> del <strong>T1-t2</strong> al profesor <strong>Contreras Froilan (3908624)</strong>	insert into carga values(default, true, null, &#039;3908624&#039;, &#039;47&#039;, null, &#039;AGQGA16&#039;)
1455835375	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Contreras Froilan (3908624)</strong>	insert into carga values(default, false, null, &#039;3908624&#039;, &#039;42&#039;, null, &#039;AGPRBQ162&#039;)
1455835376	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Contreras Froilan (3908624)</strong>	insert into carga values(default, true, null, &#039;3908624&#039;, &#039;43&#039;, null, &#039;AGPRBQ162&#039;)
1455835496	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Garcia Adriana (12779833)</strong>	insert into carga values(default, false, null, &#039;12779833&#039;, &#039;41&#039;, null, &#039;AGZFA162&#039;)
1455835497	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Garcia Adriana (12779833)</strong>	insert into carga values(default, false, null, &#039;12779833&#039;, &#039;43&#039;, null, &#039;AGZFA162&#039;)
1455835534	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Gutierrez Liria (8019784)</strong>	insert into carga values(default, false, &#039;Investigación e Innovación Participativa Comunitaria&#039;, &#039;8019784&#039;, &#039;42&#039;, null, &#039;AGACRED001&#039;)
1455835535	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Gutierrez Liria (8019784)</strong>	insert into carga values(default, false, &#039;Investigación e Innovación Participativa Comunitaria&#039;, &#039;8019784&#039;, &#039;43&#039;, null, &#039;AGACRED001&#039;)
1455835639	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Linero Emi (14917541)</strong>	insert into carga values(default, false, null, &#039;14917541&#039;, &#039;40&#039;, null, &#039;AGSALC14&#039;)
1455835690	Nombre Apellido (12345678)	Se asignó la sección <strong>R</strong> del <strong>T1-t2</strong> al profesor <strong>Linero Emi (14917541)</strong>	insert into carga values(default, false, null, &#039;14917541&#039;, &#039;47&#039;, null, &#039;AGMAA16&#039;)
1455835882	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Porras Henry (4589713)</strong>	insert into carga values(default, false, null, &#039;4589713&#039;, &#039;39&#039;, null, &#039;AGPRA162&#039;)
1455835912	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Porras Henry (4589713)</strong>	insert into carga values(default, false, null, &#039;4589713&#039;, &#039;41&#039;, null, &#039;AGPRBQ162&#039;)
1455835989	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Zerpa Johan (14917365)</strong>	insert into carga values(default, false, null, &#039;14917365&#039;, &#039;44&#039;, null, &#039;AGTOG262&#039;)
1455836024	Nombre Apellido (12345678)	Se creó el respaldo <strong>2016-02-18_18-23-44.sql</strong>	No SQL
1456177461	Nombre Apellido (12345678)	Se modificó al profesor <strong>Ana Angulo (14131053)</strong>	update persona set cedula=&#039;14131053&#039;, nombre=&#039;Ana&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Angulo&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;14131053&#039;\n\nupdate profesor set cedula=&#039;14131053&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;47&#039; where cedula=&#039;14131053&#039;
1456177514	Nombre Apellido (12345678)	Se creó el respaldo <strong>2016-02-22_17-15-13.sql</strong>	No SQL
1456261517	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Administración Ejido PNFA-2014-PRO.pdf</strong>	No SQL
1456261618	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Administración Ejido PNFA-2014.pdf</strong>	No SQL
1456262278	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Agroalimentación Ejido PNFAg-2.pdf</strong>	No SQL
1456262304	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Administración Ejido PNFA-2014-PRO.pdf</strong>	No SQL
1456338952	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg-2</strong>	update malla set id=&#039;PNFAg-2&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg-2&#039;
1456338979	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Matematica</strong>	update &quot;unidadCurricular&quot; set id=&#039;PIMT005&#039;, nombre=&#039;Matemática I&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;01&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;PIMT005&#039;
1456339298	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Taller de Inducción</strong>	insert into &quot;unidadCurricular&quot; values(&#039;AGMAI142&#039;, &#039;Taller de Inducción&#039;, false, &#039;01&#039;, &#039;2&#039;)
1456339353	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Física Aplicada</strong>	insert into &quot;unidadCurricular&quot; values(&#039;AGMAF142&#039;, &#039;Física Aplicada&#039;, false, &#039;01&#039;, &#039;2&#039;)
1456339465	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Introducción a la Universidad Politecnica y PNF</strong>	insert into &quot;unidadCurricular&quot; values(&#039;AGMAP142&#039;, &#039;Introducción a la Universidad Politecnica y PNF&#039;, false, &#039;01&#039;, &#039;2&#039;)
1456339521	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg-2</strong>	update malla set id=&#039;PNFAg-2&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg-2&#039;
1456340450	Nombre Apellido (12345678)	Se agregó la malla <strong>PNFAg-2-PRO</strong>	insert into malla values(&#039;PNFAg-2-PRO&#039;, &#039;2016-02-24&#039;) returning id
1456340746	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg-2-PRO</strong>	update malla set id=&#039;PNFAg-2-PRO&#039;, fecha=&#039;2016-02-24&#039; where id=&#039;PNFAg-2-PRO&#039;
1456493564	Nombre Apellido (12345678)	Se creó el respaldo <strong>2016-02-26_09-02-43.sql</strong>	No SQL
1456493607	Nombre Apellido (12345678)	Se modificó el periodo <strong>2015-B</strong> de <strong>PNF Agroalimentación - Ejido (PNF Trimestral)</strong>	update periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2016-02-17&#039;, &quot;fechaFin&quot;=&#039;2016-02-26&#039; where id=&#039;2015-B&#039; and tipo=&#039;p&#039; and &quot;idECS&quot;=&#039;8&#039;\n\nupdate periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2015-05-18&#039;, &quot;fechaFin&quot;=&#039;2016-02-26&#039; where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=&#039;8&#039;
1456493618	Nombre Apellido (12345678)	Se modificó el periodo <strong>2015-B</strong> de <strong>PNF Agroalimentación - Ejido (Prosecucion)</strong>	update periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2016-02-17&#039;, &quot;fechaFin&quot;=&#039;2016-02-26&#039; where id=&#039;2015-B&#039; and tipo=&#039;p&#039; and &quot;idECS&quot;=&#039;9&#039;\n\nupdate periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2015-05-18&#039;, &quot;fechaFin&quot;=&#039;2016-02-26&#039; where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=&#039;9&#039;
1456495760	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Gonzalez Pedro (8034300)</strong>	insert into carga values(default, false, null, &#039;8034300&#039;, &#039;53&#039;, null, &#039;AGECE442&#039;)
1456493631	Nombre Apellido (12345678)	Se modificó el periodo <strong>2015-B</strong> de <strong>PNF Agroalimentación - Ejido (PNF Trimestral)</strong>	update periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2016-02-17&#039;, &quot;fechaFin&quot;=&#039;2016-02-26&#039; where id=&#039;2015-B&#039; and tipo=&#039;p&#039; and &quot;idECS&quot;=&#039;8&#039;\n\nupdate periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2015-05-18&#039;, &quot;fechaFin&quot;=&#039;2016-02-27&#039; where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=&#039;8&#039;
1456496023	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Montilla Jesús (8041985)</strong>. Suple <strong>Graterol Carmen (5201033)</strong>	insert into carga values(default, false, null, &#039;8041985&#039;, &#039;52&#039;, 5201033, &#039;AGPFIII3126&#039;)
1456498160	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Agroalimentación Ejido PNFAg-2.pdf</strong>	No SQL
1456493643	Nombre Apellido (12345678)	Se modificó el periodo <strong>2015-B</strong> de <strong>PNF Agroalimentación - Ejido (PNF Trimestral)</strong>	update periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2016-02-17&#039;, &quot;fechaFin&quot;=&#039;2016-02-26&#039; where id=&#039;2015-B&#039; and tipo=&#039;p&#039; and &quot;idECS&quot;=&#039;8&#039;\n\nupdate periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2015-05-18&#039;, &quot;fechaFin&quot;=&#039;2016-02-26&#039; where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=&#039;8&#039;
1456494423	Nombre Apellido (12345678)	Se agregó la sección <strong>R</strong> del <strong>T0</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;R&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;10&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T0&#039;)
1456494486	Nombre Apellido (12345678)	Se agregó la sección <strong>R</strong> del <strong>TT</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;R&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;11&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;3&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;TT&#039;)
1456494746	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T3-t1</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, true, &#039;11&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;3&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T3-t1&#039;)
1456494881	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T3-t2</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;A&#039;, &#039;n&#039;, &#039;1.5&#039;, false, &#039;11&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;3&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T3-t2&#039;)
1456494926	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T3-t3</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;A&#039;, &#039;n&#039;, &#039;1.5&#039;, false, &#039;11&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;3&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T3-t3&#039;)
1456495014	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T4-t3</strong> en <strong>PNF Agroalimentación</strong>	insert into seccion values(default, &#039;A&#039;, &#039;n&#039;, &#039;1.5&#039;, false, &#039;11&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;3&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T4-t3&#039;)
1456495159	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t1</strong> al profesor <strong>Angulo Ana (14131053)</strong>	insert into carga values(default, true, null, &#039;14131053&#039;, &#039;51&#039;, null, &#039;AGMEI362&#039;)
1456495184	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t3</strong> al profesor <strong>Bouqet Zaira (3062497)</strong>	insert into carga values(default, false, null, &#039;3062497&#039;, &#039;54&#039;, null, &#039;AGECC442&#039;)
1456495193	Nombre Apellido (12345678)	Se desasignó la sección <strong>A</strong> del <strong>T4-t3</strong> del profesor <strong>Bouqet Zaira (3062497)</strong>	delete from carga where id=&#039;289&#039;
1456495262	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t3</strong> al profesor <strong>Bouqet Zaira (3062497)</strong>. Suple <strong>Rondon Jorge (8023975)</strong>	insert into carga values(default, false, null, &#039;3062497&#039;, &#039;54&#039;, 8023975, &#039;AGECC442&#039;)
1456495431	Nombre Apellido (12345678)	Se desasignó la sección <strong>A</strong> del <strong>T2-t3</strong> del profesor <strong>Del Cura Federico (13098948)</strong>	delete from carga where id=&#039;246&#039;
1456495639	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Del Cura Federico (13098948)</strong>. Suple <strong>Paredes Rigoberto (8005159)</strong>	insert into carga values(default, false, null, &#039;13098948&#039;, &#039;44&#039;, 8005159, &#039;AGAGC242&#039;)
1456495677	Nombre Apellido (12345678)	Se desasignó la sección <strong>A</strong> del <strong>T1-t1</strong> del profesor <strong>Del Cura Federico (13098948)</strong>	delete from carga where id=&#039;247&#039;
1456495699	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Del Cura Federico (13098948)</strong>. Suple <strong>Peña Aida (8013671)</strong>	insert into carga values(default, false, null, &#039;13098948&#039;, &#039;39&#039;, 8013671, &#039;AGBSD162&#039;)
1456495882	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Lopez Ivan (7080727)</strong>. Suple <strong>Rivas Lisbeth (13524820)</strong>	insert into carga values(default, false, null, &#039;7080727&#039;, &#039;53&#039;, 13524820, &#039;AGOTA362&#039;)
1456495952	Nombre Apellido (12345678)	Se asignó la sección <strong>R</strong> del <strong>T0</strong> al profesor <strong>Milla Jose (10720364)</strong>	insert into carga values(default, false, null, &#039;10720364&#039;, &#039;49&#039;, null, &#039;PIMT005&#039;)
1456498035	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Administración Ejido PNFA-2010-3.pdf</strong>	No SQL
1456496065	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Montilla Jesús (8041985)</strong>. Suple <strong>Garcia Victor (19592116)</strong>	insert into carga values(default, false, null, &#039;8041985&#039;, &#039;53&#039;, 19592116, &#039;AGSPA262&#039;)
1456496133	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t3</strong> al profesor <strong>Oberto Orlando (9501330)</strong>	insert into carga values(default, false, null, &#039;9501330&#039;, &#039;54&#039;, null, &#039;AGPEP462&#039;)
1456496227	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Oliveros Manuel (5561396)</strong>	insert into carga values(default, false, null, &#039;5561396&#039;, &#039;53&#039;, null, &#039;AGPFIII3126&#039;)
1456496497	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Paredes Rigoberto (8005159)</strong>	insert into carga values(default, false, null, &#039;8005159&#039;, &#039;41&#039;, null, &#039;AGBFV162&#039;)
1456496498	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Paredes Rigoberto (8005159)</strong>	insert into carga values(default, false, null, &#039;8005159&#039;, &#039;42&#039;, null, &#039;AGBFV162&#039;)
1456496499	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Paredes Rigoberto (8005159)</strong>	insert into carga values(default, false, null, &#039;8005159&#039;, &#039;43&#039;, null, &#039;AGBFV162&#039;)
1456496559	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t3</strong> al profesor <strong>Pernia Ramses (8039463)</strong>. Suple <strong>Triana Martha (11462979)</strong>	insert into carga values(default, false, null, &#039;8039463&#039;, &#039;54&#039;, 11462979, &#039;AGPFIV41&#039;)
1456496664	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Silva Milton (8046659)</strong>	insert into carga values(default, false, null, &#039;8046659&#039;, &#039;52&#039;, null, &#039;AGMSA342&#039;)
1456496684	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Silva Milton (8046659)</strong>	insert into carga values(default, false, null, &#039;8046659&#039;, &#039;53&#039;, null, &#039;AGMSA342&#039;)
1456496763	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t1</strong> al profesor <strong>Silgueiro Pablo (15142314)</strong>. Suple <strong>Diaz Lisbeth (9473567)</strong>	insert into carga values(default, false, null, &#039;15142314&#039;, &#039;51&#039;, 9473567, &#039;AGPFIII3126&#039;)
1456496813	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t1</strong> al profesor <strong>Zerpa Yasmelia (10102108)</strong>	insert into carga values(default, false, null, &#039;10102108&#039;, &#039;51&#039;, null, &#039;AGGAE362&#039;)
1456496964	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Zordan Carlos (9478674)</strong>	insert into carga values(default, false, null, &#039;9478674&#039;, &#039;53&#039;, null, &#039;AGSRD362&#039;)
1456497009	Nombre Apellido (12345678)	Se asignó la sección <strong>R</strong> del <strong>TT</strong> al profesor <strong>Avendaño Hebert (15516303)</strong>	insert into carga values(default, false, null, &#039;15516303&#039;, &#039;50&#039;, null, &#039;AGFIAIP&#039;)
1456497104	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Diaz Lisbeth (9473567)</strong>	insert into carga values(default, false, null, &#039;9473567&#039;, &#039;52&#039;, null, &#039;AGGAE362&#039;)
1456497168	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t1</strong> al profesor <strong>Fonseca Luisana (16285988)</strong>	insert into carga values(default, false, null, &#039;16285988&#039;, &#039;51&#039;, null, &#039;AGEPS342&#039;)
1456497309	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Garcia Victor (19592116)</strong>	insert into carga values(default, false, null, &#039;19592116&#039;, &#039;52&#039;, null, &#039;AGSPA262&#039;)
1456497490	Nombre Apellido (12345678)	Se desasignó la sección <strong>A</strong> del <strong>T3-t2</strong> del profesor <strong>Garcia Victor (19592116)</strong>	delete from carga where id=&#039;313&#039;
1456497556	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t1</strong> al profesor <strong>Linero Emi (14917541)</strong>	insert into carga values(default, false, null, &#039;14917541&#039;, &#039;51&#039;, null, &#039;AGETD362&#039;)
1456497600	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t3</strong> al profesor <strong>Oliveros Manuel (18962414)</strong>	insert into carga values(default, false, null, &#039;18962414&#039;, &#039;54&#039;, null, &#039;AGHCA462&#039;)
1456497670	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Rodriguez José (8013569)</strong>	insert into carga values(default, false, null, &#039;8013569&#039;, &#039;52&#039;, null, &#039;AGEPS342&#039;)
1456497832	Nombre Apellido (12345678)	Se modificó al profesor <strong>Sarai Sojo (16964770)</strong>	update persona set cedula=&#039;16964770&#039;, nombre=&#039;Sarai&#039;, &quot;segundoNombre&quot;=&#039;Margarita&#039;, apellido=&#039;Sojo&#039;, &quot;segundoApellido&quot;=&#039;Portillo&#039;, sexo=&#039;f&#039;, correo=&#039;sarfer60@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04147425566&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;16964770&#039;\n\nupdate profesor set cedula=&#039;16964770&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;23&#039; where cedula=&#039;16964770&#039;
1456497868	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t1</strong> al profesor <strong>Sojo Sarai (16964770)</strong>	insert into carga values(default, false, null, &#039;16964770&#039;, &#039;51&#039;, null, &#039;AGANM362&#039;)
1456497884	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Sojo Sarai (16964770)</strong>	insert into carga values(default, false, null, &#039;16964770&#039;, &#039;52&#039;, null, &#039;AGANM362&#039;)
1456497913	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t3</strong> al profesor <strong>Zerpa Johan (14917365)</strong>	insert into carga values(default, false, null, &#039;14917365&#039;, &#039;54&#039;, null, &#039;AGSIP362&#039;)
1456498025	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Administración Ejido PNFA-2014-PRO.pdf</strong>	No SQL
1456498031	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Administración Ejido PNFA-2014.pdf</strong>	No SQL
1456498250	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Agroalimentación Ejido PNFAg.pdf</strong>	No SQL
1456499766	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Agroalimentación Ejido PNFAg-2-PRO.pdf</strong>	No SQL
1456499982	Nombre Apellido (12345678)	Se desasignó la sección <strong>A</strong> del <strong>T1-t3</strong> del profesor <strong>Bouqet Zaira (3062497)</strong>	delete from carga where id=&#039;243&#039;
1456500019	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Silgueiro Pablo (15142314)</strong>	insert into carga values(default, false, null, &#039;15142314&#039;, &#039;41&#039;, null, &#039;AGPFI1126&#039;)
1456500037	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Bouqet Zaira (3062497)</strong>	insert into carga values(default, false, null, &#039;3062497&#039;, &#039;42&#039;, null, &#039;AGPFI1126&#039;)
1456500044	Nombre Apellido (12345678)	Se desasignó la sección <strong>B</strong> del <strong>T1-t3</strong> del profesor <strong>Bouqet Zaira (3062497)</strong>	delete from carga where id=&#039;321&#039;
1456500097	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Bouqet Zaira (3062497)</strong>. Suple <strong>Oliveros Manuel (18962414)</strong>	insert into carga values(default, false, null, &#039;3062497&#039;, &#039;42&#039;, 18962414, &#039;AGPFI1126&#039;)
1456500134	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Agroalimentación Ejido PNFAg-2-PRO.pdf</strong>	No SQL
1456500462	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Agroalimentación Ejido PNFAg-2.pdf</strong>	No SQL
1456501082	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFAg-2</strong>	update malla set id=&#039;PNFAg-2&#039;, fecha=&#039;2016-02-17&#039; where id=&#039;PNFAg-2&#039;
1456501251	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Triana Martha (11462979)</strong>	insert into carga values(default, false, null, &#039;11462979&#039;, &#039;44&#039;, null, &#039;AGPFII2126&#039;)
1456501338	Nombre Apellido (12345678)	Se desasignó la sección <strong>A</strong> del <strong>T3-t3</strong> del profesor <strong>Zordan Carlos (9478674)</strong>	delete from carga where id=&#039;309&#039;
1456501362	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Rodriguez José (8013569)</strong>	insert into carga values(default, false, null, &#039;8013569&#039;, &#039;53&#039;, null, &#039;AGSRD362&#039;)
1456501632	Nombre Apellido (12345678)	Se modificó la sección <strong>A</strong> del <strong>T3-t1</strong> en <strong>PNF Agroalimentación</strong>	update seccion set id=&#039;A&#039;, turno=&#039;n&#039;, multiplicador=&#039;1.5&#039;, grupos=true, &quot;idPeriodo&quot;=(select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;3&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;01&#039; and &quot;idSede&quot;=&#039;3&#039;))), &quot;periodoEstructura&quot;=&#039;T3-t1&#039; where &quot;ID&quot;=&#039;51&#039;
1456504349	Nombre Apellido (12345678)	Se modificó al profesor <strong>Blanca Alviarez (5655983)</strong>	update persona set cedula=&#039;5655983&#039;, nombre=&#039;Blanca&#039;, &quot;segundoNombre&quot;=&#039;Elena&#039;, apellido=&#039;Alviarez&#039;, &quot;segundoApellido&quot;=&#039;De Maldonado&#039;, sexo=&#039;f&#039;, correo=&#039;blancalvi@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04167771000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;5655983&#039;\n\nupdate profesor set cedula=&#039;5655983&#039;, categoria=&#039;Asoc&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;1&#039; where cedula=&#039;5655983&#039;
1456504382	Nombre Apellido (12345678)	Se modificó al profesor <strong>Diony Alviarez (8047120)</strong>	update persona set cedula=&#039;8047120&#039;, nombre=&#039;Diony&#039;, &quot;segundoNombre&quot;=&#039;Ginette&#039;, apellido=&#039;Alviarez&#039;, &quot;segundoApellido&quot;=&#039;Paredes&#039;, sexo=&#039;f&#039;, correo=&#039;gdiony@yahoo.es&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04269770025&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8047120&#039;\n\nupdate profesor set cedula=&#039;8047120&#039;, categoria=&#039;Asoc&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;1&#039; where cedula=&#039;8047120&#039;
1456504536	Nombre Apellido (12345678)	Se modificó al profesor <strong>Nelson Corredor (4484976)</strong>	update persona set cedula=&#039;4484976&#039;, nombre=&#039;Nelson&#039;, &quot;segundoNombre&quot;=&#039;Antonio&#039;, apellido=&#039;Corredor&#039;, &quot;segundoApellido&quot;=&#039;Trejo&#039;, sexo=&#039;m&#039;, correo=&#039;ncorredortrejo@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0424-2442582&#039;, &quot;telefonoFijo&quot;=&#039;0274-0000000&#039; where cedula=&#039;4484976&#039;\n\nupdate profesor set cedula=&#039;4484976&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;22&#039; where cedula=&#039;4484976&#039;
1456504588	Nombre Apellido (12345678)	Se modificó al profesor <strong>Jesus Delgado (7168412)</strong>	update persona set cedula=&#039;7168412&#039;, nombre=&#039;Jesus&#039;, &quot;segundoNombre&quot;=&#039;Antonio&#039;, apellido=&#039;Delgado&#039;, &quot;segundoApellido&quot;=&#039;Mendoza&#039;, sexo=&#039;m&#039;, correo=&#039;jesusdelg1@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04160727928&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;7168412&#039;\n\nupdate profesor set cedula=&#039;7168412&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;20&#039; where cedula=&#039;7168412&#039;
1456922557	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Gonzalez Rodolfo (9499979)</strong>	insert into carga values(default, false, null, &#039;9499979&#039;, &#039;63&#039;, null, &#039;PIPT3&#039;)
1456504618	Nombre Apellido (12345678)	Se modificó al profesor <strong>Anna Dugarte (13966054)</strong>	update persona set cedula=&#039;13966054&#039;, nombre=&#039;Anna&#039;, &quot;segundoNombre&quot;=&#039;Yusmarie&#039;, apellido=&#039;Dugarte&#039;, &quot;segundoApellido&quot;=&#039;Sanchez&#039;, sexo=&#039;f&#039;, correo=&#039;dugartea@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04247026306&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;13966054&#039;\n\nupdate profesor set cedula=&#039;13966054&#039;, categoria=&#039;Agre&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;13966054&#039;
1456506527	Nombre Apellido (12345678)	Se agregó al profesor <strong>Wilbelis Arias (17254684)</strong>	insert into persona values(&#039;17254684&#039;, &#039;Wilbelis&#039;, null, &#039;Arias&#039;, null, &#039;f&#039;, &#039;inicialnombreapellido@uptm.edu.ve&#039;, &#039;Sin Asignar&#039;, &#039;0000-0000000&#039;, null)\n\ninsert into profesor values(&#039;17254684&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;TC&#039;, &#039;15&#039;)
1456504657	Nombre Apellido (12345678)	Se modificó al profesor <strong>Johanna Gomez (14917178)</strong>	update persona set cedula=&#039;14917178&#039;, nombre=&#039;Johanna&#039;, &quot;segundoNombre&quot;=&#039;Yecenia&#039;, apellido=&#039;Gomez&#039;, &quot;segundoApellido&quot;=&#039;Alvarez&#039;, sexo=&#039;f&#039;, correo=&#039;johannna.ga@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04149565557&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;14917178&#039;\n\nupdate profesor set cedula=&#039;14917178&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;15&#039; where cedula=&#039;14917178&#039;
1456504691	Nombre Apellido (12345678)	Se modificó al profesor <strong>Duberlis Gonzalez (10256095)</strong>	update persona set cedula=&#039;10256095&#039;, nombre=&#039;Duberlis&#039;, &quot;segundoNombre&quot;=&#039;Del Valle&#039;, apellido=&#039;Gonzalez&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;duberlisg@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04141790063&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;10256095&#039;\n\nupdate profesor set cedula=&#039;10256095&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;10256095&#039;
1456504785	Nombre Apellido (12345678)	Se modificó al profesor <strong>Rodolfo Gonzalez (9499979)</strong>	update persona set cedula=&#039;9499979&#039;, nombre=&#039;Rodolfo&#039;, &quot;segundoNombre&quot;=&#039;Jose&#039;, apellido=&#039;Gonzalez&#039;, &quot;segundoApellido&quot;=&#039;Gomez&#039;, sexo=&#039;m&#039;, correo=&#039;rodolfogonzalezgomez@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04265770067&#039;, &quot;telefonoFijo&quot;=&#039;02742448880&#039; where cedula=&#039;9499979&#039;\n\nupdate profesor set cedula=&#039;9499979&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;9499979&#039;
1456504810	Nombre Apellido (12345678)	Se modificó al profesor <strong>Solange Leal (12722185)</strong>	update persona set cedula=&#039;12722185&#039;, nombre=&#039;Solange&#039;, &quot;segundoNombre&quot;=&#039;Aniree&#039;, apellido=&#039;Leal&#039;, &quot;segundoApellido&quot;=&#039;Leal&#039;, sexo=&#039;f&#039;, correo=&#039;solangeleal@yahoo.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0416-2755134&#039;, &quot;telefonoFijo&quot;=&#039;0274-2623282&#039; where cedula=&#039;12722185&#039;\n\nupdate profesor set cedula=&#039;12722185&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;12722185&#039;
1456504843	Nombre Apellido (12345678)	Se modificó al profesor <strong>Ana Muñoz (4491973)</strong>	update persona set cedula=&#039;4491973&#039;, nombre=&#039;Ana&#039;, &quot;segundoNombre&quot;=&#039;Celina&#039;, apellido=&#039;Muñoz&#039;, &quot;segundoApellido&quot;=&#039;Garcia&#039;, sexo=&#039;f&#039;, correo=&#039;anamunozuniversidad@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04147447472&#039;, &quot;telefonoFijo&quot;=&#039;02742637323&#039; where cedula=&#039;4491973&#039;\n\nupdate profesor set cedula=&#039;4491973&#039;, categoria=&#039;Agre&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;4491973&#039;
1456505002	Nombre Apellido (12345678)	Se modificó al profesor <strong>Judith Rodriguez (8027793)</strong>	update persona set cedula=&#039;8027793&#039;, nombre=&#039;Judith&#039;, &quot;segundoNombre&quot;=&#039;Esperanza&#039;, apellido=&#039;Rodriguez&#039;, &quot;segundoApellido&quot;=&#039;Rivero&#039;, sexo=&#039;f&#039;, correo=&#039;rodriguez.judith593@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04269287208&#039;, &quot;telefonoFijo&quot;=&#039;02744172051&#039; where cedula=&#039;8027793&#039;\n\nupdate profesor set cedula=&#039;8027793&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;20&#039; where cedula=&#039;8027793&#039;
1456505043	Nombre Apellido (12345678)	Se modificó al profesor <strong>Jesus Romero (10898072)</strong>	update persona set cedula=&#039;10898072&#039;, nombre=&#039;Jesus&#039;, &quot;segundoNombre&quot;=&#039;Alber&#039;, apellido=&#039;Romero&#039;, &quot;segundoApellido&quot;=&#039;Cubillos&#039;, sexo=&#039;m&#039;, correo=&#039;alber_romero@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=&#039;02747893689&#039; where cedula=&#039;10898072&#039;\n\nupdate profesor set cedula=&#039;10898072&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;1&#039; where cedula=&#039;10898072&#039;
1456505114	Nombre Apellido (12345678)	Se modificó al profesor <strong>Adolfo Romero (6953950)</strong>	update persona set cedula=&#039;6953950&#039;, nombre=&#039;Adolfo&#039;, &quot;segundoNombre&quot;=&#039;Jose&#039;, apellido=&#039;Romero&#039;, &quot;segundoApellido&quot;=&#039;Gonzalez&#039;, sexo=&#039;m&#039;, correo=&#039;adrome67@yahoo.es&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04268808212&#039;, &quot;telefonoFijo&quot;=&#039;02744147257&#039; where cedula=&#039;6953950&#039;\n\nupdate profesor set cedula=&#039;6953950&#039;, categoria=&#039;Asoc&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;15&#039; where cedula=&#039;6953950&#039;
1456505163	Nombre Apellido (12345678)	Se modificó al profesor <strong>Edgar Rosales (11960173)</strong>	update persona set cedula=&#039;11960173&#039;, nombre=&#039;Edgar&#039;, &quot;segundoNombre&quot;=&#039;Alexander&#039;, apellido=&#039;Rosales&#039;, &quot;segundoApellido&quot;=&#039;Rubio&#039;, sexo=&#039;m&#039;, correo=&#039;edwsalex@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04265728277&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;11960173&#039;\n\nupdate profesor set cedula=&#039;11960173&#039;, categoria=&#039;Agre&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;1&#039; where cedula=&#039;11960173&#039;
1456922558	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Gonzalez Rodolfo (9499979)</strong>	insert into carga values(default, false, null, &#039;9499979&#039;, &#039;64&#039;, null, &#039;PIPT3&#039;)
1456505239	Nombre Apellido (12345678)	Se modificó al profesor <strong>Monica Rosciano (11303172)</strong>	update persona set cedula=&#039;11303172&#039;, nombre=&#039;Monica&#039;, &quot;segundoNombre&quot;=&#039;Aurora&#039;, apellido=&#039;Rosciano&#039;, &quot;segundoApellido&quot;=&#039;Tolosa&#039;, sexo=&#039;f&#039;, correo=&#039;monicarosciano23@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;11303172&#039;\n\nupdate profesor set cedula=&#039;11303172&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;11303172&#039;
1456505909	Nombre Apellido (12345678)	Se modificó al profesor <strong>Darwin Pernia (13524109)</strong>	update persona set cedula=&#039;13524109&#039;, nombre=&#039;Darwin&#039;, &quot;segundoNombre&quot;=&#039;Javier&#039;, apellido=&#039;Pernia&#039;, &quot;segundoApellido&quot;=&#039;Rodriguez&#039;, sexo=&#039;m&#039;, correo=&#039;darwinpernia@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04147175016&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;13524109&#039;\n\nupdate profesor set cedula=&#039;13524109&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;13524109&#039;
1456505943	Nombre Apellido (12345678)	Se modificó al profesor <strong>Cristina Sandoval (9389944)</strong>	update persona set cedula=&#039;9389944&#039;, nombre=&#039;Cristina&#039;, &quot;segundoNombre&quot;=&#039;Antonia&#039;, apellido=&#039;Sandoval&#039;, &quot;segundoApellido&quot;=&#039;Briceño&#039;, sexo=&#039;f&#039;, correo=&#039;cristinasandovalb@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04265739493&#039;, &quot;telefonoFijo&quot;=&#039;02742452759&#039; where cedula=&#039;9389944&#039;\n\nupdate profesor set cedula=&#039;9389944&#039;, categoria=&#039;Asoc&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;20&#039; where cedula=&#039;9389944&#039;
1456505977	Nombre Apellido (12345678)	Se modificó al profesor <strong>Yudith Sanchez (8044725)</strong>	update persona set cedula=&#039;8044725&#039;, nombre=&#039;Yudith&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Sanchez&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;yuditsame@yahoo.es&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04247731856&#039;, &quot;telefonoFijo&quot;=&#039;02742446926&#039; where cedula=&#039;8044725&#039;\n\nupdate profesor set cedula=&#039;8044725&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;8044725&#039;
1456506013	Nombre Apellido (12345678)	Se modificó al profesor <strong>Gilbert Santeliz (5239250)</strong>	update persona set cedula=&#039;5239250&#039;, nombre=&#039;Gilbert&#039;, &quot;segundoNombre&quot;=&#039;Arturo&#039;, apellido=&#039;Santeliz&#039;, &quot;segundoApellido&quot;=&#039;Zerpa&#039;, sexo=&#039;m&#039;, correo=&#039;gilbertsanteliz@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04265707388&#039;, &quot;telefonoFijo&quot;=&#039;02742215787&#039; where cedula=&#039;5239250&#039;\n\nupdate profesor set cedula=&#039;5239250&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;5239250&#039;
1456506082	Nombre Apellido (12345678)	Se modificó al profesor <strong>Agni Sarache (11956576)</strong>	update persona set cedula=&#039;11956576&#039;, nombre=&#039;Agni&#039;, &quot;segundoNombre&quot;=&#039;Carolina&#039;, apellido=&#039;Sarache&#039;, &quot;segundoApellido&quot;=&#039;Balza&#039;, sexo=&#039;f&#039;, correo=&#039;carolina_sarache@yahoo.es&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0416-4708970&#039;, &quot;telefonoFijo&quot;=&#039;0274-2664556&#039; where cedula=&#039;11956576&#039;\n\nupdate profesor set cedula=&#039;11956576&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;35&#039; where cedula=&#039;11956576&#039;
1456506159	Nombre Apellido (12345678)	Se modificó al profesor <strong>Zoila Sosa (4489957)</strong>	update persona set cedula=&#039;4489957&#039;, nombre=&#039;Zoila&#039;, &quot;segundoNombre&quot;=&#039;Teresa&#039;, apellido=&#039;Sosa&#039;, &quot;segundoApellido&quot;=&#039;Barrios&#039;, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;4489957&#039;\n\nupdate profesor set cedula=&#039;4489957&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;35&#039; where cedula=&#039;4489957&#039;
1456506189	Nombre Apellido (12345678)	Se modificó al profesor <strong>Nelma Uzcategui (13014569)</strong>	update persona set cedula=&#039;13014569&#039;, nombre=&#039;Nelma&#039;, &quot;segundoNombre&quot;=&#039;Del Valle&#039;, apellido=&#039;Uzcategui&#039;, &quot;segundoApellido&quot;=&#039;De Barreto&#039;, sexo=&#039;f&#039;, correo=&#039;redes.asesoria@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0414-7416984&#039;, &quot;telefonoFijo&quot;=&#039;02742211241&#039; where cedula=&#039;13014569&#039;\n\nupdate profesor set cedula=&#039;13014569&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;13014569&#039;
1456506232	Nombre Apellido (12345678)	Se modificó al profesor <strong>Lorenzo Vasquez (7509507)</strong>	update persona set cedula=&#039;7509507&#039;, nombre=&#039;Lorenzo&#039;, &quot;segundoNombre&quot;=&#039;Antonio&#039;, apellido=&#039;Vasquez&#039;, &quot;segundoApellido&quot;=&#039;Rojas&#039;, sexo=&#039;m&#039;, correo=&#039;natabir@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04147041084&#039;, &quot;telefonoFijo&quot;=&#039;0274-4149979&#039; where cedula=&#039;7509507&#039;\n\nupdate profesor set cedula=&#039;7509507&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;1&#039; where cedula=&#039;7509507&#039;
1456506327	Nombre Apellido (12345678)	Se modificó al profesor <strong>Jerson Zambrano (8029075)</strong>	update persona set cedula=&#039;8029075&#039;, nombre=&#039;Jerson&#039;, &quot;segundoNombre&quot;=&#039;Orlando&#039;, apellido=&#039;Zambrano&#039;, &quot;segundoApellido&quot;=&#039;Guerrero&#039;, sexo=&#039;m&#039;, correo=&#039;jersonzambrano@yahoo.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04265780027&#039;, &quot;telefonoFijo&quot;=&#039;02742444503&#039; where cedula=&#039;8029075&#039;\n\nupdate profesor set cedula=&#039;8029075&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;8029075&#039;
1456506352	Nombre Apellido (12345678)	Se modificó al profesor <strong>Raquel Zambrano (13648603)</strong>	update persona set cedula=&#039;13648603&#039;, nombre=&#039;Raquel&#039;, &quot;segundoNombre&quot;=&#039;Ailyn&#039;, apellido=&#039;Zambrano&#039;, &quot;segundoApellido&quot;=&#039;De Pascarella&#039;, sexo=&#039;f&#039;, correo=&#039;raquelzambrano@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04247202152&#039;, &quot;telefonoFijo&quot;=&#039;02742630043&#039; where cedula=&#039;13648603&#039;\n\nupdate profesor set cedula=&#039;13648603&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;15&#039; where cedula=&#039;13648603&#039;
1456506384	Nombre Apellido (12345678)	Se modificó al profesor <strong>Mervin Marquez (13967486)</strong>	update persona set cedula=&#039;13967486&#039;, nombre=&#039;Mervin&#039;, &quot;segundoNombre&quot;=&#039;Javier&#039;, apellido=&#039;Marquez&#039;, &quot;segundoApellido&quot;=&#039;Quintero&#039;, sexo=&#039;m&#039;, correo=&#039;mervin_marquez@yahoo.es&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0424-7372826&#039;, &quot;telefonoFijo&quot;=&#039;02742215202&#039; where cedula=&#039;13967486&#039;\n\nupdate profesor set cedula=&#039;13967486&#039;, categoria=&#039;Aux&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;5&#039; where cedula=&#039;13967486&#039;
1456506417	Nombre Apellido (12345678)	Se modificó al profesor <strong>Rosaly Mendoza (15296169)</strong>	update persona set cedula=&#039;15296169&#039;, nombre=&#039;Rosaly&#039;, &quot;segundoNombre&quot;=&#039;Carolina&#039;, apellido=&#039;Mendoza&#039;, &quot;segundoApellido&quot;=&#039;Marquez&#039;, sexo=&#039;f&#039;, correo=&#039;mendozarosaly@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04264153365&#039;, &quot;telefonoFijo&quot;=&#039;02742661228&#039; where cedula=&#039;15296169&#039;\n\nupdate profesor set cedula=&#039;15296169&#039;, categoria=&#039;Aux&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;15&#039; where cedula=&#039;15296169&#039;
1456506580	Nombre Apellido (12345678)	Se modificó al profesor <strong>Pedro Martinez (9201868)</strong>	update persona set cedula=&#039;9201868&#039;, nombre=&#039;Pedro&#039;, &quot;segundoNombre&quot;=&#039;Antonio&#039;, apellido=&#039;Martinez&#039;, &quot;segundoApellido&quot;=&#039;Herrera&#039;, sexo=&#039;m&#039;, correo=&#039;mhpa65@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0412-5499476&#039;, &quot;telefonoFijo&quot;=&#039;02742630019&#039; where cedula=&#039;9201868&#039;\n\nupdate profesor set cedula=&#039;9201868&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;23&#039; where cedula=&#039;9201868&#039;
1456506607	Nombre Apellido (12345678)	Se modificó al profesor <strong>Aida Avila (13723698)</strong>	update persona set cedula=&#039;13723698&#039;, nombre=&#039;Aida&#039;, &quot;segundoNombre&quot;=&#039;Vidalina&#039;, apellido=&#039;Avila&#039;, &quot;segundoApellido&quot;=&#039;Zavala&#039;, sexo=&#039;f&#039;, correo=&#039;aidivi@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04247585074&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;13723698&#039;\n\nupdate profesor set cedula=&#039;13723698&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;15&#039; where cedula=&#039;13723698&#039;
1456506636	Nombre Apellido (12345678)	Se modificó al profesor <strong>Antonio Montilla (11954144)</strong>	update persona set cedula=&#039;11954144&#039;, nombre=&#039;Antonio&#039;, &quot;segundoNombre&quot;=&#039;Jose&#039;, apellido=&#039;Montilla&#039;, &quot;segundoApellido&quot;=&#039;Montilla&#039;, sexo=&#039;m&#039;, correo=&#039;eantoniojosemontilla@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04247721070&#039;, &quot;telefonoFijo&quot;=&#039;0424000000&#039; where cedula=&#039;11954144&#039;\n\nupdate profesor set cedula=&#039;11954144&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;11954144&#039;
1456506669	Nombre Apellido (12345678)	Se modificó al profesor <strong>Mayra Peña (14401340)</strong>	update persona set cedula=&#039;14401340&#039;, nombre=&#039;Mayra&#039;, &quot;segundoNombre&quot;=&#039;Irlanda&#039;, apellido=&#039;Peña&#039;, &quot;segundoApellido&quot;=&#039;Rodriguez&#039;, sexo=&#039;f&#039;, correo=&#039;maype123@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04147453968&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;14401340&#039;\n\nupdate profesor set cedula=&#039;14401340&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;14401340&#039;
1456506699	Nombre Apellido (12345678)	Se modificó al profesor <strong>Jimi Quintero (11466224)</strong>	update persona set cedula=&#039;11466224&#039;, nombre=&#039;Jimi&#039;, &quot;segundoNombre&quot;=&#039;Jose&#039;, apellido=&#039;Quintero&#039;, &quot;segundoApellido&quot;=&#039;Dugarte&#039;, sexo=&#039;m&#039;, correo=&#039;jjimiq@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04147555034&#039;, &quot;telefonoFijo&quot;=&#039;02742635434&#039; where cedula=&#039;11466224&#039;\n\nupdate profesor set cedula=&#039;11466224&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;11466224&#039;
1456506727	Nombre Apellido (12345678)	Se modificó al profesor <strong>Eibert Reinoza (17027780)</strong>	update persona set cedula=&#039;17027780&#039;, nombre=&#039;Eibert&#039;, &quot;segundoNombre&quot;=&#039;Leonardo&#039;, apellido=&#039;Reinoza&#039;, &quot;segundoApellido&quot;=&#039;Contreras&#039;, sexo=&#039;m&#039;, correo=&#039;eibertleon@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04265737393&#039;, &quot;telefonoFijo&quot;=&#039;02746587384&#039; where cedula=&#039;17027780&#039;\n\nupdate profesor set cedula=&#039;17027780&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;15&#039; where cedula=&#039;17027780&#039;
1456506768	Nombre Apellido (12345678)	Se modificó al profesor <strong>Marlene Rincón (17663839)</strong>	update persona set cedula=&#039;17663839&#039;, nombre=&#039;Marlene&#039;, &quot;segundoNombre&quot;=&#039;Jackeline&#039;, apellido=&#039;Rincón&#039;, &quot;segundoApellido&quot;=&#039;Muñoz&#039;, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;17663839&#039;\n\nupdate profesor set cedula=&#039;17663839&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;15&#039; where cedula=&#039;17663839&#039;
1456506884	Nombre Apellido (12345678)	Se agregó al profesor <strong>Mirquez Rivera (20039181)</strong>	insert into persona values(&#039;20039181&#039;, &#039;Mirquez&#039;, null, &#039;Rivera&#039;, &#039;Barrios&#039;, &#039;m&#039;, &#039;inicialnombreapellido@uptm.edu.ve&#039;, &#039;Sin Asignar&#039;, &#039;0000-0000000&#039;, null)\n\ninsert into profesor values(&#039;20039181&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;MT&#039;, &#039;22&#039;)
1456506942	Nombre Apellido (12345678)	Se agregó la profesión <strong>Ing. en Telecomunicaciones</strong>	insert into profesion values(default, &#039;Ing. en Telecomunicaciones&#039;)
1456506967	Nombre Apellido (12345678)	Se modificó al profesor <strong>Mirquez Rivera (20039181)</strong>	update persona set cedula=&#039;20039181&#039;, nombre=&#039;Mirquez&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Rivera&#039;, &quot;segundoApellido&quot;=&#039;Barrios&#039;, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin Asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;20039181&#039;\n\nupdate profesor set cedula=&#039;20039181&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;54&#039; where cedula=&#039;20039181&#039;
1456506987	Nombre Apellido (12345678)	Se modificó al profesor <strong>Alix Sayago (11957795)</strong>	update persona set cedula=&#039;11957795&#039;, nombre=&#039;Alix&#039;, &quot;segundoNombre&quot;=&#039;Yubisay&#039;, apellido=&#039;Sayago&#039;, &quot;segundoApellido&quot;=&#039;Albarran&#039;, sexo=&#039;f&#039;, correo=&#039;aysa_ve@yahoo.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04147237453&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;11957795&#039;\n\nupdate profesor set cedula=&#039;11957795&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;11957795&#039;
1456507051	Nombre Apellido (12345678)	Se modificó al profesor <strong>Susana Briceño (13477378)</strong>	update persona set cedula=&#039;13477378&#039;, nombre=&#039;Susana&#039;, &quot;segundoNombre&quot;=&#039;Del Pilar&#039;, apellido=&#039;Briceño&#039;, &quot;segundoApellido&quot;=&#039;Jaimes&#039;, sexo=&#039;f&#039;, correo=&#039;susanabj@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04247259745&#039;, &quot;telefonoFijo&quot;=&#039;02747903567&#039; where cedula=&#039;13477378&#039;\n\nupdate profesor set cedula=&#039;13477378&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;15&#039; where cedula=&#039;13477378&#039;
1456507161	Nombre Apellido (12345678)	Se modificó al profesor <strong>Dorys Valero (13966349)</strong>	update persona set cedula=&#039;13966349&#039;, nombre=&#039;Dorys&#039;, &quot;segundoNombre&quot;=&#039;Virginia&#039;, apellido=&#039;Valero&#039;, &quot;segundoApellido&quot;=&#039;Calderón&#039;, sexo=&#039;f&#039;, correo=&#039;nicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;13966349&#039;\n\nupdate profesor set cedula=&#039;13966349&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;13966349&#039;
1456507198	Nombre Apellido (12345678)	Se modificó al profesor <strong>Nancy Villarreal (8028204)</strong>	update persona set cedula=&#039;8028204&#039;, nombre=&#039;Nancy&#039;, &quot;segundoNombre&quot;=&#039;Margot&#039;, apellido=&#039;Villarreal&#039;, &quot;segundoApellido&quot;=&#039;Villanueva&#039;, sexo=&#039;f&#039;, correo=&#039;nanavillarreal@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04147451751&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8028204&#039;\n\nupdate profesor set cedula=&#039;8028204&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;8028204&#039;
1456773854	Nombre Apellido (12345678)	Se activó el nuevo periodo <strong>2015-B</strong>	insert into periodo values(default, &#039;2015-B&#039;, &#039;2016-02-29&#039;, &#039;2016-02-29&#039;, &#039;p&#039;, &#039;1&#039;)\n\ninsert into periodo values(default, &#039;2015-B&#039;, &#039;2015-05-18&#039;, &#039;2016-02-29&#039;, &#039;a&#039;, &#039;1&#039;)
1456775059	Nombre Apellido (12345678)	Se agregó la sección <strong>Array</strong> del <strong>T1-t3</strong> en <strong>PNF Informática</strong>	insert into seccion values(default, &#039;D&#039;, &#039;d&#039;, &#039;1&#039;, true, &#039;1&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;03&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-t3&#039;)
1456775254	Nombre Apellido (12345678)	Se agregó la sección <strong>Array</strong> del <strong>T2-t3</strong> en <strong>PNF Informática</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, true, &#039;1&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;03&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T2-t3&#039;)
1456775316	Nombre Apellido (12345678)	Se agregó la sección <strong>Array</strong> del <strong>T2-t3</strong> en <strong>PNF Informática</strong>	insert into seccion values(default, &#039;B&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;1&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;03&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T2-t3&#039;)
1456775387	Nombre Apellido (12345678)	Se agregó la sección <strong>Array</strong> del <strong>T3-t2</strong> en <strong>PNF Informática</strong>	insert into seccion values(default, &#039;B&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;1&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;03&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T3-t2&#039;)
1456775471	Nombre Apellido (12345678)	Se agregó la sección <strong>Array</strong> del <strong>T3-t3</strong> en <strong>PNF Informática</strong>	insert into seccion values(default, &#039;C&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;1&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;03&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T3-t3&#039;)
1456775554	Nombre Apellido (12345678)	Se agregó la sección <strong>Array</strong> del <strong>T4-t2</strong> en <strong>PNF Informática</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;1&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;03&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T4-t2&#039;)
1456775918	Nombre Apellido (12345678)	Se agregó la sección <strong>Array</strong> del <strong>T1-t1</strong> en <strong>PNF Informática</strong>	insert into seccion values(default, &#039;C&#039;, &#039;d&#039;, &#039;1&#039;, true, &#039;1&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;03&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-t1&#039;)
1456922559	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T3-t3</strong> al profesor <strong>Gonzalez Rodolfo (9499979)</strong>	insert into carga values(default, false, null, &#039;9499979&#039;, &#039;65&#039;, null, &#039;PIPT3&#039;)
1456775971	Nombre Apellido (12345678)	Se agregó la sección <strong>Array</strong> del <strong>T0</strong> en <strong>PNF Informática</strong>	insert into seccion values(default, &#039;R&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;1&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;03&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T0&#039;)
1456776323	Nombre Apellido (12345678)	Se modificó la carrera <strong>PNF Informática</strong>	update carrera set id=&#039;03&#039;, nombre=&#039;PNF Informática&#039;, &quot;idArea&quot;=&#039;1&#039; where id=&#039;03&#039;
1456776668	Nombre Apellido (12345678)	Se agregó la malla <strong>PNFI-2012-PRO</strong>	insert into malla values(&#039;PNFI-2012-PRO&#039;, &#039;2011-04-27&#039;) returning id
1456777582	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Acreditable Ii</strong>	update &quot;unidadCurricular&quot; set id=&#039;ACRED02&#039;, nombre=&#039;Acreditable II&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;03&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;ACRED02&#039;
1456777619	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Acreditable II</strong>	update &quot;unidadCurricular&quot; set id=&#039;ACRED02&#039;, nombre=&#039;Acreditable II&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;03&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;ACRED02&#039;
1456777639	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Acreditable II</strong>	update &quot;unidadCurricular&quot; set id=&#039;ACR02&#039;, nombre=&#039;Acreditable II&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;03&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;ACRED02&#039;
1456777652	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Acreditable II</strong>	update &quot;unidadCurricular&quot; set id=&#039;ACR002&#039;, nombre=&#039;Acreditable II&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;03&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;ACR02&#039;
1456777672	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Acreditable Iii</strong>	update &quot;unidadCurricular&quot; set id=&#039;ACR003&#039;, nombre=&#039;Acreditable III&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;03&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;PIGC3&#039;
1456777691	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Acreditable Iv</strong>	update &quot;unidadCurricular&quot; set id=&#039;ACR004&#039;, nombre=&#039;Acreditable IV&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;03&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;ACR004&#039;
1456777728	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Acreditable I</strong>	insert into &quot;unidadCurricular&quot; values(&#039;ACR001&#039;, &#039;Acreditable I&#039;, true, &#039;03&#039;, &#039;1&#039;)
1456779059	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012</strong>	update malla set id=&#039;PNFI-2012&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012&#039;
1456876442	Nombre Apellido (12345678)	Se modificó el estado la malla <strong>PNFA-2010-2</strong> en la sede <strong>Ejido</strong>	\nupdate &quot;mallaECS&quot; \nset estado=false \nwhere &quot;idMalla&quot;=&#039;PNFA-2010-2&#039; and \n\t&quot;idECS&quot;=(\n\t\tselect ecs.id as &quot;idECS&quot; \n\t\tfrom carrera as c \n\t\t\tjoin sede as s on s.nombre=&#039;Ejido&#039; \n\t\t\tjoin &quot;carreraSede&quot; as cs on cs.&quot;idCarrera&quot;=c.id and cs.&quot;idSede&quot;=s.id \n\t\t\tjoin estructura as e on e.nombre=&#039;PNF Trimestral&#039; \n\t\t\tjoin &quot;estructuraCS&quot; as ecs on ecs.&quot;idEstructura&quot;=e.id and ecs.&quot;idCS&quot;=cs.id \n\t\twhere c.nombre=&#039;PNF Administración&#039;\n\t)\n\t
1456877029	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva II</strong>	update &quot;unidadCurricular&quot; set id=&#039;PIEL2&#039;, nombre=&#039;Electiva II&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;03&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;PIEL2&#039;
1456877051	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva I</strong>	update &quot;unidadCurricular&quot; set id=&#039;PIEL1&#039;, nombre=&#039;Electiva I&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;03&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;PIEL1&#039;
1456877057	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva III</strong>	update &quot;unidadCurricular&quot; set id=&#039;PIEL3&#039;, nombre=&#039;Electiva III&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;03&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;PIEL3&#039;
1456877070	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva Iv</strong>	update &quot;unidadCurricular&quot; set id=&#039;PIEL4&#039;, nombre=&#039;Electiva IV&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;03&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;PIEL4&#039;
1456877183	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012</strong>	update malla set id=&#039;PNFI-2012&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012&#039;
1456878386	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012</strong>	update malla set id=&#039;PNFI-2012&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012&#039;
1456878696	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012</strong>	update malla set id=&#039;PNFI-2012&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012&#039;
1456878739	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Fundamento De Ingenieria Del Software</strong>	update &quot;unidadCurricular&quot; set id=&#039;30001&#039;, nombre=&#039;Fundamento de Ingenieria del Software&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;03&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;30001&#039;
1456878775	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Matematica Avanzada</strong>	update &quot;unidadCurricular&quot; set id=&#039;30002&#039;, nombre=&#039;Matemática Avanzada&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;03&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;30002&#039;
1456883653	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012-PRO</strong>	update malla set id=&#039;PNFI-2012-PRO&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012-PRO&#039;
1456920458	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012-PRO</strong>	update malla set id=&#039;PNFI-2012-PRO&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012-PRO&#039;
1456920878	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012-PRO</strong>	update malla set id=&#039;PNFI-2012-PRO&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012-PRO&#039;
1456921107	Nombre Apellido (12345678)	Se modificó el periodo <strong>2015-B</strong> de <strong>PNF Informática - Ejido (PNF Trimestral)</strong>	update periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2016-02-29&#039;, &quot;fechaFin&quot;=&#039;2016-03-02&#039; where id=&#039;2015-B&#039; and tipo=&#039;p&#039; and &quot;idECS&quot;=&#039;1&#039;\n\nupdate periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2015-05-18&#039;, &quot;fechaFin&quot;=&#039;2016-03-02&#039; where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=&#039;1&#039;
1456921272	Nombre Apellido (12345678)	Se activó el nuevo periodo <strong>2015-B</strong>	insert into periodo values(default, &#039;2015-B&#039;, &#039;2016-03-02&#039;, &#039;2016-03-02&#039;, &#039;p&#039;, &#039;10&#039;)\n\ninsert into periodo values(default, &#039;2015-B&#039;, &#039;2015-05-18&#039;, &#039;2016-03-02&#039;, &#039;a&#039;, &#039;10&#039;)
1456921392	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T4-t3</strong> en <strong>PNF Informática</strong>	insert into seccion values(default, &#039;A&#039;, &#039;n&#039;, &#039;1.5&#039;, false, &#039;12&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;3&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;03&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T4-t3&#039;)
1456924767	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Zambrano Raquel (13648603)</strong>	insert into carga values(default, false, &#039;Programación Orientada a Proyecto&#039;, &#039;13648603&#039;, &#039;63&#039;, null, &#039;PIEL3&#039;)
1456921502	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>TT</strong> en <strong>PNF Informática</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;12&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;3&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;03&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;TT&#039;)
1456921675	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Alviarez Blanca (5655983)</strong>	insert into carga values(default, false, null, &#039;5655983&#039;, &#039;59&#039;, null, &#039;PIPT2&#039;)
1456921741	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t3</strong> al profesor <strong>Alviarez Blanca (5655983)</strong>. Suple <strong>Briceño Susana (13477378)</strong>	insert into carga values(default, false, &#039;Desarrollo de Actividades en la Web&#039;, &#039;5655983&#039;, &#039;71&#039;, 13477378, &#039;PIEL4&#039;)
1456921875	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Alviarez Diony (8047120)</strong>	insert into carga values(default, true, null, &#039;8047120&#039;, &#039;56&#039;, null, &#039;PIAP1&#039;)
1456921939	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Corredor Nelson (4484976)</strong>	insert into carga values(default, false, null, &#039;4484976&#039;, &#039;67&#039;, null, &#039;PIFC1&#039;)
1456921940	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Corredor Nelson (4484976)</strong>	insert into carga values(default, false, null, &#039;4484976&#039;, &#039;68&#039;, null, &#039;PIFC1&#039;)
1456922054	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Corredor Nelson (4484976)</strong>	insert into carga values(default, false, &#039;Redacción y Comprensión Lectora&#039;, &#039;4484976&#039;, &#039;68&#039;, null, &#039;ACR001&#039;)
1456922088	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Delgado Jesus (7168412)</strong>. Suple <strong>Martinez Pedro (9201868)</strong>	insert into carga values(default, false, null, &#039;7168412&#039;, &#039;61&#039;, 9201868, &#039;PIMA3&#039;)
1456922126	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T2-t3</strong> al profesor <strong>Dugarte Anna (13966054)</strong>. Suple <strong>Sayago Alix (11957795)</strong>	insert into carga values(default, false, null, &#039;13966054&#039;, &#039;60&#039;, 11957795, &#039;PIPT2&#039;)
1456922162	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Dugarte Anna (13966054)</strong>. Suple <strong>Sayago Alix (11957795)</strong>	insert into carga values(default, false, null, &#039;13966054&#039;, &#039;68&#039;, 11957795, &#039;PIPT1&#039;)
1456922389	Nombre Apellido (12345678)	Se asignó la sección <strong>D</strong> del <strong>T1-t3</strong> al profesor <strong>Dugarte Anna (13966054)</strong>. Suple <strong>Valero Dorys (13966349)</strong>	insert into carga values(default, false, null, &#039;13966054&#039;, &#039;58&#039;, 13966349, &#039;PIAC1&#039;)
1456922425	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Gomez Johanna (14917178)</strong>. Suple <strong>Rincón Marlene (17663839)</strong>	insert into carga values(default, false, null, &#039;14917178&#039;, &#039;66&#039;, 17663839, &#039;PIPT4&#039;)
1456922467	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Gomez Johanna (14917178)</strong>. Suple <strong>Rincón Marlene (17663839)</strong>	insert into carga values(default, false, null, &#039;14917178&#039;, &#039;64&#039;, 17663839, &#039;PIIS3&#039;)
1456922491	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t1</strong> al profesor <strong>Gomez Johanna (14917178)</strong>. Suple <strong>Rincón Marlene (17663839)</strong>	insert into carga values(default, false, null, &#039;14917178&#039;, &#039;69&#039;, 17663839, &#039;PIMT1&#039;)
1456922533	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Gonzalez Duberlis (10256095)</strong>	insert into carga values(default, false, null, &#039;10256095&#039;, &#039;55&#039;, null, &#039;PIPT1&#039;)
1456922534	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Gonzalez Duberlis (10256095)</strong>	insert into carga values(default, false, null, &#039;10256095&#039;, &#039;57&#039;, null, &#039;PIPT1&#039;)
1456922535	Nombre Apellido (12345678)	Se asignó la sección <strong>D</strong> del <strong>T1-t3</strong> al profesor <strong>Gonzalez Duberlis (10256095)</strong>	insert into carga values(default, false, null, &#039;10256095&#039;, &#039;58&#039;, null, &#039;PIPT1&#039;)
1456922630	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t3</strong> al profesor <strong>Leal Solange (12722185)</strong>. Suple <strong>Briceño Susana (13477378)</strong>	insert into carga values(default, false, null, &#039;12722185&#039;, &#039;71&#039;, 13477378, &#039;PIAI4&#039;)
1456922673	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Muñoz Ana (4491973)</strong>. Suple <strong>Reinoza Eibert (17027780)</strong>	insert into carga values(default, false, null, &#039;4491973&#039;, &#039;61&#039;, 17027780, &#039;PIMB3&#039;)
1456922722	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Muñoz Ana (4491973)</strong>. Suple <strong>Reinoza Eibert (17027780)</strong>	insert into carga values(default, false, &#039;Tecnología Aplicada a la Base de Datos&#039;, &#039;4491973&#039;, &#039;59&#039;, 17027780, &#039;PIEL2&#039;)
1456922723	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T2-t3</strong> al profesor <strong>Muñoz Ana (4491973)</strong>. Suple <strong>Reinoza Eibert (17027780)</strong>	insert into carga values(default, false, &#039;Tecnología Aplicada a la Base de Datos&#039;, &#039;4491973&#039;, &#039;60&#039;, 17027780, &#039;PIEL2&#039;)
1456922776	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Rodriguez Judith (8027793)</strong>	insert into carga values(default, false, null, &#039;8027793&#039;, &#039;67&#039;, null, &#039;PIMT1&#039;)
1456922777	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Rodriguez Judith (8027793)</strong>	insert into carga values(default, false, null, &#039;8027793&#039;, &#039;68&#039;, null, &#039;PIMT1&#039;)
1456922799	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>TT</strong> al profesor <strong>Rodriguez Judith (8027793)</strong>	insert into carga values(default, false, null, &#039;8027793&#039;, &#039;72&#039;, null, &#039;30002&#039;)
1456922941	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Romero Jesus (10898072)</strong>	insert into carga values(default, true, null, &#039;10898072&#039;, &#039;57&#039;, null, &#039;PIAP1&#039;)
1456922972	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Romero Jesus (10898072)</strong>	insert into carga values(default, false, &#039;Programación Orientada a Objetos&#039;, &#039;10898072&#039;, &#039;61&#039;, null, &#039;ACR003&#039;)
1456923063	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t2</strong> al profesor <strong>Romero Jesus (10898072)</strong>	insert into carga values(default, false, null, &#039;10898072&#039;, &#039;62&#039;, null, &#039;PIMB3&#039;)
1456923098	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t2</strong> al profesor <strong>Romero Adolfo (6953950)</strong>	insert into carga values(default, false, &#039;Programación Orientada a Objetos&#039;, &#039;6953950&#039;, &#039;62&#039;, null, &#039;ACR003&#039;)
1456923183	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Romero Adolfo (6953950)</strong>	insert into carga values(default, true, null, &#039;6953950&#039;, &#039;59&#039;, null, &#039;PIPP2&#039;)
1456923220	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Romero Adolfo (6953950)</strong>	insert into carga values(default, false, &#039;Reingeniería de Sistemas&#039;, &#039;6953950&#039;, &#039;66&#039;, null, &#039;ACR004&#039;)
1456923246	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Rosales Edgar (11960173)</strong>	insert into carga values(default, false, null, &#039;11960173&#039;, &#039;56&#039;, null, &#039;PIPT1&#039;)
1456923253	Nombre Apellido (12345678)	Se desasignó la sección <strong>B</strong> del <strong>T1-t3</strong> del profesor <strong>Rosales Edgar (11960173)</strong>	delete from carga where id=&#039;357&#039;
1456923266	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Rosales Edgar (11960173)</strong>. Suple <strong>Quintero Jimi (11466224)</strong>	insert into carga values(default, false, null, &#039;11960173&#039;, &#039;56&#039;, 11466224, &#039;PIPT1&#039;)
1456923305	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Rosales Edgar (11960173)</strong>. Suple <strong>Quintero Jimi (11466224)</strong>	insert into carga values(default, false, null, &#039;11960173&#039;, &#039;56&#039;, 11466224, &#039;PIAC1&#039;)
1456923331	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Rosciano Monica (11303172)</strong>	insert into carga values(default, false, null, &#039;11303172&#039;, &#039;61&#039;, null, &#039;PIIS3&#039;)
1456923471	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T3-t3</strong> al profesor <strong>Rosciano Monica (11303172)</strong>	insert into carga values(default, false, null, &#039;11303172&#039;, &#039;65&#039;, null, &#039;PIIS3&#039;)
1456923487	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Rosciano Monica (11303172)</strong>	insert into carga values(default, false, null, &#039;11303172&#039;, &#039;63&#039;, null, &#039;PIIS3&#039;)
1456923539	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t1</strong> al profesor <strong>Pernia Darwin (13524109)</strong>	insert into carga values(default, true, null, &#039;13524109&#039;, &#039;69&#039;, null, &#039;PIAP1&#039;)
1456923560	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Pernia Darwin (13524109)</strong>	insert into carga values(default, false, null, &#039;13524109&#039;, &#039;66&#039;, null, &#039;PISI4&#039;)
1456923736	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Sandoval Cristina (9389944)</strong>	insert into carga values(default, false, null, &#039;9389944&#039;, &#039;55&#039;, null, &#039;PIMT1&#039;)
1456923737	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Sandoval Cristina (9389944)</strong>	insert into carga values(default, false, null, &#039;9389944&#039;, &#039;56&#039;, null, &#039;PIMT1&#039;)
1456923738	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Sandoval Cristina (9389944)</strong>	insert into carga values(default, false, null, &#039;9389944&#039;, &#039;57&#039;, null, &#039;PIMT1&#039;)
1456923757	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Sanchez Yudith (8044725)</strong>	insert into carga values(default, false, null, &#039;8044725&#039;, &#039;61&#039;, null, &#039;PIPT3&#039;)
1456923758	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t2</strong> al profesor <strong>Sanchez Yudith (8044725)</strong>	insert into carga values(default, false, null, &#039;8044725&#039;, &#039;62&#039;, null, &#039;PIPT3&#039;)
1456924768	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Zambrano Raquel (13648603)</strong>	insert into carga values(default, false, &#039;Programación Orientada a Proyecto&#039;, &#039;13648603&#039;, &#039;64&#039;, null, &#039;PIEL3&#039;)
1456924801	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Marquez Mervin (13967486)</strong>	insert into carga values(default, false, null, &#039;13967486&#039;, &#039;55&#039;, null, &#039;PIAC1&#039;)
1456923839	Nombre Apellido (12345678)	Se modificó al profesor <strong>Gilbert Santeliz (5239250)</strong>	update persona set cedula=&#039;5239250&#039;, nombre=&#039;Gilbert&#039;, &quot;segundoNombre&quot;=&#039;Arturo&#039;, apellido=&#039;Santeliz&#039;, &quot;segundoApellido&quot;=&#039;Zerpa&#039;, sexo=&#039;m&#039;, correo=&#039;gilbertsanteliz@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04265707388&#039;, &quot;telefonoFijo&quot;=&#039;02742215787&#039; where cedula=&#039;5239250&#039;\n\nupdate profesor set cedula=&#039;5239250&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;5239250&#039;
1456923904	Nombre Apellido (12345678)	Se asignó la sección <strong>D</strong> del <strong>T1-t3</strong> al profesor <strong>Santeliz Gilbert (5239250)</strong>	insert into carga values(default, true, null, &#039;5239250&#039;, &#039;58&#039;, null, &#039;PIAP1&#039;)
1456923988	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Santeliz Gilbert (5239250)</strong>	insert into carga values(default, true, null, &#039;5239250&#039;, &#039;68&#039;, null, &#039;PIAP1&#039;)
1456924051	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Sarache Agni (11956576)</strong>	insert into carga values(default, false, null, &#039;11956576&#039;, &#039;55&#039;, null, &#039;PIID1&#039;)
1456924052	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Sarache Agni (11956576)</strong>	insert into carga values(default, false, null, &#039;11956576&#039;, &#039;56&#039;, null, &#039;PIID1&#039;)
1456924053	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Sarache Agni (11956576)</strong>	insert into carga values(default, false, null, &#039;11956576&#039;, &#039;57&#039;, null, &#039;PIID1&#039;)
1456924054	Nombre Apellido (12345678)	Se asignó la sección <strong>D</strong> del <strong>T1-t3</strong> al profesor <strong>Sarache Agni (11956576)</strong>	insert into carga values(default, false, null, &#039;11956576&#039;, &#039;58&#039;, null, &#039;PIID1&#039;)
1456924070	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Sarache Agni (11956576)</strong>	insert into carga values(default, false, null, &#039;11956576&#039;, &#039;68&#039;, null, &#039;PIID1&#039;)
1456924092	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Sarache Agni (11956576)</strong>	insert into carga values(default, false, null, &#039;11956576&#039;, &#039;66&#039;, null, &#039;PIID4&#039;)
1456924117	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t3</strong> al profesor <strong>Sarache Agni (11956576)</strong>	insert into carga values(default, false, null, &#039;11956576&#039;, &#039;71&#039;, null, &#039;PIID4&#039;)
1456924141	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Sosa Zoila (4489957)</strong>	insert into carga values(default, false, null, &#039;4489957&#039;, &#039;67&#039;, null, &#039;PIID1&#039;)
1456924142	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t1</strong> al profesor <strong>Sosa Zoila (4489957)</strong>	insert into carga values(default, false, null, &#039;4489957&#039;, &#039;69&#039;, null, &#039;PIID1&#039;)
1456924214	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Uzcategui Nelma (13014569)</strong>	insert into carga values(default, false, null, &#039;13014569&#039;, &#039;67&#039;, null, &#039;PIAC1&#039;)
1456924215	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Uzcategui Nelma (13014569)</strong>. Suple <strong>Valero Dorys (13966349)</strong>	insert into carga values(default, false, null, &#039;13014569&#039;, &#039;68&#039;, 13966349, &#039;PIAC1&#039;)
1456924242	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Vasquez Lorenzo (7509507)</strong>	insert into carga values(default, false, null, &#039;7509507&#039;, &#039;64&#039;, null, &#039;PIIO3&#039;)
1456924263	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T3-t3</strong> al profesor <strong>Vasquez Lorenzo (7509507)</strong>	insert into carga values(default, false, null, &#039;7509507&#039;, &#039;65&#039;, null, &#039;PIIO3&#039;)
1456924336	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T3-t3</strong> al profesor <strong>Vasquez Lorenzo (7509507)</strong>	insert into carga values(default, false, &#039;Programación Orientada a Proyecto&#039;, &#039;7509507&#039;, &#039;65&#039;, null, &#039;PIEL3&#039;)
1456924373	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Zambrano Jerson (8029075)</strong>	insert into carga values(default, false, null, &#039;8029075&#039;, &#039;63&#039;, null, &#039;PIFC3&#039;)
1456924374	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Zambrano Jerson (8029075)</strong>	insert into carga values(default, false, null, &#039;8029075&#039;, &#039;64&#039;, null, &#039;PIFC3&#039;)
1456924397	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Zambrano Jerson (8029075)</strong>	insert into carga values(default, false, null, &#039;8029075&#039;, &#039;59&#039;, null, &#039;PIFC2&#039;)
1456924398	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T2-t3</strong> al profesor <strong>Zambrano Jerson (8029075)</strong>	insert into carga values(default, false, null, &#039;8029075&#039;, &#039;60&#039;, null, &#039;PIFC2&#039;)
1456924412	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Zambrano Jerson (8029075)</strong>	insert into carga values(default, false, null, &#039;8029075&#039;, &#039;61&#039;, null, &#039;PIFC3&#039;)
1456924424	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Zambrano Jerson (8029075)</strong>	insert into carga values(default, false, null, &#039;8029075&#039;, &#039;66&#039;, null, &#039;PIFC4&#039;)
1456924452	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t3</strong> al profesor <strong>Zambrano Jerson (8029075)</strong>	insert into carga values(default, false, null, &#039;8029075&#039;, &#039;71&#039;, null, &#039;PIFC4&#039;)
1456924594	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T2-t3</strong> al profesor <strong>Zambrano Raquel (13648603)</strong>	insert into carga values(default, false, null, &#039;13648603&#039;, &#039;60&#039;, null, &#039;PIPP2&#039;)
1456924825	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t1</strong> al profesor <strong>Marquez Mervin (13967486)</strong>	insert into carga values(default, false, null, &#039;13967486&#039;, &#039;69&#039;, null, &#039;PIAC1&#039;)
1456924856	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Mendoza Rosaly (15296169)</strong>	insert into carga values(default, true, null, &#039;15296169&#039;, &#039;55&#039;, null, &#039;PIAP1&#039;)
1456924874	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t1</strong> al profesor <strong>Mendoza Rosaly (15296169)</strong>	insert into carga values(default, false, null, &#039;15296169&#039;, &#039;69&#039;, null, &#039;PIFC1&#039;)
1456924972	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>TT</strong> al profesor <strong>Arias Wilbelis (17254684)</strong>	insert into carga values(default, false, null, &#039;17254684&#039;, &#039;72&#039;, null, &#039;30001&#039;)
1456924992	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>TT</strong> al profesor <strong>Arias Wilbelis (17254684)</strong>	insert into carga values(default, false, null, &#039;17254684&#039;, &#039;72&#039;, null, &#039;PITIP02&#039;)
1456926897	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Avila Aida (13723698)</strong>	insert into carga values(default, true, null, &#039;13723698&#039;, &#039;67&#039;, null, &#039;PIAP1&#039;)
1456927106	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Avila Aida (13723698)</strong>	insert into carga values(default, false, null, &#039;13723698&#039;, &#039;57&#039;, null, &#039;PIAC1&#039;)
1456927126	Nombre Apellido (12345678)	Se asignó la sección <strong>D</strong> del <strong>T1-t3</strong> al profesor <strong>Martinez Pedro (9201868)</strong>	insert into carga values(default, false, null, &#039;9201868&#039;, &#039;58&#039;, null, &#039;PIMT1&#039;)
1456927175	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t2</strong> al profesor <strong>Martinez Pedro (9201868)</strong>	insert into carga values(default, false, null, &#039;9201868&#039;, &#039;62&#039;, null, &#039;PIMA3&#039;)
1456927326	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T3-t3</strong> al profesor <strong>Montilla Antonio (11954144)</strong>	insert into carga values(default, false, null, &#039;11954144&#039;, &#039;65&#039;, null, &#039;PIFC3&#039;)
1456927350	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>TT</strong> al profesor <strong>Montilla Antonio (11954144)</strong>	insert into carga values(default, false, null, &#039;11954144&#039;, &#039;72&#039;, null, &#039;PIPNP03&#039;)
1456927392	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t2</strong> al profesor <strong>Montilla Antonio (11954144)</strong>	insert into carga values(default, false, null, &#039;11954144&#039;, &#039;62&#039;, null, &#039;PIFC3&#039;)
1456927411	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Montilla Antonio (11954144)</strong>	insert into carga values(default, false, null, &#039;11954144&#039;, &#039;55&#039;, null, &#039;PIFC1&#039;)
1456927412	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Montilla Antonio (11954144)</strong>	insert into carga values(default, false, null, &#039;11954144&#039;, &#039;56&#039;, null, &#039;PIFC1&#039;)
1456927413	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Montilla Antonio (11954144)</strong>	insert into carga values(default, false, null, &#039;11954144&#039;, &#039;57&#039;, null, &#039;PIFC1&#039;)
1456927414	Nombre Apellido (12345678)	Se asignó la sección <strong>D</strong> del <strong>T1-t3</strong> al profesor <strong>Montilla Antonio (11954144)</strong>	insert into carga values(default, false, null, &#039;11954144&#039;, &#039;58&#039;, null, &#039;PIFC1&#039;)
1456927485	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t3</strong> al profesor <strong>Peña Mayra (14401340)</strong>	insert into carga values(default, false, null, &#039;14401340&#039;, &#039;71&#039;, null, &#039;PIPT4&#039;)
1456927581	Nombre Apellido (12345678)	Se desasignó la sección <strong>A</strong> del <strong>TT</strong> del profesor <strong>Arias Wilbelis (17254684)</strong>	delete from carga where id=&#039;402&#039;
1456927586	Nombre Apellido (12345678)	Se desasignó la sección <strong>A</strong> del <strong>TT</strong> del profesor <strong>Arias Wilbelis (17254684)</strong>	delete from carga where id=&#039;401&#039;
1456927615	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>TT</strong> al profesor <strong>Peña Mayra (14401340)</strong>	insert into carga values(default, false, null, &#039;14401340&#039;, &#039;72&#039;, null, &#039;PITIP02&#039;)
1456927647	Nombre Apellido (12345678)	Se agregó la sección <strong>B</strong> del <strong>TT</strong> en <strong>PNF Informática</strong>	insert into seccion values(default, &#039;B&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;12&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;3&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;03&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;TT&#039;)
1456927679	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>TT</strong> al profesor <strong>Arias Wilbelis (17254684)</strong>	insert into carga values(default, false, null, &#039;17254684&#039;, &#039;73&#039;, null, &#039;30001&#039;)
1456927685	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>TT</strong> al profesor <strong>Arias Wilbelis (17254684)</strong>	insert into carga values(default, false, null, &#039;17254684&#039;, &#039;73&#039;, null, &#039;PITIP02&#039;)
1456927708	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t1</strong> al profesor <strong>Peña Mayra (14401340)</strong>	insert into carga values(default, false, null, &#039;14401340&#039;, &#039;69&#039;, null, &#039;PIPT1&#039;)
1456927810	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Quintero Jimi (11466224)</strong>	insert into carga values(default, false, null, &#039;11466224&#039;, &#039;66&#039;, null, &#039;PIRA4&#039;)
1456927936	Nombre Apellido (12345678)	Se asignó la sección <strong>R</strong> del <strong>T0</strong> al profesor <strong>Rincón Marlene (17663839)</strong>	insert into carga values(default, false, null, &#039;17663839&#039;, &#039;70&#039;, null, &#039;PIMT004&#039;)
1456927963	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>TT</strong> al profesor <strong>Rivera Mirquez (20039181)</strong>	insert into carga values(default, false, null, &#039;20039181&#039;, &#039;73&#039;, null, &#039;PIPNP03&#039;)
1456927975	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>TT</strong> al profesor <strong>Rivera Mirquez (20039181)</strong>	insert into carga values(default, false, null, &#039;20039181&#039;, &#039;73&#039;, null, &#039;30002&#039;)
1456928011	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Sayago Alix (11957795)</strong>	insert into carga values(default, false, null, &#039;11957795&#039;, &#039;67&#039;, null, &#039;PIPT1&#039;)
1456928136	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Villarreal Nancy (8028204)</strong>	insert into carga values(default, false, null, &#039;8028204&#039;, &#039;63&#039;, null, &#039;PIIO3&#039;)
1456928169	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t2</strong> al profesor <strong>Villarreal Nancy (8028204)</strong>	insert into carga values(default, false, null, &#039;8028204&#039;, &#039;62&#039;, null, &#039;PIIS3&#039;)
1456928189	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>TT</strong> al profesor <strong>Villarreal Nancy (8028204)</strong>	insert into carga values(default, false, null, &#039;8028204&#039;, &#039;72&#039;, null, &#039;30001&#039;)
1456928352	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Informática Ejido PNFI-2012.pdf</strong>	No SQL
1456933537	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Informática Ejido PNFI-2012.pdf</strong>	No SQL
1456933868	Nombre Apellido (12345678)	Se eliminó la planilla <strong>2015-B PNF Agroalimentacin Ejido PNFAg-2.pdf</strong>	No SQL
1456933870	Nombre Apellido (12345678)	Se eliminó la planilla <strong>2015-B PNF Agroalimentación Ejido PNFAg-2.pdf</strong>	No SQL
1456933872	Nombre Apellido (12345678)	Se eliminó la planilla <strong>2015-B PNF Informática Ejido PNFI-2012.pdf</strong>	No SQL
1456933885	Nombre Apellido (12345678)	Se creó la planilla <strong>2015-B PNF Informática Ejido PNFI-2012.pdf</strong>	No SQL
1456942258	Nombre Apellido (12345678)	Se modificó al profesor <strong>Rosmary Salinas (18618150)</strong>	update persona set cedula=&#039;18618150&#039;, nombre=&#039;Rosmary&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Salinas&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;18618150&#039;\n\nupdate profesor set cedula=&#039;18618150&#039;, categoria=&#039;Aux&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;45&#039; where cedula=&#039;18618150&#039;
1456942324	Nombre Apellido (12345678)	Se modificó la carrera <strong>Radiologia e Imagenologia</strong>	update carrera set id=&#039;49&#039;, nombre=&#039;Radiologia e Imagenologia&#039;, &quot;idArea&quot;=&#039;3&#039; where id=&#039;49&#039;
1456942353	Nombre Apellido (12345678)	Se modificó al profesor <strong>Rosmary Salinas (18618150)</strong>	update persona set cedula=&#039;18618150&#039;, nombre=&#039;Rosmary&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Salinas&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;18618150&#039;\n\nupdate profesor set cedula=&#039;18618150&#039;, categoria=&#039;Aux&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;45&#039; where cedula=&#039;18618150&#039;
1456942449	Nombre Apellido (12345678)	Se eliminó <strong>Radiologia e Imagenologia</strong>	delete from &quot;carrera&quot; where &quot;nombre&quot;=&#039;Radiologia e Imagenologia&#039;
1456942799	Nombre Apellido (12345678)	Se agregó la carrera <strong>Radiología e Imagenología</strong>	insert into carrera values(&#039;49&#039;, &#039;Radiología e Imagenología&#039;, &#039;3&#039;)
1456942909	Nombre Apellido (12345678)	Se modificó al profesor <strong>Oswaldo Abarca (3966127)</strong>	update persona set cedula=&#039;3966127&#039;, nombre=&#039;Oswaldo&#039;, &quot;segundoNombre&quot;=&#039;Adelis&#039;, apellido=&#039;Abarca&#039;, &quot;segundoApellido&quot;=&#039;Montilla&#039;, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;3966127&#039;\n\nupdate profesor set cedula=&#039;3966127&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;25&#039; where cedula=&#039;3966127&#039;
1456943030	Nombre Apellido (12345678)	Se modificó al profesor <strong>Reinaldo Laya (10617743)</strong>	update persona set cedula=&#039;10617743&#039;, nombre=&#039;Reinaldo&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Laya&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;10617743&#039;\n\nupdate profesor set cedula=&#039;10617743&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;35&#039; where cedula=&#039;10617743&#039;
1456946267	Nombre Apellido (12345678)	Se agregó al profesor <strong>Jose Castro (19279167)</strong>	insert into persona values(&#039;19279167&#039;, &#039;Jose&#039;, &#039;Luis&#039;, &#039;Castro&#039;, null, &#039;m&#039;, &#039;inicialnombreapellido@uptm.edu.ve&#039;, &#039;Sin Asignar&#039;, &#039;0000-0000000&#039;, null)\n\ninsert into profesor values(&#039;19279167&#039;, &#039;Aux&#039;, &#039;1&#039;, &#039;TC&#039;, &#039;45&#039;)
1456943155	Nombre Apellido (12345678)	Se modificó al profesor <strong>Migdalia Martinez (10092487)</strong>	update persona set cedula=&#039;10092487&#039;, nombre=&#039;Migdalia&#039;, &quot;segundoNombre&quot;=&#039;Bethsabe&#039;, apellido=&#039;Martinez&#039;, &quot;segundoApellido&quot;=&#039;Carrero&#039;, sexo=&#039;f&#039;, correo=&#039;migbethsamar03@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0414-7381102&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;10092487&#039;\n\nupdate profesor set cedula=&#039;10092487&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;23&#039; where cedula=&#039;10092487&#039;
1456943248	Nombre Apellido (12345678)	Se modificó al profesor <strong>Yadira Marquez (9475173)</strong>	update persona set cedula=&#039;9475173&#039;, nombre=&#039;Yadira&#039;, &quot;segundoNombre&quot;=&#039;Yelitza&#039;, apellido=&#039;Marquez&#039;, &quot;segundoApellido&quot;=&#039;Santiago&#039;, sexo=&#039;f&#039;, correo=&#039;yayms@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04140760466&#039;, &quot;telefonoFijo&quot;=&#039;02742660082&#039; where cedula=&#039;9475173&#039;\n\nupdate profesor set cedula=&#039;9475173&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;1&#039; where cedula=&#039;9475173&#039;
1456961304	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Bio Geo Historia de la Alimentación</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90013&#039;, &#039;Bio Geo Historia de la Alimentación&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456943328	Nombre Apellido (12345678)	Se modificó al profesor <strong>Bárbara Mora (10687170)</strong>	update persona set cedula=&#039;10687170&#039;, nombre=&#039;Bárbara&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Mora&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;10687170&#039;\n\nupdate profesor set cedula=&#039;10687170&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;22&#039; where cedula=&#039;10687170&#039;
1456943405	Nombre Apellido (12345678)	Se modificó al profesor <strong>Luis Moreno (5198965)</strong>	update persona set cedula=&#039;5198965&#039;, nombre=&#039;Luis&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Moreno&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;5198965&#039;\n\nupdate profesor set cedula=&#039;5198965&#039;, categoria=&#039;Agre&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;20&#039; where cedula=&#039;5198965&#039;
1456943446	Nombre Apellido (12345678)	Se modificó al profesor <strong>Zoila Sosa (4489957)</strong>	update persona set cedula=&#039;4489957&#039;, nombre=&#039;Zoila&#039;, &quot;segundoNombre&quot;=&#039;Teresa&#039;, apellido=&#039;Sosa&#039;, &quot;segundoApellido&quot;=&#039;Barrios&#039;, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;4489957&#039;\n\nupdate profesor set cedula=&#039;4489957&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;35&#039; where cedula=&#039;4489957&#039;
1456943557	Nombre Apellido (12345678)	Se modificó al profesor <strong>Heriberto Calderón (3991395)</strong>	update persona set cedula=&#039;3991395&#039;, nombre=&#039;Heriberto&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Calderón&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;3991395&#039;\n\nupdate profesor set cedula=&#039;3991395&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;23&#039; where cedula=&#039;3991395&#039;
1456943622	Nombre Apellido (12345678)	Se modificó al profesor <strong>Doris Carrasquero (6966311)</strong>	update persona set cedula=&#039;6966311&#039;, nombre=&#039;Doris&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Carrasquero&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;6966311&#039;\n\nupdate profesor set cedula=&#039;6966311&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;29&#039; where cedula=&#039;6966311&#039;
1456943777	Nombre Apellido (12345678)	Se agregó al profesor <strong>Edith Uzcateguí (5200034)</strong>	insert into persona values(&#039;5200034&#039;, &#039;Edith&#039;, &#039;Marisol&#039;, &#039;Uzcateguí&#039;, &#039;Cabrices&#039;, &#039;f&#039;, &#039;inicialnombreapellido@uptm.edu.ve&#039;, &#039;Sin Asignar&#039;, &#039;0000-0000000&#039;, null)\n\ninsert into profesor values(&#039;5200034&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;MT&#039;, &#039;44&#039;)
1456943892	Nombre Apellido (12345678)	Se modificó al profesor <strong>Adan Colina (7482782)</strong>	update persona set cedula=&#039;7482782&#039;, nombre=&#039;Adan&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Colina&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;7482782&#039;\n\nupdate profesor set cedula=&#039;7482782&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;30&#039; where cedula=&#039;7482782&#039;
1456943932	Nombre Apellido (12345678)	Se modificó la profesión <strong>Mádicina</strong>	update profesion set nombre=&#039;Médico Cirujano&#039; where nombre=&#039;Mádicina&#039;
1456943956	Nombre Apellido (12345678)	Se modificó al profesor <strong>Adan Colina (7482782)</strong>	update persona set cedula=&#039;7482782&#039;, nombre=&#039;Adan&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Colina&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;7482782&#039;\n\nupdate profesor set cedula=&#039;7482782&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;43&#039; where cedula=&#039;7482782&#039;
1456946289	Nombre Apellido (12345678)	Se modificó la profesión <strong>TSU en Radiología</strong>	update profesion set nombre=&#039;TSU en Radiología e Imagenología&#039; where nombre=&#039;TSU en Radiología&#039;
1456946631	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Anatomia</strong>	update &quot;unidadCurricular&quot; set id=&#039;91105&#039;, nombre=&#039;Anatomía Radiológica&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;91105&#039;
1456944012	Nombre Apellido (12345678)	Se modificó al profesor <strong>Jorge Flores (8044768)</strong>	update persona set cedula=&#039;8044768&#039;, nombre=&#039;Jorge&#039;, &quot;segundoNombre&quot;=&#039;Luis&#039;, apellido=&#039;Flores&#039;, &quot;segundoApellido&quot;=&#039;Calderon&#039;, sexo=&#039;m&#039;, correo=&#039;jorgelflores5@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8044768&#039;\n\nupdate profesor set cedula=&#039;8044768&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;26&#039; where cedula=&#039;8044768&#039;
1456944080	Nombre Apellido (12345678)	Se modificó al profesor <strong>María Geijo (9602126)</strong>	update persona set cedula=&#039;9602126&#039;, nombre=&#039;María&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Geijo&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;9602126&#039;\n\nupdate profesor set cedula=&#039;9602126&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;43&#039; where cedula=&#039;9602126&#039;
1456944145	Nombre Apellido (12345678)	Se modificó al profesor <strong>Luisana Marquez (18308852)</strong>	update persona set cedula=&#039;18308852&#039;, nombre=&#039;Luisana&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Marquez&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;18308852&#039;\n\nupdate profesor set cedula=&#039;18308852&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;33&#039; where cedula=&#039;18308852&#039;
1456961333	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Tecnología de los Alimentos</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90014&#039;, &#039;Tecnología de los Alimentos&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456944198	Nombre Apellido (12345678)	Se modificó al profesor <strong>Pedro Manzano (8656400)</strong>	update persona set cedula=&#039;8656400&#039;, nombre=&#039;Pedro&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Manzano&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8656400&#039;\n\nupdate profesor set cedula=&#039;8656400&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;23&#039; where cedula=&#039;8656400&#039;
1456944252	Nombre Apellido (12345678)	Se modificó al profesor <strong>Teresa Medina (9906615)</strong>	update persona set cedula=&#039;9906615&#039;, nombre=&#039;Teresa&#039;, &quot;segundoNombre&quot;=&#039;De Jesus&#039;, apellido=&#039;Medina&#039;, &quot;segundoApellido&quot;=&#039;De Rodriguez&#039;, sexo=&#039;f&#039;, correo=&#039;teresamero@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04120759473&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;9906615&#039;\n\nupdate profesor set cedula=&#039;9906615&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TCv&#039;, profesion=&#039;41&#039; where cedula=&#039;9906615&#039;
1456944382	Nombre Apellido (12345678)	Se modificó al profesor <strong>Leticia Mogollón (5952723)</strong>	update persona set cedula=&#039;5952723&#039;, nombre=&#039;Leticia&#039;, &quot;segundoNombre&quot;=&#039;Del Carmen&#039;, apellido=&#039;Mogollón&#039;, &quot;segundoApellido&quot;=&#039;De Chalbaud&#039;, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;5952723&#039;\n\nupdate profesor set cedula=&#039;5952723&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;41&#039; where cedula=&#039;5952723&#039;
1456944492	Nombre Apellido (12345678)	Se modificó al profesor <strong>Leticia Mogollón (5952723)</strong>	update persona set cedula=&#039;5952723&#039;, nombre=&#039;Leticia&#039;, &quot;segundoNombre&quot;=&#039;Del Carmen&#039;, apellido=&#039;Mogollón&#039;, &quot;segundoApellido&quot;=&#039;De Chalbaud&#039;, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;5952723&#039;\n\nupdate profesor set cedula=&#039;5952723&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;38&#039; where cedula=&#039;5952723&#039;
1456944587	Nombre Apellido (12345678)	Se modificó al profesor <strong>Rafael Morales (2069838)</strong>	update persona set cedula=&#039;2069838&#039;, nombre=&#039;Rafael&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Morales&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;2069838&#039;\n\nupdate profesor set cedula=&#039;2069838&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;13&#039; where cedula=&#039;2069838&#039;
1456944749	Nombre Apellido (12345678)	Se modificó al profesor <strong>Velia Nieto (7785696)</strong>	update persona set cedula=&#039;7785696&#039;, nombre=&#039;Velia&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Nieto&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;7785696&#039;\n\nupdate profesor set cedula=&#039;7785696&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;43&#039; where cedula=&#039;7785696&#039;
1456944829	Nombre Apellido (12345678)	Se modificó al profesor <strong>Dulce Peña (10108462)</strong>	update persona set cedula=&#039;10108462&#039;, nombre=&#039;Dulce&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Peña&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;10108462&#039;\n\nupdate profesor set cedula=&#039;10108462&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TCv&#039;, profesion=&#039;43&#039; where cedula=&#039;10108462&#039;
1456944927	Nombre Apellido (12345678)	Se modificó al profesor <strong>William Peña (8034298)</strong>	update persona set cedula=&#039;8034298&#039;, nombre=&#039;William&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Peña&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8034298&#039;\n\nupdate profesor set cedula=&#039;8034298&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;23&#039; where cedula=&#039;8034298&#039;
1456945062	Nombre Apellido (12345678)	Se modificó al profesor <strong>Yimel Perotti (84492794)</strong>	update persona set cedula=&#039;84492794&#039;, nombre=&#039;Yimel&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Perotti&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;84492794&#039;\n\nupdate profesor set cedula=&#039;84492794&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;54&#039; where cedula=&#039;84492794&#039;
1456945242	Nombre Apellido (12345678)	Se agregó al profesor <strong>Francia Ochea (11953708)</strong>	insert into persona values(&#039;11953708&#039;, &#039;Francia&#039;, null, &#039;Ochea&#039;, null, &#039;f&#039;, &#039;inicialnombreapellido@uptm.edu.ve&#039;, &#039;Sin Asignar&#039;, &#039;0000-0000000&#039;, null)\n\ninsert into profesor values(&#039;11953708&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;TC&#039;, &#039;29&#039;)
1456945366	Nombre Apellido (12345678)	Se modificó al profesor <strong>Pedro Ramírez (8033769)</strong>	update persona set cedula=&#039;8033769&#039;, nombre=&#039;Pedro&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Ramírez&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8033769&#039;\n\nupdate profesor set cedula=&#039;8033769&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;29&#039; where cedula=&#039;8033769&#039;
1456945464	Nombre Apellido (12345678)	Se agregó al profesor <strong>Javic Gonzalez (8045120)</strong>	insert into persona values(&#039;8045120&#039;, &#039;Javic&#039;, &#039;Alberto&#039;, &#039;Gonzalez&#039;, null, &#039;m&#039;, &#039;inicialnombreapellido@uptm.edu.ve&#039;, &#039;Sin Asignar&#039;, &#039;0000-0000000&#039;, null)\n\ninsert into profesor values(&#039;8045120&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;MT&#039;, &#039;43&#039;)
1456945519	Nombre Apellido (12345678)	Se modificó al profesor <strong>Leila Ruiz (9874227)</strong>	update persona set cedula=&#039;9874227&#039;, nombre=&#039;Leila&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Ruiz&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;9874227&#039;\n\nupdate profesor set cedula=&#039;9874227&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;43&#039; where cedula=&#039;9874227&#039;
1456945572	Nombre Apellido (12345678)	Se modificó al profesor <strong>Carlos Sarmiento (11705856)</strong>	update persona set cedula=&#039;11705856&#039;, nombre=&#039;Carlos&#039;, &quot;segundoNombre&quot;=&#039;Luis&#039;, apellido=&#039;Sarmiento&#039;, &quot;segundoApellido&quot;=&#039;Fernandez&#039;, sexo=&#039;m&#039;, correo=&#039;sarmiento.11@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04165763133&#039;, &quot;telefonoFijo&quot;=&#039;02742213623&#039; where cedula=&#039;11705856&#039;\n\nupdate profesor set cedula=&#039;11705856&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;23&#039; where cedula=&#039;11705856&#039;
1456945667	Nombre Apellido (12345678)	Se modificó al profesor <strong>Jean Zambrano (14589482)</strong>	update persona set cedula=&#039;14589482&#039;, nombre=&#039;Jean&#039;, &quot;segundoNombre&quot;=&#039;Carlos&#039;, apellido=&#039;Zambrano&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;14589482&#039;\n\nupdate profesor set cedula=&#039;14589482&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;23&#039; where cedula=&#039;14589482&#039;
1456945780	Nombre Apellido (12345678)	Se modificó al profesor <strong>Erenia Escalona (13499843)</strong>	update persona set cedula=&#039;13499843&#039;, nombre=&#039;Erenia&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Escalona&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;13499843&#039;\n\nupdate profesor set cedula=&#039;13499843&#039;, categoria=&#039;Aux&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;45&#039; where cedula=&#039;13499843&#039;
1456945851	Nombre Apellido (12345678)	Se modificó al profesor <strong>Luis Ramírez (10716040)</strong>	update persona set cedula=&#039;10716040&#039;, nombre=&#039;Luis&#039;, &quot;segundoNombre&quot;=&#039;Fermin&#039;, apellido=&#039;Ramírez&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;10716040&#039;\n\nupdate profesor set cedula=&#039;10716040&#039;, categoria=&#039;Aux&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;45&#039; where cedula=&#039;10716040&#039;
1456946003	Nombre Apellido (12345678)	Se agregó al profesor <strong>Yuzmary Plaza (18620054)</strong>	insert into persona values(&#039;18620054&#039;, &#039;Yuzmary&#039;, null, &#039;Plaza&#039;, &#039;Briceño&#039;, &#039;f&#039;, &#039;inicialnombreapellido@uptm.edu&#039;, &#039;Sin Asignar&#039;, &#039;0000-0000000&#039;, null)\n\ninsert into profesor values(&#039;18620054&#039;, &#039;Aux&#039;, &#039;1&#039;, &#039;MT&#039;, &#039;45&#039;)
1456946119	Nombre Apellido (12345678)	Se modificó al profesor <strong>Gilmer Rondón (15295462)</strong>	update persona set cedula=&#039;15295462&#039;, nombre=&#039;Gilmer&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Rondón&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;m&#039;, correo=&#039;inicialnombreapellido@uptm.edu&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;15295462&#039;\n\nupdate profesor set cedula=&#039;15295462&#039;, categoria=&#039;Aux&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;45&#039; where cedula=&#039;15295462&#039;
1456946134	Nombre Apellido (12345678)	Se modificó al profesor <strong>Rosmary Salinas (18618150)</strong>	update persona set cedula=&#039;18618150&#039;, nombre=&#039;Rosmary&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Salinas&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;18618150&#039;\n\nupdate profesor set cedula=&#039;18618150&#039;, categoria=&#039;Aux&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;45&#039; where cedula=&#039;18618150&#039;
1456946699	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Fisiologia</strong>	update &quot;unidadCurricular&quot; set id=&#039;91201&#039;, nombre=&#039;Fisiologia&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91201&#039;
1456946724	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Anatomía Radiológica</strong>	update &quot;unidadCurricular&quot; set id=&#039;91105&#039;, nombre=&#039;Anatomía Radiológica&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91105&#039;
1456946766	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Uso Farmacos En La Radiologia</strong>	update &quot;unidadCurricular&quot; set id=&#039;91301&#039;, nombre=&#039;Uso Farmacos en la Radiología&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91301&#039;
1456946817	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Radiologia Legal</strong>	update &quot;unidadCurricular&quot; set id=&#039;91401&#039;, nombre=&#039;Radiología Legal&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91401&#039;
1456946862	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Servicio Comunitario</strong>	update &quot;unidadCurricular&quot; set id=&#039;91501&#039;, nombre=&#039;Servicio Comunitario&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91501&#039;
1456946963	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Terminologia Medica</strong>	update &quot;unidadCurricular&quot; set id=&#039;91106&#039;, nombre=&#039;Terminología Médica&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91106&#039;
1456946983	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Etica</strong>	update &quot;unidadCurricular&quot; set id=&#039;91202&#039;, nombre=&#039;Etica&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91202&#039;
1456947289	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva Ii</strong>	update &quot;unidadCurricular&quot; set id=&#039;91402&#039;, nombre=&#039;Electiva II&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91402&#039;
1456947315	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Politicas Publicas</strong>	update &quot;unidadCurricular&quot; set id=&#039;91502&#039;, nombre=&#039;Políticas Publicas&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91502&#039;
1456947928	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Atencion Al Paciente</strong>	update &quot;unidadCurricular&quot; set id=&#039;91107&#039;, nombre=&#039;Atencion al Paciente&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;91107&#039;
1456948034	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Fisiologia</strong>	update &quot;unidadCurricular&quot; set id=&#039;91201&#039;, nombre=&#039;Fisiología&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91201&#039;
1456948068	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Uso Farmacos en la Radiología</strong>	update &quot;unidadCurricular&quot; set id=&#039;91301&#039;, nombre=&#039;Uso de Fármacos en la Radiología&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91301&#039;
1456948112	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Etica</strong>	update &quot;unidadCurricular&quot; set id=&#039;91202&#039;, nombre=&#039;Ética&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91202&#039;
1456948400	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva I</strong>	update &quot;unidadCurricular&quot; set id=&#039;91302&#039;, nombre=&#039;Electiva I&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91302&#039;
1456948599	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Computacion General</strong>	update &quot;unidadCurricular&quot; set id=&#039;91101&#039;, nombre=&#039;Computación General&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91101&#039;
1456949085	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Atencion al Paciente</strong>	update &quot;unidadCurricular&quot; set id=&#039;91107&#039;, nombre=&#039;Atención al Paciente&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91107&#039;
1456949165	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Deporte Y Cultura</strong>	update &quot;unidadCurricular&quot; set id=&#039;91103&#039;, nombre=&#039;Deporte y Cultura&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91103&#039;
1456949185	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Fisica De La Radiologia</strong>	update &quot;unidadCurricular&quot; set id=&#039;91102&#039;, nombre=&#039;Física de la Radiologia&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91102&#039;
1456949249	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Física de la Radiologia</strong>	update &quot;unidadCurricular&quot; set id=&#039;91102&#039;, nombre=&#039;Física de la Radiología&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91102&#039;
1456949290	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Computación General</strong>	update &quot;unidadCurricular&quot; set id=&#039;91101&#039;, nombre=&#039;Computación Aplicada a la Radiología&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91101&#039;
1456949307	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Radiologia I</strong>	update &quot;unidadCurricular&quot; set id=&#039;91104&#039;, nombre=&#039;Radiología I&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91104&#039;
1456949353	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Psicologia</strong>	update &quot;unidadCurricular&quot; set id=&#039;91203&#039;, nombre=&#039;Psicología&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91203&#039;
1456949371	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Matematica</strong>	update &quot;unidadCurricular&quot; set id=&#039;91204&#039;, nombre=&#039;Matemática&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91204&#039;
1456949410	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Redaccion De Informes</strong>	update &quot;unidadCurricular&quot; set id=&#039;91207&#039;, nombre=&#039;Redaccion de Informes&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91207&#039;
1456949427	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Radiologia Ii</strong>	update &quot;unidadCurricular&quot; set id=&#039;91206&#039;, nombre=&#039;Radiología II&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91206&#039;
1456949502	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Uso de Fármacos en la Radiología</strong>	update &quot;unidadCurricular&quot; set id=&#039;91301&#039;, nombre=&#039;Uso de Fármacos en Radiología&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91301&#039;
1456949535	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Gerencia Servicio Radiologico</strong>	update &quot;unidadCurricular&quot; set id=&#039;91303&#039;, nombre=&#039;Gerencia de Servicios Radiológicos&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91303&#039;
1456949606	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Estadistica Aplicada</strong>	update &quot;unidadCurricular&quot; set id=&#039;91304&#039;, nombre=&#039;Estadística Aplicada&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91304&#039;
1456949629	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Proteccion Radiologica I</strong>	update &quot;unidadCurricular&quot; set id=&#039;91305&#039;, nombre=&#039;Protección Radiológica I&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91305&#039;
1456949660	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Practicas Radiograficas I</strong>	update &quot;unidadCurricular&quot; set id=&#039;91307&#039;, nombre=&#039;Prácticas Radiológicas I&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91307&#039;
1456949685	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Radiologia Iii</strong>	update &quot;unidadCurricular&quot; set id=&#039;91306&#039;, nombre=&#039;Radiologia III&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91306&#039;
1456950081	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Metodologia Investigacion I</strong>	update &quot;unidadCurricular&quot; set id=&#039;91403&#039;, nombre=&#039;Metodología de la Investigación I&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91403&#039;
1456950109	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Epidemiologia</strong>	update &quot;unidadCurricular&quot; set id=&#039;91404&#039;, nombre=&#039;Epidemiología&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91404&#039;
1456950138	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Proteccion Radiologica Ii</strong>	update &quot;unidadCurricular&quot; set id=&#039;91405&#039;, nombre=&#039;Protección Radiológica II&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91405&#039;
1456950185	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Practicas Radiograficas Ii</strong>	update &quot;unidadCurricular&quot; set id=&#039;91407&#039;, nombre=&#039;Prácticas Radiográficas II&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91407&#039;
1456950256	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Radiologia Iv</strong>	update &quot;unidadCurricular&quot; set id=&#039;91406&#039;, nombre=&#039;Radiología IV&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91406&#039;
1456950300	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Políticas Publicas</strong>	update &quot;unidadCurricular&quot; set id=&#039;91502&#039;, nombre=&#039;Políticas Públicas&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91502&#039;
1456950360	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Metodologia Investigacion Ii</strong>	update &quot;unidadCurricular&quot; set id=&#039;91503&#039;, nombre=&#039;Metodología Investigación II&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91503&#039;
1456950387	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Gestion En Salud</strong>	update &quot;unidadCurricular&quot; set id=&#039;91504&#039;, nombre=&#039;Gestión en Salud&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91504&#039;
1456950412	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Sociologia De La Salud</strong>	update &quot;unidadCurricular&quot; set id=&#039;91505&#039;, nombre=&#039;Sociología de la Salud&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91505&#039;
1456950446	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Practicas Radiograficas Iii</strong>	update &quot;unidadCurricular&quot; set id=&#039;91507&#039;, nombre=&#039;Prácticas Radiolócas III&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91507&#039;
1456950468	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Prácticas Radiolócas III</strong>	update &quot;unidadCurricular&quot; set id=&#039;91507&#039;, nombre=&#039;Prácticas Radiológicas III&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91507&#039;
1456950489	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Radiologia V</strong>	update &quot;unidadCurricular&quot; set id=&#039;91506&#039;, nombre=&#039;Radiología V&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91506&#039;
1456950537	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Pasantias</strong>	update &quot;unidadCurricular&quot; set id=&#039;91602&#039;, nombre=&#039;Pasantías&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91602&#039;
1456950549	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Trabajo Especial De Grado</strong>	update &quot;unidadCurricular&quot; set id=&#039;91601&#039;, nombre=&#039;Trabajo Especial de Grado&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91601&#039;
1456952124	Nombre Apellido (12345678)	Se agregó la malla <strong>R-2010</strong>	insert into malla values(&#039;R-2010&#039;, &#039;2016-03-01&#039;) returning id
1456952239	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Prácticas Radiográficas II</strong>	update &quot;unidadCurricular&quot; set id=&#039;91407&#039;, nombre=&#039;Prácticas Radiológicas II&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;49&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;91407&#039;
1456956053	Nombre Apellido (12345678)	Se modificó la carrera <strong>PNF Seguridad Alimentaria Y Cultura Nutricional</strong>	update carrera set id=&#039;09&#039;, nombre=&#039;PNF Seguridad Alimentaria Y Cultura Nutricional&#039;, &quot;idArea&quot;=&#039;3&#039; where id=&#039;09&#039;
1456956145	Nombre Apellido (12345678)	Se agregó al profesor <strong>Yelibeth Gavidea (9474618)</strong>	insert into persona values(&#039;9474618&#039;, &#039;Yelibeth&#039;, null, &#039;Gavidea&#039;, null, &#039;f&#039;, &#039;inicialnombreapellido@uptm.edu.ve&#039;, &#039;Sin asignar&#039;, &#039;0000-0000000&#039;, null)\n\ninsert into profesor values(&#039;9474618&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;MT&#039;, &#039;29&#039;)
1456956164	Nombre Apellido (12345678)	Se modificó al profesor <strong>Yelibeth Gavidea (9474618)</strong>	update persona set cedula=&#039;9474618&#039;, nombre=&#039;Yelibeth&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Gavidea&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;9474618&#039;\n\nupdate profesor set cedula=&#039;9474618&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;29&#039; where cedula=&#039;9474618&#039;
1456956261	Nombre Apellido (12345678)	Se modificó al profesor <strong>Edward Rey (17129049)</strong>	update persona set cedula=&#039;17129049&#039;, nombre=&#039;Edward&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Rey&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;17129049&#039;\n\nupdate profesor set cedula=&#039;17129049&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TCv&#039;, profesion=&#039;29&#039; where cedula=&#039;17129049&#039;
1456956318	Nombre Apellido (12345678)	Se modificó al profesor <strong>Gerardo Molina (10172170)</strong>	update persona set cedula=&#039;10172170&#039;, nombre=&#039;Gerardo&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Molina&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;10172170&#039;\n\nupdate profesor set cedula=&#039;10172170&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TCv&#039;, profesion=&#039;29&#039; where cedula=&#039;10172170&#039;
1456956385	Nombre Apellido (12345678)	Se modificó al profesor <strong>Noraida Gómez (11036485)</strong>	update persona set cedula=&#039;11036485&#039;, nombre=&#039;Noraida&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Gómez&#039;, &quot;segundoApellido&quot;=&#039;Ojeda&#039;, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;11036485&#039;\n\nupdate profesor set cedula=&#039;11036485&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;32&#039; where cedula=&#039;11036485&#039;
1456956496	Nombre Apellido (12345678)	Se agregó al profesor <strong>Hefzi Ba Gutierrez (20199965)</strong>	insert into persona values(&#039;20199965&#039;, &#039;Hefzi Ba&#039;, null, &#039;Gutierrez&#039;, null, &#039;f&#039;, &#039;inicialnombreapellido@uptm.edu.ve&#039;, &#039;Sin asignar&#039;, &#039;0000-0000000&#039;, null)\n\ninsert into profesor values(&#039;20199965&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;MT&#039;, &#039;29&#039;)
1456956615	Nombre Apellido (12345678)	Se agregó al profesor <strong>Maryuri Manrrique (12348836)</strong>	insert into persona values(&#039;12348836&#039;, &#039;Maryuri&#039;, null, &#039;Manrrique&#039;, null, &#039;f&#039;, &#039;inicialnombreapellido@uptm.edu.ve&#039;, &#039;Sin asignar&#039;, &#039;0000-0000000&#039;, null)\n\ninsert into profesor values(&#039;12348836&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;TCv&#039;, &#039;29&#039;)
1456959646	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Introducción a la Biología</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90001&#039;, &#039;Introducción a la Biología&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456959693	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Introducción a la Química</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90002&#039;, &#039;Introducción a la Química&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456959828	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Historia de la Salud como Campo de Investigación</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90003&#039;, &#039;Historia de la Salud como Campo de Investigación&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456959907	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Aritmética y Pensamiento Estratégico</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90004&#039;, &#039;Aritmética y Pensamiento Estratégico&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456959975	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Nuevo Estado Social Demacrático de Derecho y Justicia</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90005&#039;, &#039;Nuevo Estado Social Demacrático de Derecho y Justicia&#039;, false, &#039;09&#039;, &#039;3&#039;)
1456960022	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Ética y Valores del Socialismo del Siglo XXI</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90006&#039;, &#039;Ética y Valores del Socialismo del Siglo XXI&#039;, false, &#039;09&#039;, &#039;5&#039;)
1456960438	Nombre Apellido (12345678)	Se agregó la estructura <strong>PNF Semestral</strong>	insert into estructura values(default, &#039;PNF Semestral&#039;, &#039;\n\t\t{\n\t\t\t&quot;periodos&quot; : [\n\t\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Trayecto Inicial&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;T0&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : &quot;3&quot;,\n\t\t\t\t\t&quot;subperiodos&quot; : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Trayecto 1&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;T1&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : false,\n\t\t\t\t\t&quot;subperiodos&quot; : [\n\t\t\t\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre 1&quot;,\n\t\t\t\t\t\t\t&quot;id&quot; : &quot;s1&quot;,\n\t\t\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre 2&quot;,\n\t\t\t\t\t\t\t&quot;id&quot; : &quot;s2&quot;,\n\t\t\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Trayecto 2&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;T2&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : false,\n\t\t\t\t\t&quot;subperiodos&quot; : [\n\t\t\t\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre 1&quot;,\n\t\t\t\t\t\t\t&quot;id&quot; : &quot;s1&quot;,\n\t\t\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre 2&quot;,\n\t\t\t\t\t\t\t&quot;id&quot; : &quot;s2&quot;,\n\t\t\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Trayecto 3&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;T3&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : false,\n\t\t\t\t\t&quot;subperiodos&quot; : [\n\t\t\t\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre 1&quot;,\n\t\t\t\t\t\t\t&quot;id&quot; : &quot;s1&quot;,\n\t\t\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre 2&quot;,\n\t\t\t\t\t\t\t&quot;id&quot; : &quot;s2&quot;,\n\t\t\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Trayecto 4&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;T4&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : false,\n\t\t\t\t\t&quot;subperiodos&quot; : [\n\t\t\t\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre 1&quot;,\n\t\t\t\t\t\t\t&quot;id&quot; : &quot;s1&quot;,\n\t\t\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre 2&quot;,\n\t\t\t\t\t\t\t&quot;id&quot; : &quot;s2&quot;,\n\t\t\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\n\t\t\t\t}\n\t\t\t]\n\t\t}\n\t&#039;)
1456960536	Nombre Apellido (12345678)	Se modificó la carrera <strong>PNF Seguridad Alimentaria Y Cultura Nutricional</strong>	update carrera set id=&#039;09&#039;, nombre=&#039;PNF Seguridad Alimentaria Y Cultura Nutricional&#039;, &quot;idArea&quot;=&#039;3&#039; where id=&#039;09&#039;
1456961017	Nombre Apellido (12345678)	Se agregó la malla <strong>PNFSACN-2014</strong>	insert into malla values(&#039;PNFSACN-2014&#039;, &#039;2016-03-02&#039;) returning id
1456961190	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Estructuras Fisiológicas y Biológicas para la alimentación</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90011&#039;, &#039;Estructuras Fisiológicas y Biológicas para la alimentación&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456961256	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Nutrición en el Ser Humano y sus Implicaciones en la Salud</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90012&#039;, &#039;Nutrición en el Ser Humano y sus Implicaciones en la Salud&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456961388	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Participación Protagónica y Poder Popular</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90015&#039;, &#039;Participación Protagónica y Poder Popular&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456961431	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Herramientas de Investigación Acción Participativa</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90016&#039;, &#039;Herramientas de Investigación Acción Participativa&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456961481	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Caracterización y Diagóstico Colectivo Alimentario de la Comunidad</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90017&#039;, &#039;Caracterización y Diagóstico Colectivo Alimentario de la Comunidad&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456961542	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Prácticas de Alimentación</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90018&#039;, &#039;Prácticas de Alimentación&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456961581	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Unidad Estético, Lúdico, Cultural y Recreativa</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90019&#039;, &#039;Unidad Estético, Lúdico, Cultural y Recreativa&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456962333	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFSACN-2014</strong>	update malla set id=&#039;PNFSACN-2014&#039;, fecha=&#039;2016-03-02&#039; where id=&#039;PNFSACN-2014&#039;
1456963256	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Calidad e Inocuidad de los Alimentos para Garantizar la Seguridad y la Soberanía Alimentaría</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90021&#039;, &#039;Calidad e Inocuidad de los Alimentos para Garantizar la Seguridad y la Soberanía Alimentaría&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456963301	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Alimentación y Prácticas Saludables</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90022&#039;, &#039;Alimentación y Prácticas Saludables&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456963325	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Geohistoria d la Alimentación en Venezuela</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90023&#039;, &#039;Geohistoria d la Alimentación en Venezuela&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456963358	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Factores que Influyen en la Alimentación Humana</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90024&#039;, &#039;Factores que Influyen en la Alimentación Humana&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456963411	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>La Alimentación como un Acto de Soberanía y Seguridad Alimentaria</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90025&#039;, &#039;La Alimentación como un Acto de Soberanía y Seguridad Alimentaria&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456963445	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Experiencias de Integración Comunitaria</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90026&#039;, &#039;Experiencias de Integración Comunitaria&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456963500	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>IAP Contrucción y Ejecución Colectiva de Plan de Acción Comunitario</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90027&#039;, &#039;IAP Contrucción y Ejecución Colectiva de Plan de Acción Comunitario&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456963544	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Sistematización de la Experiencia</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90028&#039;, &#039;Sistematización de la Experiencia&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456963596	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Unidad Estético, Lúdico, Cultural, Deportiva</strong>	insert into &quot;unidadCurricular&quot; values(&#039;90029&#039;, &#039;Unidad Estético, Lúdico, Cultural, Deportiva&#039;, false, &#039;09&#039;, &#039;2&#039;)
1456963667	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Electiva</strong>	insert into &quot;unidadCurricular&quot; values(&#039;900210&#039;, &#039;Electiva&#039;, true, &#039;09&#039;, &#039;2&#039;)
1456964120	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFSACN-2014</strong>	update malla set id=&#039;PNFSACN-2014&#039;, fecha=&#039;2016-03-02&#039; where id=&#039;PNFSACN-2014&#039;
1456964417	Nombre Apellido (12345678)	Se creó el respaldo <strong>2016-03-02_19-50-16.sql</strong>	No SQL
1456964877	Nombre Apellido (12345678)	Se activó el nuevo periodo <strong>A-2016</strong>	insert into periodo values(default, &#039;A-2016&#039;, &#039;2016-03-02&#039;, &#039;2016-03-02&#039;, &#039;p&#039;, &#039;14&#039;)\n\ninsert into periodo values(default, &#039;A-2016&#039;, &#039;2016-03-02&#039;, &#039;2016-03-02&#039;, &#039;a&#039;, &#039;14&#039;)
1456965139	Nombre Apellido (12345678)	Se modificó el periodo <strong>2016-A</strong> de <strong>PNF Seguridad Alimentaria Y Cultura Nutricional - Ejido (PNF Semestral)</strong>	update periodo set id=&#039;2016-A&#039;, &quot;fechaInicio&quot;=&#039;2016-03-02&#039;, &quot;fechaFin&quot;=&#039;2016-03-02&#039; where id=&#039;A-2016&#039; and tipo=&#039;p&#039; and &quot;idECS&quot;=&#039;14&#039;\n\nupdate periodo set id=&#039;2016-A&#039;, &quot;fechaInicio&quot;=&#039;2016-03-02&#039;, &quot;fechaFin&quot;=&#039;2016-03-02&#039; where id=&#039;A-2016&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=&#039;14&#039;
1456965293	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T1-s1</strong> en <strong>PNF Seguridad Alimentaria Y Cultura Nutricional</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;14&#039;, (select &quot;ID&quot; from periodo where id=&#039;2016-A&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;4&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;09&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-s1&#039;)
1456965314	Nombre Apellido (12345678)	Se agregó la sección <strong>B</strong> del <strong>T2-s1</strong> en <strong>PNF Seguridad Alimentaria Y Cultura Nutricional</strong>	insert into seccion values(default, &#039;B&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;14&#039;, (select &quot;ID&quot; from periodo where id=&#039;2016-A&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;4&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;09&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T2-s1&#039;)
1456965788	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-s1</strong> al profesor <strong>Gavidea Yelibeth (9474618)</strong>	insert into carga values(default, false, null, &#039;9474618&#039;, &#039;74&#039;, null, &#039;90017&#039;)
1456965807	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-s1</strong> al profesor <strong>Gavidea Yelibeth (9474618)</strong>	insert into carga values(default, false, null, &#039;9474618&#039;, &#039;74&#039;, null, &#039;90018&#039;)
1456965830	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T2-s1</strong> al profesor <strong>Gavidea Yelibeth (9474618)</strong>	insert into carga values(default, false, null, &#039;9474618&#039;, &#039;75&#039;, null, &#039;90026&#039;)
1456965850	Nombre Apellido (12345678)	Se modificó la sección <strong>A</strong> del <strong>T2-s1</strong> en <strong>PNF Seguridad Alimentaria Y Cultura Nutricional</strong>	update seccion set id=&#039;A&#039;, turno=&#039;d&#039;, multiplicador=&#039;1&#039;, grupos=false, &quot;idPeriodo&quot;=(select &quot;ID&quot; from periodo where id=&#039;2016-A&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;4&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;09&#039; and &quot;idSede&quot;=&#039;3&#039;))), &quot;periodoEstructura&quot;=&#039;T2-s1&#039; where &quot;ID&quot;=&#039;75&#039;
1456965881	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-s1</strong> al profesor <strong>Rey Edward (17129049)</strong>	insert into carga values(default, false, null, &#039;17129049&#039;, &#039;74&#039;, null, &#039;90011&#039;)
1456965899	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-s1</strong> al profesor <strong>Rey Edward (17129049)</strong>	insert into carga values(default, false, null, &#039;17129049&#039;, &#039;74&#039;, null, &#039;90014&#039;)
1456965920	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-s1</strong> al profesor <strong>Rey Edward (17129049)</strong>	insert into carga values(default, false, null, &#039;17129049&#039;, &#039;74&#039;, null, &#039;90013&#039;)
1456965979	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-s1</strong> al profesor <strong>Molina Gerardo (10172170)</strong>	insert into carga values(default, false, null, &#039;10172170&#039;, &#039;74&#039;, null, &#039;90012&#039;)
1456965996	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-s1</strong> al profesor <strong>Gómez Noraida (11036485)</strong>	insert into carga values(default, false, null, &#039;11036485&#039;, &#039;74&#039;, null, &#039;90016&#039;)
1456966011	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-s1</strong> al profesor <strong>Gómez Noraida (11036485)</strong>	insert into carga values(default, false, null, &#039;11036485&#039;, &#039;75&#039;, null, &#039;90027&#039;)
1456966027	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-s1</strong> al profesor <strong>Gutierrez Hefzi Ba (20199965)</strong>	insert into carga values(default, false, null, &#039;20199965&#039;, &#039;75&#039;, null, &#039;90024&#039;)
1456966059	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-s1</strong> al profesor <strong>Gutierrez Hefzi Ba (20199965)</strong>	insert into carga values(default, false, null, &#039;20199965&#039;, &#039;75&#039;, null, &#039;90022&#039;)
1456966071	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-s1</strong> al profesor <strong>Manrrique Maryuri (12348836)</strong>	insert into carga values(default, false, null, &#039;12348836&#039;, &#039;75&#039;, null, &#039;90021&#039;)
1456966084	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-s1</strong> al profesor <strong>Manrrique Maryuri (12348836)</strong>	insert into carga values(default, false, null, &#039;12348836&#039;, &#039;75&#039;, null, &#039;90025&#039;)
1456971845	Nombre Apellido (12345678)	Se modificó el periodo <strong>2016-A</strong> de <strong>PNF Seguridad Alimentaria Y Cultura Nutricional - Ejido (PNF Semestral)</strong>	update periodo set id=&#039;2016-A&#039;, &quot;fechaInicio&quot;=&#039;2016-03-02&#039;, &quot;fechaFin&quot;=&#039;2016-03-02&#039; where id=&#039;2016-A&#039; and tipo=&#039;p&#039; and &quot;idECS&quot;=&#039;14&#039;\n\nupdate periodo set id=&#039;2016-A&#039;, &quot;fechaInicio&quot;=&#039;2016-02-15&#039;, &quot;fechaFin&quot;=&#039;2016-06-23&#039; where id=&#039;2016-A&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=&#039;14&#039;
1456973021	Nombre Apellido (12345678)	Se modificó la carrera <strong>PNF Fonoaudiología</strong>	update carrera set id=&#039;08&#039;, nombre=&#039;PNF Fonoaudiología&#039;, &quot;idArea&quot;=&#039;2&#039; where id=&#039;08&#039;
1456973652	Nombre Apellido (12345678)	Se agregó la malla <strong>PNFF-2013</strong>	insert into malla values(&#039;PNFF-2013&#039;, &#039;2016-03-02&#039;) returning id
1456973720	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva II</strong>	update &quot;unidadCurricular&quot; set id=&#039;ELECTIVA-222&#039;, nombre=&#039;Electiva II&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;08&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;ELECTIVA-222&#039;
1456973726	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva I</strong>	update &quot;unidadCurricular&quot; set id=&#039;ELECTIVA-122&#039;, nombre=&#039;Electiva I&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;08&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;ELECTIVA-122&#039;
1456973733	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva III</strong>	update &quot;unidadCurricular&quot; set id=&#039;ELECTIVA-322&#039;, nombre=&#039;Electiva III&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;08&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;ELECTIVA-322&#039;
1456973739	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva IV</strong>	update &quot;unidadCurricular&quot; set id=&#039;ELECTIVA-422&#039;, nombre=&#039;Electiva IV&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;08&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;ELECTIVA-422&#039;
1456973918	Nombre Apellido (12345678)	Se activó el nuevo periodo <strong>2015-B</strong>	insert into periodo values(default, &#039;2015-B&#039;, &#039;2016-03-02&#039;, &#039;2016-03-02&#039;, &#039;p&#039;, &#039;15&#039;)\n\ninsert into periodo values(default, &#039;2015-B&#039;, &#039;2015-05-18&#039;, &#039;2016-04-15&#039;, &#039;a&#039;, &#039;15&#039;)
1456973943	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T2-t1</strong> en <strong>PNF Fonoaudiología</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;15&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;08&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T2-t1&#039;)
1456974023	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t1</strong> al profesor <strong>Vasquez Rosa (8021736)</strong>	insert into carga values(default, false, null, &#039;8021736&#039;, &#039;76&#039;, null, &#039;PRACPROF-2120&#039;)
1456974065	Nombre Apellido (12345678)	Se modificó al profesor <strong>Rosa Vasquez (8021736)</strong>	update persona set cedula=&#039;8021736&#039;, nombre=&#039;Rosa&#039;, &quot;segundoNombre&quot;=&#039;Maria&#039;, apellido=&#039;Vasquez&#039;, &quot;segundoApellido&quot;=&#039;Falcon&#039;, sexo=&#039;f&#039;, correo=&#039;rosa_mariavf@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0416-2747257&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8021736&#039;\n\nupdate profesor set cedula=&#039;8021736&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;25&#039; where cedula=&#039;8021736&#039;
1456974390	Nombre Apellido (12345678)	Se agregó al profesor <strong>Jose Monsalve (5198826)</strong>	insert into persona values(&#039;5198826&#039;, &#039;Jose&#039;, null, &#039;Monsalve&#039;, null, &#039;f&#039;, &#039;inicialnombreapellido@uptm.edu.ve&#039;, &#039;Sin asignar&#039;, &#039;0000-0000000&#039;, null)\n\ninsert into profesor values(&#039;5198826&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;TCv&#039;, &#039;43&#039;)
1456974480	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t1</strong> al profesor <strong>Reggeti Odette (3661985)</strong>	insert into carga values(default, false, null, &#039;3661985&#039;, &#039;76&#039;, null, &#039;RECUPSFO-245&#039;)
1456974565	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t1</strong> al profesor <strong>Reggeti Odette (3661985)</strong>	insert into carga values(default, false, null, &#039;3661985&#039;, &#039;76&#039;, null, &#039;DIAGINAU-245&#039;)
1456974616	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t1</strong> al profesor <strong>Anzola Myriam (4356042)</strong>	insert into carga values(default, false, null, &#039;4356042&#039;, &#039;76&#039;, null, &#039;PROYSOCI-234&#039;)
1456974645	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t1</strong> al profesor <strong>Monsalve Jose (5198826)</strong>	insert into carga values(default, false, null, &#039;5198826&#039;, &#039;76&#039;, null, &#039;NEUROLIN-245&#039;)
1456974721	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t1</strong> al profesor <strong>Monsalve Jose (5198826)</strong>	insert into carga values(default, false, null, &#039;5198826&#039;, &#039;76&#039;, null, &#039;PATOCOHU-256&#039;)
1456974885	Nombre Apellido (12345678)	Se modificó al profesor <strong>Tani Diaz (10751767)</strong>	update persona set cedula=&#039;10751767&#039;, nombre=&#039;Tani&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Diaz&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;inicialnombreapellido@uptm.edu.ve&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0000-0000000&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;10751767&#039;\n\nupdate profesor set cedula=&#039;10751767&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;MT&#039;, profesion=&#039;23&#039; where cedula=&#039;10751767&#039;
1456975029	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t1</strong> al profesor <strong>Sosa Becky (19421996)</strong>	insert into carga values(default, false, &#039;Lenguaje de Señas Venezolanas II&#039;, &#039;19421996&#039;, &#039;76&#039;, null, &#039;ELECTIVA-222&#039;)
1456975116	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t1</strong> al profesor <strong>Diaz Tani (10751767)</strong>	insert into carga values(default, false, null, &#039;10751767&#039;, &#039;76&#039;, null, &#039;DIAGINLE-256&#039;)
1456975157	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t1</strong> al profesor <strong>Diaz Tani (10751767)</strong>	insert into carga values(default, false, null, &#039;10751767&#039;, &#039;76&#039;, null, &#039;DIAGINHA-256&#039;)
1457323382	Nombre Apellido (12345678)	Se eliminó el respaldo <strong>2016-01-27_06-42-59.sql</strong>	No SQL
1457323385	Nombre Apellido (12345678)	Se eliminó el respaldo <strong>2016-02-18_15-10-38.sql</strong>	No SQL
1457323387	Nombre Apellido (12345678)	Se eliminó el respaldo <strong>2016-02-18_18-23-44.sql</strong>	No SQL
\.


--
-- Data for Name: horario; Type: TABLE DATA; Schema: public; Owner: -
--

COPY horario (id_enlace, periodo, thora, chora, seccion, materia, profesor, carrera, salon, hora, id_bloque, id) FROM stdin;
\.


--
-- Name: mallaECS_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"mallaECS_id_seq"', 15, true);


--
-- Data for Name: observacion; Type: TABLE DATA; Schema: public; Owner: -
--

COPY observacion (contenido, "idCS", "idPeriodo", "idProfesor") FROM stdin;
\.


--
-- Name: periodo_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"periodo_ID_seq"', 22, true);


--
-- Data for Name: pertenece; Type: TABLE DATA; Schema: public; Owner: -
--

COPY pertenece ("idCS", "idProfesor") FROM stdin;
5	2149217
4	2287821
1	3048184
2	3048184
1	3485766
8	3661985
4	3692342
1	3727339
2	3767311
5	3767311
2	3791326
5	3791326
1	3791326
1	3830917
6	3910823
7	3939687
2	3990590
7	3992405
1	4194292
2	4194292
6	4319574
1	4327492
2	4327492
2	4353143
8	4356042
1	4397227
2	4472778
2	4488065
7	4488420
6	4489957
7	4489957
4	4489957
5	4490481
1	4492233
2	4492233
1	4492356
2	4583431
1	4633259
8	4768948
5	4769890
1	4769890
2	4769890
1	4953940
1	5021210
2	5021210
5	5021210
2	5201622
1	5206267
6	5206372
4	5355610
7	5355610
6	5447146
4	5447146
1	5466076
7	5507269
2	5559793
1	5561396
7	5740339
1	5753564
4	5753564
7	5794416
4	5794416
2	5863317
1	5952723
1	6558454
1	6940439
2	6940439
1	7080727
5	7080727
1	7326064
6	7525829
7	7648734
1	7648734
1	7775026
1	7824945
1	8000617
2	8002316
6	8002737
2	8004161
1	8005159
2	8006388
5	8012641
1	8019784
2	8019784
6	8019784
2	8020758
7	8021306
4	8021736
2	8021736
8	8021736
8	8021842
6	8022671
4	8022671
2	8024531
2	8025750
5	8025750
2	8026122
5	8026122
2	8026155
2	8027408
1	8029045
5	8029045
2	8029696
2	8031064
5	8031064
2	8032732
5	8034029
2	8034029
1	8034300
5	8034371
1	8034371
1	8035484
4	8037619
5	8038332
2	8038332
1	8038611
5	8039294
1	8039463
7	8039498
5	8039498
2	8040787
4	8040787
4	8041510
2	8041620
4	8042559
7	8044768
4	8044768
2	8045258
2	8045307
5	8045307
7	8046408
1	8046659
7	8048794
1	8079222
1	8080375
2	8080375
2	8080676
2	8087415
5	8331149
4	8336414
7	8656400
4	8656400
4	8683060
4	3966127
3	6547603
4	6547603
3	4054457
2	4054457
1	4054457
2	4491607
3	4491607
3	5124273
3	7832738
4	7934845
3	7934845
3	8002183
3	8006639
4	8006639
1	8006639
2	8006639
7	8006639
5	8006639
3	8084432
5	8720054
5	8958864
4	8958864
7	9028433
4	9028433
2	9198636
1	9198636
4	9234597
4	9472514
5	9473151
3	8028204
3	8027793
3	7168412
3	4491973
1	3574698
3	6953950
3	8044725
3	7509507
3	8029075
2	4484976
3	4484976
5	9473374
2	9473374
4	9473423
2	9473423
1	9473567
8	9473852
7	9476268
1	9478674
1	9501330
4	9906067
2	9906067
1	9906615
6	10092487
5	10092487
2	10092487
4	10100205
1	10102108
6	10102259
2	10102454
5	10108950
8	10109087
4	10314511
2	10712408
2	10713529
6	10714070
7	10715404
1	10718091
7	10718224
4	10718224
1	10718224
4	10718393
4	10720364
5	10720364
1	10720364
5	10797122
7	11067484
7	11108398
4	11108398
2	11319364
4	11460000
6	11460000
2	11460813
6	11462979
1	11462979
7	11463296
7	11465653
4	11467397
5	11467713
5	11468201
6	11783461
4	11912316
2	11952770
4	11952770
5	11959505
4	12048353
7	12346208
1	12353031
2	12458260
4	12776731
7	12776731
5	12776731
5	12779069
2	12779975
4	12817844
6	13013152
2	13014707
2	13098188
5	13098422
2	13098422
5	13098763
2	13098763
1	13098948
4	13099384
2	13099384
1	13099384
5	13524820
1	13524820
4	13525905
1	13649962
2	13803490
8	13966605
7	14267080
4	14267080
7	14267842
2	14400087
2	14589222
7	14700296
5	14839454
1	14917365
1	15142314
4	15175795
2	14400356
1	15223533
4	15381185
2	15516303
1	15516303
4	15516332
4	15565857
5	15622903
1	15754311
2	15754311
7	15754922
5	15756979
7	15920086
4	15920086
4	15920291
7	15920291
2	15921593
2	16020374
2	16199115
1	16199115
6	16285988
1	16285988
2	16377291
4	16964770
7	16964770
7	17130729
8	17238348
1	17456574
2	17456954
5	17456954
1	17456954
2	17499585
4	17523454
5	17664938
3	14268612
3	9474147
4	9475173
3	9475173
3	9476031
2	10087275
5	10087275
3	10087275
3	10104966
4	10104966
1	10104966
3	11705856
4	11705856
3	12722185
7	18581024
4	18581024
2	18796815
5	18796996
2	18796996
8	19421996
2	81423693
2	9240195
8	3966127
3	3966127
3	5655983
3	8047120
3	13966054
3	14917178
3	10256095
1	9499979
4	9499979
3	9499979
3	10898072
3	11960173
3	9389944
3	11303172
1	9389944
3	11956576
4	11956576
3	13014569
3	13648603
3	13524109
1	13524109
4	13524109
3	13967486
3	15296169
3	13723698
3	9201868
3	11954144
3	14401340
3	11466224
3	19096583
3	13477378
3	11957795
3	17027780
3	17663839
1	84570604
2	12352023
2	14916156
1	14916156
4	16317126
7	16317126
4	11955850
4	1010633
4	14281324
4	11953052
4	8223161
4	9643447
4	5871766
4	12722753
4	6729553
4	8039160
10	2288079
11	3966127
1	14131053
1	3062497
1	9081546
1	8041985
1	8013671
1	19440209
1	3908624
1	19592116
1	12779833
1	5201033
1	14917541
1	18962414
1	8022340
1	4589713
1	8013569
1	8023975
1	16964770
3	4489957
3	17254684
3	20039181
3	13966349
3	5239250
13	14916156
13	3966127
13	10617743
13	10092487
13	9475173
13	10687170
13	5198965
13	4489957
13	3991395
13	6966311
13	5200034
13	7482782
13	8044768
13	9602126
13	18308852
13	8656400
13	9906615
13	5952723
13	2069838
13	7785696
13	10108462
13	8034298
13	84492794
13	11953708
13	8033769
13	8045120
13	9874227
13	11705856
13	14589482
13	13499843
13	10716040
13	18620054
13	15295462
13	18618150
13	19279167
14	3309773
14	9474618
14	17129049
14	10172170
14	11036485
14	20199965
14	12348836
8	5198826
8	10751767
\.


--
-- Name: profesion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('profesion_id_seq', 54, true);


--
-- Data for Name: salones; Type: TABLE DATA; Schema: public; Owner: -
--

COPY salones (id, salon, cod_edi, tipo) FROM stdin;
\.


--
-- Name: salones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('salones_id_seq', 1, false);


--
-- Name: seccion_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"seccion_ID_seq"', 76, true);


--
-- Name: sede_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('sede_id_seq', 7, true);


--
-- Data for Name: ucMalla; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "ucMalla" (id, "horasTeoricas", "horasPracticas", tipo, periodo, "idUC", "idMalla") FROM stdin;
716	5	0	f	T3-t3	PIEL3	PNFI-2012
810	1	2	f	T2-s1	90021	PNFSACN-2014
811	5	0	f	T2-s1	90022	PNFSACN-2014
812	5	0	f	T2-s2	90022	PNFSACN-2014
290	4	0	f	T4-t1	PRO2749	PNFA-2014-PRO
283	3	0	f	T4-t2	FSC1244	PNFA-2014-PRO
216	4	0	f	T3-t2	PRE9033	PNFA-2010-2
813	5	0	f	T2-s1	90024	PNFSACN-2014
814	3	0	f	T2-s2	90023	PNFSACN-2014
815	5	0	f	T2-s2	90024	PNFSACN-2014
816	3	2	f	T2-s1	90025	PNFSACN-2014
817	1	2	f	T2-s1	90026	PNFSACN-2014
818	1	2	f	T2-s2	90026	PNFSACN-2014
819	2	3	f	T2-s1	90027	PNFSACN-2014
820	2	3	f	T2-s2	90027	PNFSACN-2014
821	2	0	f	T2-s2	90028	PNFSACN-2014
822	2	0	f	T2-s2	90029	PNFSACN-2014
823	2	0	f	T2-s2	900210	PNFSACN-2014
232	4	0	f	T3-t3	ADM6032	PNFA-2010-2
235	2	0	f	T3-t3	DAR9033	PNFA-2010-2
285	3	0	f	T4-t2	FEP9043	PNFA-2014-PRO
287	4	0	f	T4-t2	GP9043	PNFA-2014-PRO
289	3	0	f	T4-t2	IOP9043	PNFA-2014-PRO
261	1	2	t	T4-t2	PIA9043	PNFA-2014-PRO
291	4	0	f	T4-t2	PRO2749	PNFA-2014-PRO
294	4	0	f	T4-t2	SISF9043	PNFA-2014-PRO
262	4	0	f	T4-t3	ADD9043	PNFA-2014-PRO
295	3	0	f	T4-t3	CGA9043	PNFA-2014-PRO
296	3	0	f	T4-t3	ELEC49043	PNFA-2014-PRO
293	1	2	t	T4-t3	PIA9043	PNFA-2014-PRO
292	4	0	f	T4-t3	PRO2749	PNFA-2014-PRO
91	2	0	f	T0	DI6001	PNFA-2014
92	4	0	f	T0	GRPC6002	PNFA-2014
77	4	0	f	T0	MAD9013	PNFA-2014
90	4	0	f	T0	PNNC6002	PNFA-2014
98	4	0	f	T1-t1	CON15015	PNFA-2014
103	3	0	f	T1-t1	ELC6012	PNFA-2014
104	3	0	f	T1-t1	FSC12014	PNFA-2014
95	4	0	f	T1-t1	FAD15015	PNFA-2014
78	5	0	f	T1-t1	PRO27019	PNFA-2014
101	3	0	f	T1-t1	EOE6012	PNFA-2014
102	2	2	t	T1-t1	TIC6012	PNFA-2014
99	4	0	f	T1-t2	CON15015	PNFA-2014
79	4	0	f	T1-t2	EST6012	PNFA-2014
105	3	0	f	T1-t2	FSC12014	PNFA-2014
96	4	0	f	T1-t2	FAD15015	PNFA-2014
106	4	0	f	T1-t2	MAJ6012	PNFA-2014
93	5	0	f	T1-t2	PRO27019	PNFA-2014
100	4	0	f	T1-t3	CON15015	PNFA-2014
108	4	0	f	T1-t3	DFC9013	PNFA-2014
97	4	0	f	T1-t3	FAD15015	PNFA-2014
80	4	0	f	T1-t3	OFI9013	PNFA-2014
94	5	0	f	T1-t3	PRO27019	PNFA-2014
107	4	0	f	T1-t3	TPM9013	PNFA-2014
111	4	0	f	T2-t1	CON150152	PNFA-2014
113	3	0	f	T2-t1	FSC12024	PNFA-2014
115	4	0	f	T2-t1	FDE9023	PNFA-2014
120	3	0	f	T2-t1	GEA6022	PNFA-2014
119	3	0	f	T2-t1	MAJ6022	PNFA-2014
117	4	0	f	T2-t1	OYS9023	PNFA-2014
81	4	0	f	T2-t1	PRYII27029	PNFA-2014
196	3	0	f	T2-t2	OYS9023	PNFA-2010-2
207	6	0	f	T2-t2	PRO57019	PNFA-2010-2
199	3	0	f	T2-t2	THAT9023	PNFA-2010-2
210	3	0	f	T2-t3	PCG3011	PNFA-2010-2
195	4	0	f	T2-t3	CON12024	PNFA-2010-2
209	4	0	f	T2-t3	PDF3012	PNFA-2010-2
201	3	0	f	T2-t3	ELEC29023	PNFA-2010-2
204	3	0	f	T2-t3	FSC18026	PNFA-2010-2
197	3	0	f	T2-t3	OYS9023	PNFA-2010-2
192	3	0	f	T2-t3	SHA9023	PNFA-2010-2
157	4	0	f	T0	AMS6002	PNFA-2014
112	4	0	f	T2-t2	CON150152	PNFA-2014
124	3	0	f	T2-t2	DFC9023	PNFA-2014
114	3	0	f	T2-t2	FSC12024	PNFA-2014
116	4	0	f	T2-t2	FDE9023	PNFA-2014
82	4	0	f	T2-t2	GTH9023	PNFA-2014
118	4	0	f	T2-t2	OYS9023	PNFA-2014
122	3	0	f	T2-t2	PPP9023	PNFA-2014
109	4	0	f	T2-t2	PRYII27029	PNFA-2014
126	4	0	f	T2-t3	ADC9023	PNFA-2014
170	3	0	f	T0	DIE6002	PNFA-2010-2
168	3	0	f	T0	GRPC3001	PNFA-2010-2
167	4	0	f	T0	PRO6002	PNFA-2010-2
169	4	0	f	T0	MAT6002	PNFA-2010-2
164	4	0	f	T0	PNNC9003	PNFA-2010-2
180	4	0	f	T1-t1	CON12014	PNFA-2010-2
202	3	0	f	T2-t1	FSC18026	PNFA-2010-2
212	4	0	f	T2-t1	MLO0602	PNFA-2010-2
206	6	0	f	T2-t1	PRO57019	PNFA-2010-2
198	3	0	f	T2-t1	THAT9023	PNFA-2010-2
211	2	2	t	T2-t1	PTI6022	PNFA-2010-2
214	4	0	f	T2-t2	ADC6022	PNFA-2010-2
194	4	0	f	T2-t2	CON12024	PNFA-2010-2
200	3	0	f	T2-t2	ELEC29023	PNFA-2010-2
203	3	0	f	T2-t2	FSC18026	PNFA-2010-2
125	3	0	f	T2-t3	DFC9023	PNFA-2014
127	3	0	f	T2-t3	ELC6002	PNFA-2014
121	4	0	f	T2-t3	GTH9023	PNFA-2014
83	3	0	f	T2-t3	HDI9023	PNFA-2014
123	3	0	f	T2-t3	PPP9023	PNFA-2014
110	4	0	f	T2-t3	PRYII27029	PNFA-2014
136	4	0	f	T3-t1	AEF9033	PNFA-2014
135	3	0	f	T3-t1	COG6032	PNFA-2014
134	3	0	f	T3-t1	EST6032	PNFA-2014
130	4	0	f	T3-t1	FSC12034	PNFA-2014
132	4	0	f	T3-t1	PYG9033	PNFA-2014
84	4	0	f	T3-t1	PRO2739	PNFA-2014
85	3	0	f	T3-t2	ADP9033	PNFA-2014
131	4	0	f	T3-t2	FSC12034	PNFA-2014
139	4	0	f	T3-t2	HDI9033	PNFA-2014
133	4	0	f	T3-t2	PYG9033	PNFA-2014
128	4	0	f	T3-t2	PRO2739	PNFA-2014
138	3	0	f	T3-t2	SAD6032	PNFA-2014
140	4	0	f	T3-t3	ADC9033	PNFA-2014
137	3	0	f	T3-t3	ADP9033	PNFA-2014
86	3	0	f	T3-t3	ADM6032	PNFA-2014
141	3	0	f	T3-t3	ELC6032	PNFA-2014
129	4	0	f	T3-t3	PRO2739	PNFA-2014
146	4	0	f	T4-t1	ADF9043	PNFA-2014
144	3	0	f	T4-t1	FSC1244	PNFA-2014
147	3	0	f	T4-t1	FEP9043	PNFA-2014
151	4	0	f	T4-t1	GP9043	PNFA-2014
153	3	0	f	T4-t1	IOP9043	PNFA-2014
87	4	0	f	T4-t1	PRO2749	PNFA-2014
145	3	0	f	T4-t2	FSC1244	PNFA-2014
148	3	0	f	T4-t2	FEP9043	PNFA-2014
152	4	0	f	T4-t2	GP9043	PNFA-2014
154	3	0	f	T4-t2	IOP9043	PNFA-2014
149	1	2	t	T4-t2	PIA9043	PNFA-2014
142	4	0	f	T4-t2	PRO2749	PNFA-2014
88	4	0	f	T4-t2	SISF9043	PNFA-2014
89	4	0	f	T4-t3	ADD9043	PNFA-2014
156	3	0	f	T4-t3	CGA9043	PNFA-2014
155	3	0	f	T4-t3	ELEC6042	PNFA-2014
150	1	2	t	T4-t3	PIA9043	PNFA-2014
717	5	0	f	T4-t3	PIEL4	PNFI-2012
824	4	0	f	T2-t1	NEUROLIN-245	PNFF-2013
825	4	0	f	T2-t2	NEUROLIN-245	PNFF-2013
826	4	0	f	T2-t3	NEUROLIN-245	PNFF-2013
827	4	0	f	T2-t1	RECUPSFO-245	PNFF-2013
828	4	0	f	T2-t2	RECUPSFO-245	PNFF-2013
829	4	0	f	T2-t3	RECUPSFO-245	PNFF-2013
830	5	0	f	T2-t1	PATOCOHU-256	PNFF-2013
831	5	0	f	T2-t2	PATOCOHU-256	PNFF-2013
832	5	0	f	T2-t3	PATOCOHU-256	PNFF-2013
833	5	0	f	T2-t1	DIAGINLE-256	PNFF-2013
834	5	0	f	T2-t2	DIAGINLE-256	PNFF-2013
835	5	0	f	T2-t3	DIAGINLE-256	PNFF-2013
836	5	0	f	T2-t1	DIAGINHA-256	PNFF-2013
837	5	0	f	T2-t2	DIAGINHA-256	PNFF-2013
174	4	0	f	T1-t1	ES3011	PNFA-2010-2
175	3	0	f	T1-t1	FSC18016	PNFA-2010-2
394	4	0	f	T1-t1	CON12014	PNFA-2010-3
395	4	0	f	T1-t1	ES3011	PNFA-2010-3
396	3	0	f	T1-t1	FSC18016	PNFA-2010-3
397	4	0	f	T1-t1	FA12014	PNFA-2010-3
398	6	0	f	T1-t1	PRO570119	PNFA-2010-3
399	4	0	f	T1-t1	PTE3011	PNFA-2010-3
400	2	2	t	T1-t1	PTI6012	PNFA-2010-3
143	4	0	f	T4-t3	PRO2749	PNFA-2014
184	4	0	f	T1-t1	FA12014	PNFA-2010-2
189	6	0	f	T1-t1	PRO570119	PNFA-2010-2
178	4	0	f	T1-t1	PTE3011	PNFA-2010-2
183	2	2	t	T1-t1	PTI6012	PNFA-2010-2
181	4	0	f	T1-t2	CON12014	PNFA-2010-2
172	2	0	f	T1-t2	DAR9013	PNFA-2010-2
176	3	0	f	T1-t2	FSC18016	PNFA-2010-2
185	4	0	f	T1-t2	FA12014	PNFA-2010-2
208	6	0	f	T2-t3	PRO57019	PNFA-2010-2
229	4	0	f	T3-t1	ADP9033	PNFA-2010-2
233	4	0	f	T3-t1	AEF9032	PNFA-2010-2
228	4	0	f	T3-t1	TDR3031	PNFA-2010-2
222	3	0	f	T3-t1	FSC18036	PNFA-2010-2
220	4	0	f	T3-t1	IDI9033	PNFA-2010-2
226	3	0	f	T3-t1	PPL6032	PNFA-2010-2
217	6	0	f	T3-t1	PRO570319	PNFA-2010-2
215	4	0	f	T3-t1	PRE9033	PNFA-2010-2
838	5	0	f	T2-t3	DIAGINHA-256	PNFF-2013
389	3	0	f	T0	DIE6002	PNFA-2010-3
390	3	0	f	T0	GRPC3001	PNFA-2010-3
391	4	0	f	T0	PRO6002	PNFA-2010-3
230	4	0	f	T3-t2	ADP9033	PNFA-2010-2
231	4	0	f	T3-t2	ADM6032	PNFA-2010-2
234	2	0	f	T3-t2	DAR9033	PNFA-2010-2
223	3	0	f	T3-t2	FSC18036	PNFA-2010-2
221	4	0	f	T3-t2	IDI9033	PNFA-2010-2
227	3	0	f	T3-t2	PPL6032	PNFA-2010-2
218	6	0	f	T3-t2	PRO570319	PNFA-2010-2
392	4	0	f	T0	MAT6002	PNFA-2010-3
393	4	0	f	T0	PNNC9003	PNFA-2010-3
839	4	0	f	T2-t1	DIAGINAU-245	PNFF-2013
840	4	0	f	T2-t2	DIAGINAU-245	PNFF-2013
841	4	0	f	T2-t3	DIAGINAU-245	PNFF-2013
842	3	0	f	T2-t1	PROYSOCI-234	PNFF-2013
843	3	0	f	T2-t2	PROYSOCI-234	PNFF-2013
844	3	0	f	T2-t3	PROYSOCI-234	PNFF-2013
845	6	6	f	T2-t1	PRACPROF-2120	PNFF-2013
846	2	0	f	T2-t1	ELECTIVA-222	PNFF-2013
256	4	0	f	TT	ANM60T2	PNFA-2014-PRO
263	4	0	f	TT	SEM160T2	PNFA-2014-PRO
264	4	0	f	TT	SEM260T2	PNFA-2014-PRO
265	4	0	f	TT	EEP60T2	PNFA-2014-PRO
266	4	0	f	TT	GEA60T2	PNFA-2014-PRO
267	4	0	f	TT	PNC60T2	PNFA-2014-PRO
257	4	0	f	T3-t1	AEF9033	PNFA-2014-PRO
268	3	0	f	T3-t1	COG6032	PNFA-2014-PRO
269	3	0	f	T3-t1	EST6032	PNFA-2014-PRO
270	4	0	f	T3-t1	FSC12034	PNFA-2014-PRO
272	4	0	f	T3-t1	PYG9033	PNFA-2014-PRO
274	4	0	f	T3-t1	PRO2739	PNFA-2014-PRO
258	3	0	f	T3-t2	ADP9033	PNFA-2014-PRO
271	4	0	f	T3-t2	FSC12034	PNFA-2014-PRO
278	4	0	f	T3-t2	HDI9033	PNFA-2014-PRO
273	4	0	f	T3-t2	PYG9033	PNFA-2014-PRO
275	4	0	f	T3-t2	PRO2739	PNFA-2014-PRO
279	3	0	f	T3-t2	SAD6032	PNFA-2014-PRO
259	4	0	f	T3-t3	ADC9033	PNFA-2014-PRO
277	3	0	f	T3-t3	ADP9033	PNFA-2014-PRO
280	3	0	f	T3-t3	ADM6032	PNFA-2014-PRO
281	3	0	f	T3-t3	ELC6032	PNFA-2014-PRO
276	4	0	f	T3-t3	PRO2739	PNFA-2014-PRO
260	4	0	f	T4-t1	ADF9043	PNFA-2014-PRO
282	3	0	f	T4-t1	FSC1244	PNFA-2014-PRO
284	3	0	f	T4-t1	FEP9043	PNFA-2014-PRO
286	4	0	f	T4-t1	GP9043	PNFA-2014-PRO
288	3	0	f	T4-t1	IOP9043	PNFA-2014-PRO
205	3	0	f	T2-t1	CGA9023	PNFA-2010-2
224	3	0	f	T3-t3	FSC18036	PNFA-2010-2
219	6	0	f	T3-t3	PRO570319	PNFA-2010-2
225	2	2	t	T3-t3	TIC6032	PNFA-2010-2
252	4	0	f	T4-t1	ADF6042	PNFA-2010-2
243	6	0	f	T4-t1	PRO570419	PNFA-2010-2
236	4	0	f	T4-t1	AFPS6033	PNFA-2010-2
248	3	0	f	T4-t1	FSC18046	PNFA-2010-2
238	4	0	f	T4-t1	FEP9043	PNFA-2010-2
246	2	2	t	T4-t1	PP13041	PNFA-2010-2
253	4	0	f	T4-t2	ADF6042	PNFA-2010-2
247	3	0	f	T4-t2	PCG6042	PNFA-2010-2
244	6	0	f	T4-t2	PRO570419	PNFA-2010-2
237	4	0	f	T4-t2	AFPS6033	PNFA-2010-2
240	4	0	f	T4-t2	ELEC49043	PNFA-2010-2
249	3	0	f	T4-t2	FSC18046	PNFA-2010-2
239	4	0	f	T4-t2	FEP9043	PNFA-2010-2
254	3	0	f	T4-t2	SHDD9043	PNFA-2010-2
242	4	0	f	T4-t3	APAA3041	PNFA-2010-2
245	6	0	f	T4-t3	PRO570419	PNFA-2010-2
241	4	0	f	T4-t3	ELEC49043	PNFA-2010-2
250	3	0	f	T4-t3	FSC18046	PNFA-2010-2
255	3	0	f	T4-t3	SHDD9043	PNFA-2010-2
251	4	0	f	T4-t3	SIF6042	PNFA-2010-2
405	6	0	f	T1-t2	PRO570119	PNFA-2010-3
406	3	0	f	T1-t2	IDI9013	PNFA-2010-3
190	6	0	f	T1-t2	PRO570119	PNFA-2010-2
186	3	0	f	T1-t2	IDI9013	PNFA-2010-2
165	4	0	f	T1-t2	OF6012	PNFA-2010-2
179	4	0	f	T1-t2	PTE3011	PNFA-2010-2
182	4	0	f	T1-t3	CON12014	PNFA-2010-2
166	4	0	f	T1-t3	DFC6012	PNFA-2010-2
173	2	0	f	T1-t3	DAR9013	PNFA-2010-2
177	3	0	f	T1-t3	FSC18016	PNFA-2010-2
191	6	0	f	T1-t3	PRO570119	PNFA-2010-2
187	3	0	f	T1-t3	IDI9013	PNFA-2010-2
171	4	0	f	T1-t3	OF6012	PNFA-2010-2
188	2	0	f	T1-t3	TPM6012	PNFA-2010-2
213	4	0	f	T2-t1	ADC6022	PNFA-2010-2
193	4	0	f	T2-t1	CON12024	PNFA-2010-2
407	4	0	f	T1-t2	OF6012	PNFA-2010-3
408	4	0	f	T1-t2	PTE3011	PNFA-2010-3
409	4	0	f	T1-t3	CON12014	PNFA-2010-3
410	4	0	f	T1-t3	DFC6012	PNFA-2010-3
411	2	0	f	T1-t3	DAR9013	PNFA-2010-3
412	3	0	f	T1-t3	FSC18016	PNFA-2010-3
413	6	0	f	T1-t3	PRO570119	PNFA-2010-3
414	3	0	f	T1-t3	IDI9013	PNFA-2010-3
415	4	0	f	T1-t3	OF6012	PNFA-2010-3
416	4	0	f	T1-t3	TPM6012	PNFA-2010-3
417	4	0	f	T2-t1	CON12024	PNFA-2010-3
418	4	0	f	T2-t1	CGA9023	PNFA-2010-3
419	3	0	f	T2-t1	FSC18026	PNFA-2010-3
420	4	0	f	T2-t1	MLO0602	PNFA-2010-3
421	6	0	f	T2-t1	PRO57019	PNFA-2010-3
422	3	0	f	T2-t1	THAT9023	PNFA-2010-3
401	4	0	f	T1-t2	CON12014	PNFA-2010-3
402	2	0	f	T1-t2	DAR9013	PNFA-2010-3
403	3	0	f	T1-t2	FSC18016	PNFA-2010-3
404	4	0	f	T1-t2	FA12014	PNFA-2010-3
423	2	2	t	T2-t1	PTI6022	PNFA-2010-3
477	4	0	f	T2-t2	ADC6022	PNFA-2010-3
424	4	0	f	T2-t2	CON12024	PNFA-2010-3
425	4	0	f	T2-t2	ELEC29023	PNFA-2010-3
426	3	0	f	T2-t2	FSC18026	PNFA-2010-3
428	6	0	f	T2-t2	PRO57019	PNFA-2010-3
429	3	0	f	T2-t2	THAT9023	PNFA-2010-3
478	4	0	f	T2-t3	ADC6022	PNFA-2010-3
430	3	0	f	T2-t3	PCG3011	PNFA-2010-3
431	4	0	f	T2-t3	CON12024	PNFA-2010-3
432	3	0	f	T2-t3	PDF3012	PNFA-2010-3
433	4	0	f	T2-t3	ELEC29023	PNFA-2010-3
434	3	0	f	T2-t3	FSC18026	PNFA-2010-3
436	4	0	f	T2-t3	SHA9023	PNFA-2010-3
437	6	0	f	T2-t3	PRO57019	PNFA-2010-3
438	4	0	f	T3-t1	AEF9032	PNFA-2010-3
439	4	0	f	T3-t1	TDR3031	PNFA-2010-3
440	3	0	f	T3-t1	FSC18036	PNFA-2010-3
441	4	0	f	T3-t1	IDI9033	PNFA-2010-3
442	4	0	f	T3-t1	PPL6032	PNFA-2010-3
443	6	0	f	T3-t1	PRO570319	PNFA-2010-3
444	4	0	f	T3-t1	PRE9033	PNFA-2010-3
479	4	0	f	T3-t2	ADP9033	PNFA-2010-3
445	4	0	f	T3-t2	ADM6032	PNFA-2010-3
446	2	0	f	T3-t2	DAR9033	PNFA-2010-3
447	3	0	f	T3-t2	FSC18036	PNFA-2010-3
448	4	0	f	T3-t2	IDI9033	PNFA-2010-3
449	4	0	f	T3-t2	PPL6032	PNFA-2010-3
450	6	0	f	T3-t2	PRO570319	PNFA-2010-3
451	4	0	f	T3-t2	PRE9033	PNFA-2010-3
480	4	0	f	T3-t3	ADP9033	PNFA-2010-3
452	4	0	f	T3-t3	ADM6032	PNFA-2010-3
453	2	0	f	T3-t3	DAR9033	PNFA-2010-3
454	3	0	f	T3-t3	FSC18036	PNFA-2010-3
455	6	0	f	T3-t3	PRO570319	PNFA-2010-3
456	2	2	t	T3-t3	TIC6032	PNFA-2010-3
457	4	0	f	T4-t1	ADF6042	PNFA-2010-3
458	6	0	f	T4-t1	PRO570419	PNFA-2010-3
459	4	0	f	T4-t1	AFPS6033	PNFA-2010-3
460	3	0	f	T4-t1	FSC18046	PNFA-2010-3
461	4	0	f	T4-t1	FEP9043	PNFA-2010-3
462	2	2	t	T4-t1	PP13041	PNFA-2010-3
463	4	0	f	T4-t2	ADF6042	PNFA-2010-3
464	4	0	f	T4-t2	PCG6042	PNFA-2010-3
465	6	0	f	T4-t2	PRO570419	PNFA-2010-3
466	4	0	f	T4-t2	AFPS6033	PNFA-2010-3
467	4	0	f	T4-t2	ELEC49043	PNFA-2010-3
468	3	0	f	T4-t2	FSC18046	PNFA-2010-3
469	4	0	f	T4-t2	FEP9043	PNFA-2010-3
470	4	0	f	T4-t2	SHDD9043	PNFA-2010-3
471	4	0	f	T4-t3	APAA3041	PNFA-2010-3
472	6	0	f	T4-t3	PRO570419	PNFA-2010-3
473	4	0	f	T4-t3	ELEC49043	PNFA-2010-3
474	3	0	f	T4-t3	FSC18046	PNFA-2010-3
475	4	0	f	T4-t3	SHDD9043	PNFA-2010-3
476	4	0	f	T4-t3	SIF6042	PNFA-2010-3
489	2	1	f	T1-t1	AGBSD142	PNFAg
497	3	0	f	T1-t1	AGCGA142	PNFAg
495	3	0	f	T1-t1	AGDSRC142	PNFAg
486	1	2	f	T1-t1	AGPRA142	PNFAg
498	1	2	t	T1-t1	AGPRB142	PNFAg
481	4	4	f	T1-t1	AGPFI1166	PNFAg
492	3	0	f	T1-t1	AGSALC142	PNFAg
490	2	1	f	T1-t2	AGBSD142	PNFAg
496	3	0	f	T1-t2	AGDSRC142	PNFAg
499	3	0	f	T1-t2	AGFIA142	PNFAg
487	1	2	f	T1-t2	AGPRA142	PNFAg
484	4	4	f	T1-t2	AGPFI1166	PNFAg
482	1	2	t	T1-t2	AGQGA142	PNFAg
493	3	0	f	T1-t2	AGSALC142	PNFAg
491	2	1	f	T1-t3	AGBSD142	PNFAg
501	1	2	f	T1-t3	AGMAT142	PNFAg
483	3	0	f	T1-t3	AGPLA142	PNFAg
488	1	2	f	T1-t3	AGPRA142	PNFAg
500	1	2	t	T1-t3	AGPRBQ142	PNFAg
485	4	4	f	T1-t3	AGPFI1166	PNFAg
494	3	0	f	T1-t3	AGSALC142	PNFAg
732	5	0	f	T3-t1	PISO3	PNFI-2012-PRO
847	2	0	f	T2-t2	ELECTIVA-222	PNFF-2013
848	2	0	f	T2-t3	ELECTIVA-222	PNFF-2013
849	6	6	f	T2-t2	PRACPROF-2120	PNFF-2013
850	6	6	f	T2-t3	PRACPROF-2120	PNFF-2013
505	1	2	f	T2-t1	AGATMA242	PNFAg
508	1	2	f	T2-t1	AGBFSPV242	PNFAg
514	1	2	t	T2-t1	AGMIC242	PNFAg
515	3	0	f	T2-t1	AGORS242	PNFAg
502	4	4	f	T2-t1	AGPFII2166	PNFAg
516	1	2	f	T2-t1	AGSEA242	PNFAg
511	1	2	f	T2-t1	AGZFSPA242	PNFAg
519	1	2	f	T2-t2	AGAGC242	PNFAg
517	3	0	t	T2-t2	AGAGE242	PNFAg
506	1	2	f	T2-t2	AGATMA242	PNFAg
509	1	2	f	T2-t2	AGBFSPV242	PNFAg
520	1	2	f	T2-t2	AGDREV242	PNFAg
503	4	4	f	T2-t2	AGPFII2166	PNFAg
512	1	2	f	T2-t2	AGZFSPA242	PNFAg
518	3	0	t	T2-t3	AGAGE242	PNFAg
507	1	2	f	T2-t3	AGATMA242	PNFAg
510	1	2	f	T2-t3	AGBFSPV242	PNFAg
504	4	4	f	T2-t3	AGPFII2166	PNFAg
521	1	2	f	T2-t3	AGREA242	PNFAg
522	2	2	f	T2-t3	AGTCSI242	PNFAg
513	1	2	f	T2-t3	AGZFSPA242	PNFAg
530	2	1	f	T3-t1	AGAGR342	PNFAg
528	3	0	f	T3-t1	AGANM342	PNFAg
526	1	2	f	T3-t1	AGGAE342	PNFAg
531	1	2	f	T3-t1	AGMEIE342	PNFAg
532	1	2	f	T3-t1	AGOBTAA342	PNFAg
523	4	4	f	T3-t1	AGPFIII3166	PNFAg
533	1	2	f	T3-t2	AGANA342	PNFAg
529	3	0	f	T3-t2	AGANM342	PNFAg
527	1	2	f	T3-t2	AGGAE342	PNFAg
524	4	4	f	T3-t2	AGPFIII3166	PNFAg
534	1	2	f	T3-t3	AGANA342	PNFAg
525	4	4	f	T3-t3	AGPFIII3166	PNFAg
569	2	2	f	T1-t1	AGBSD162	PNFAg-2
570	4	0	f	T1-t1	AGCGA16	PNFAg-2
565	2	2	f	T1-t1	AGPRA162	PNFAg-2
571	2	2	t	T1-t1	AGPRB162	PNFAg-2
560	4	4	f	T1-t1	AGPFI1126	PNFAg-2
567	3	0	f	T1-t1	AGSALC14	PNFAg-2
572	4	0	f	T1-t2	AGFIA162	PNFAg-2
718	5	0	f	T3-t1	ACR003	PNFI-2012-PRO
721	2	0	f	T3-t1	PIFC3	PNFI-2012-PRO
724	5	0	f	T3-t1	PIIS3	PNFI-2012-PRO
727	5	0	f	T3-t1	PIMA3	PNFI-2012-PRO
537	1	2	f	T3-t2	AGMSA342	PNFAg
535	3	0	f	T3-t2	AGPSLC342	PNFAg
539	3	0	f	T3-t3	AGEPS342	PNFAg
538	1	2	f	T3-t3	AGMSA342	PNFAg
536	3	0	f	T3-t3	AGPSLC342	PNFAg
540	1	2	f	T3-t3	AGSRD342	PNFAg
541	1	2	f	T3-t3	AGSIP342	PNFAg
549	1	2	f	T4-t1	AGCTS442	PNFAg
546	3	0	f	T4-t1	AGEPS442	PNFAg
548	1	2	f	T4-t1	AGECR4C42	PNFAg
550	1	2	f	T4-t1	AGFMP442	PNFAg
551	1	2	f	T4-t1	AGMAP442	PNFAg
542	4	4	f	T4-t1	AGPFIV4166	PNFAg
729	6	0	f	T3-t1	PIPT3	PNFI-2012-PRO
719	5	0	f	T3-t2	ACR003	PNFI-2012-PRO
722	2	0	f	T3-t2	PIFC3	PNFI-2012-PRO
725	5	0	f	T3-t2	PIIS3	PNFI-2012-PRO
728	5	0	f	T3-t2	PIMA3	PNFI-2012-PRO
733	5	0	t	T3-t2	PIMB3	PNFI-2012-PRO
730	6	0	f	T3-t2	PIPT3	PNFI-2012-PRO
720	5	0	f	T3-t3	ACR003	PNFI-2012-PRO
561	4	0	f	T1-t2	AGMAA16	PNFAg-2
566	2	2	f	T1-t2	AGPRA162	PNFAg-2
563	4	4	f	T1-t2	AGPFI1126	PNFAg-2
573	2	2	t	T1-t2	AGQGA16	PNFAg-2
568	3	0	f	T1-t2	AGSALC14	PNFAg-2
574	2	2	f	T1-t3	AGBFV162	PNFAg-2
576	2	2	f	T1-t3	AGMEI162	PNFAg-2
562	4	0	f	T1-t3	AGPLA162	PNFAg-2
577	2	2	t	T1-t3	AGPRBQ162	PNFAg-2
564	4	4	f	T1-t3	AGPFI1126	PNFAg-2
575	2	2	f	T1-t3	AGZFA162	PNFAg-2
581	2	2	f	T2-t1	AGANA262	PNFAg-2
582	2	2	t	T2-t1	AGMCB262	PNFAg-2
583	4	0	f	T2-t1	AGORS242	PNFAg-2
580	2	2	f	T2-t1	AGSPV262	PNFAg-2
579	2	2	f	T2-t1	AGATMA246	PNFAg-2
589	4	0	f	T2-t2	AGAGE242	PNFAg-2
588	2	2	f	T2-t2	AGANA262	PNFAg-2
545	1	2	f	T4-t1	AGSCSNI442	PNFAg
552	1	2	f	T4-t2	AGECC442	PNFAg
555	1	2	f	T4-t2	AGECE442	PNFAg
556	1	2	f	T4-t2	AGHCCA442	PNFAg
554	3	0	f	T4-t2	AGPEP442	PNFAg
543	4	4	f	T4-t2	AGPFIV4166	PNFAg
547	1	2	f	T4-t2	AGSCSNI442	PNFAg
553	1	2	f	T4-t3	AGECC442	PNFAg
558	1	2	f	T4-t3	AGMEI442	PNFAg
557	3	0	f	T4-t3	AGPEP442	PNFAg
559	1	2	f	T4-t3	AGPLE442	PNFAg
544	4	4	f	T4-t3	AGPFIV4166	PNFAg
735	5	0	f	T3-t3	PIEL3	PNFI-2012-PRO
723	2	0	f	T3-t3	PIFC3	PNFI-2012-PRO
726	5	0	f	T3-t3	PIIS3	PNFI-2012-PRO
734	2	3	f	T3-t3	PIIO3	PNFI-2012-PRO
731	6	0	f	T3-t3	PIPT3	PNFI-2012-PRO
754	2	2	f	S1	91105	R-2010
755	2	1	f	S1	91106	R-2010
756	1	2	f	S1	91107	R-2010
757	2	1	f	S1	91102	R-2010
758	2	2	t	S1	91101	R-2010
759	4	0	f	S1	91103	R-2010
760	2	1	f	S1	91104	R-2010
761	2	2	f	S2	91201	R-2010
762	2	1	f	S2	91202	R-2010
763	2	1	f	S2	91203	R-2010
764	2	1	f	S2	91204	R-2010
765	2	2	t	S2	91205	R-2010
766	2	1	f	S2	91207	R-2010
767	2	1	f	S2	91206	R-2010
768	2	2	f	S3	91301	R-2010
769	2	1	f	S3	91302	R-2010
770	2	2	f	S3	91303	R-2010
771	2	1	f	S3	91304	R-2010
772	1	2	f	S3	91305	R-2010
773	2	2	f	S3	91307	R-2010
591	2	2	t	T2-t2	AGMCA242	PNFAg-2
587	2	2	f	T2-t2	AGSPV262	PNFAg-2
586	2	2	f	T2-t2	AGATMA246	PNFAg-2
596	2	2	f	T2-t3	AGAGC242	PNFAg-2
590	4	0	f	T2-t3	AGAGE242	PNFAg-2
592	2	2	f	T2-t3	AGDREV242	PNFAg-2
594	2	2	f	T2-t3	AGREA262	PNFAg-2
593	2	2	f	T2-t3	AGSEA262	PNFAg-2
595	2	2	f	T2-t3	AGTOG262	PNFAg-2
603	4	0	f	T3-t1	AGANM362	PNFAg-2
605	4	0	f	T3-t1	AGEPS342	PNFAg-2
607	2	2	f	T3-t1	AGETD362	PNFAg-2
601	2	2	f	T3-t1	AGGAE362	PNFAg-2
608	2	2	t	T3-t1	AGMEI362	PNFAg-2
774	2	1	f	S3	91306	R-2010
775	2	0	f	S4	91401	R-2010
776	2	0	f	S4	91402	R-2010
777	2	2	f	S4	91403	R-2010
736	2	0	f	T4-t1	PIFC4	PNFI-2012-PRO
737	2	0	f	T4-t2	PIFC4	PNFI-2012-PRO
738	2	0	f	T4-t3	PIFC4	PNFI-2012-PRO
739	6	0	f	T4-t1	PIPT4	PNFI-2012-PRO
740	6	0	f	T4-t2	PIPT4	PNFI-2012-PRO
741	6	0	f	T4-t3	PIPT4	PNFI-2012-PRO
742	5	0	f	T4-t1	PIGP4	PNFI-2012-PRO
743	2	3	t	T4-t1	PIAB4	PNFI-2012-PRO
744	2	0	f	T4-t1	PIID4	PNFI-2012-PRO
745	2	0	f	T4-t2	PIID4	PNFI-2012-PRO
746	2	0	f	T4-t3	PIID4	PNFI-2012-PRO
747	5	0	f	T4-t1	ACR004	PNFI-2012-PRO
748	5	0	f	T4-t2	ACR004	PNFI-2012-PRO
749	5	0	f	T4-t3	ACR004	PNFI-2012-PRO
750	2	3	t	T4-t2	PIRA4	PNFI-2012-PRO
751	2	3	t	T4-t2	PISI4	PNFI-2012-PRO
752	2	3	t	T4-t3	PIAI4	PNFI-2012-PRO
753	5	0	f	T4-t3	PIEL4	PNFI-2012-PRO
778	2	2	f	S4	91404	R-2010
779	2	1	f	S4	91405	R-2010
780	2	1	f	S4	91406	R-2010
781	1	4	f	S5	91501	R-2010
782	2	0	f	S5	91502	R-2010
783	2	2	f	S5	91503	R-2010
784	2	2	f	S5	91504	R-2010
785	2	0	f	S5	91505	R-2010
786	2	2	f	S5	91507	R-2010
787	2	1	f	S5	91506	R-2010
788	1	3	f	S6	91602	R-2010
789	1	1	f	S6	91601	R-2010
790	2	2	f	S4	91407	R-2010
659	4	0	f	TT	AGFIAIP	PNFAg-2-PRO
663	2	2	f	TT	AGPRAIP	PNFAg-2-PRO
664	4	0	f	TT	AGPN003	PNFAg-2-PRO
665	2	2	f	TT	AGMAI142	PNFAg-2-PRO
668	4	0	f	T3-t1	AGANM362	PNFAg-2-PRO
670	4	0	f	T3-t1	AGEPS342	PNFAg-2-PRO
672	2	2	f	T3-t1	AGETD362	PNFAg-2-PRO
666	2	2	f	T3-t1	AGGAE362	PNFAg-2-PRO
673	2	2	t	T3-t1	AGMEI362	PNFAg-2-PRO
660	4	4	f	T3-t1	AGPFIII3126	PNFAg-2-PRO
669	4	0	f	T3-t2	AGANM362	PNFAg-2-PRO
671	4	0	f	T3-t2	AGEPS342	PNFAg-2-PRO
667	2	2	f	T3-t2	AGGAE362	PNFAg-2-PRO
675	2	2	f	T3-t2	AGMSA342	PNFAg-2-PRO
677	4	4	f	T3-t2	AGPFIII3126	PNFAg-2-PRO
634	2	2	f	T1-t1	AGACRED001	PNFAg
635	2	2	f	T1-t2	AGACRED001	PNFAg
636	2	2	f	T1-t3	AGACRED001	PNFAg
637	2	2	f	T2-t1	AGACRED002	PNFAg
638	2	2	f	T2-t2	AGACRED002	PNFAg
639	2	2	f	T2-t3	AGACRED002	PNFAg
640	2	2	f	T3-t1	AGACRED003	PNFAg
641	2	2	f	T3-t2	AGACRED003	PNFAg
642	2	2	f	T3-t3	AGACRED003	PNFAg
643	2	2	f	T4-t1	AGACRED004	PNFAg
644	2	2	f	T4-t2	AGACRED004	PNFAg
645	2	2	f	T4-t3	AGACRED004	PNFAg
661	2	2	f	T3-t2	AGSPA262	PNFAg-2-PRO
662	2	2	f	T3-t3	AGECE442	PNFAg-2-PRO
676	2	2	f	T3-t3	AGMSA342	PNFAg-2-PRO
680	2	2	f	T3-t3	AGOTA362	PNFAg-2-PRO
678	4	4	f	T3-t3	AGPFIII3126	PNFAg-2-PRO
674	2	2	f	T3-t3	AGSPA262	PNFAg-2-PRO
679	2	2	f	T3-t3	AGSRD362	PNFAg-2-PRO
681	4	4	f	T4-t1	AGPFIV41	PNFAg-2-PRO
682	4	4	f	T4-t2	AGPFIV41	PNFAg-2-PRO
683	4	4	f	T4-t3	AGPFIV41	PNFAg-2-PRO
684	2	2	f	T4-t1	AGCTS462	PNFAg-2-PRO
685	2	2	f	T4-t1	AGSIG462	PNFAg-2-PRO
686	2	2	f	T4-t1	AGECR462	PNFAg-2-PRO
687	2	2	f	T4-t1	AGMAP46	PNFAg-2-PRO
688	2	2	f	T4-t2	AGECC442	PNFAg-2-PRO
689	2	2	f	T4-t3	AGECC442	PNFAg-2-PRO
690	4	0	f	T4-t2	AGPSL362	PNFAg-2-PRO
691	2	2	f	T4-t2	AGPLE462	PNFAg-2-PRO
692	2	2	f	T4-t2	AGFMP462	PNFAg-2-PRO
693	4	0	f	T4-t3	AGPEP462	PNFAg-2-PRO
694	2	2	f	T4-t3	AGSIP362	PNFAg-2-PRO
695	2	2	f	T4-t3	AGHCA462	PNFAg-2-PRO
658	2	2	f	T0	AGMAP142	PNFAg-2
655	2	2	f	T0	AGMAT142	PNFAg-2
657	4	4	f	T0	PIMT005	PNFAg-2
656	2	2	f	T0	AGPN003	PNFAg-2
631	2	2	f	T1-t1	AGACRED001	PNFAg-2
632	2	2	f	T1-t2	AGACRED001	PNFAg-2
633	2	2	f	T1-t3	AGACRED001	PNFAg-2
646	2	2	f	T2-t1	AGACRED002	PNFAg-2
647	2	2	f	T2-t2	AGACRED002	PNFAg-2
648	2	2	f	T2-t3	AGACRED002	PNFAg-2
649	2	2	f	T3-t1	AGACRED003	PNFAg-2
598	4	4	f	T3-t1	AGPFIII3126	PNFAg-2
650	2	2	f	T3-t2	AGACRED003	PNFAg-2
604	4	0	f	T3-t2	AGANM362	PNFAg-2
606	4	0	f	T3-t2	AGEPS342	PNFAg-2
602	2	2	f	T3-t2	AGGAE362	PNFAg-2
611	2	2	f	T3-t2	AGMSA342	PNFAg-2
599	4	4	f	T3-t2	AGPFIII3126	PNFAg-2
609	2	2	f	T3-t2	AGSPA262	PNFAg-2
651	2	2	f	T3-t3	AGACRED003	PNFAg-2
613	2	2	f	T3-t3	AGECE442	PNFAg-2
612	2	2	f	T3-t3	AGMSA342	PNFAg-2
615	2	2	f	T3-t3	AGOTA362	PNFAg-2
600	4	4	f	T3-t3	AGPFIII3126	PNFAg-2
610	2	2	f	T3-t3	AGSPA262	PNFAg-2
614	2	2	f	T3-t3	AGSRD362	PNFAg-2
652	2	2	f	T4-t1	AGACRED004	PNFAg-2
619	2	2	f	T4-t1	AGCTS462	PNFAg-2
621	2	2	f	T4-t1	AGECR462	PNFAg-2
622	2	2	f	T4-t1	AGMAP46	PNFAg-2
616	4	4	f	T4-t1	AGPFIV41	PNFAg-2
620	2	2	f	T4-t1	AGSIG462	PNFAg-2
653	2	2	f	T4-t2	AGACRED004	PNFAg-2
623	2	2	f	T4-t2	AGECC442	PNFAg-2
627	2	2	f	T4-t2	AGFMP462	PNFAg-2
625	4	0	f	T4-t2	AGPSL362	PNFAg-2
626	2	2	f	T4-t2	AGPLE462	PNFAg-2
617	4	4	f	T4-t2	AGPFIV41	PNFAg-2
654	2	2	f	T4-t3	AGACRED004	PNFAg-2
624	2	2	f	T4-t3	AGECC442	PNFAg-2
630	2	2	f	T4-t3	AGHCA462	PNFAg-2
628	4	0	f	T4-t3	AGPEP462	PNFAg-2
618	4	4	f	T4-t3	AGPFIV41	PNFAg-2
629	2	2	f	T4-t3	AGSIP362	PNFAg-2
696	4	4	f	T2-t1	AGPFII2126	PNFAg-2
697	4	4	f	T2-t2	AGPFII2126	PNFAg-2
698	4	4	f	T2-t3	AGPFII2126	PNFAg-2
794	5	0	f	T0	90004	PNFSACN-2014
796	2	0	f	T0	90006	PNFSACN-2014
793	5	0	f	T0	90003	PNFSACN-2014
791	5	0	f	T0	90001	PNFSACN-2014
792	5	0	f	T0	90002	PNFSACN-2014
795	5	0	f	T0	90005	PNFSACN-2014
12	5	0	f	T0	PITIP02	PNFI-2012
1	5	0	f	T0	PIMT004	PNFI-2012
11	5	0	f	T0	PIPNP03	PNFI-2012
703	5	0	f	T1-t1	ACR001	PNFI-2012
21	2	4	t	T1-t1	PIAP1	PNFI-2012
15	2	3	t	T1-t1	PIAC1	PNFI-2012
18	2	0	f	T1-t1	PIFC1	PNFI-2012
27	2	0	f	T1-t1	PIID1	PNFI-2012
2	5	0	f	T1-t1	PIMT1	PNFI-2012
24	6	0	f	T1-t1	PIPT1	PNFI-2012
704	5	0	f	T1-t2	ACR001	PNFI-2012
22	2	4	t	T1-t2	PIAP1	PNFI-2012
16	2	3	t	T1-t2	PIAC1	PNFI-2012
19	2	0	f	T1-t2	PIFC1	PNFI-2012
28	2	0	f	T1-t2	PIID1	PNFI-2012
13	5	0	f	T1-t2	PIMT1	PNFI-2012
25	6	0	f	T1-t2	PIPT1	PNFI-2012
705	5	0	f	T1-t3	ACR001	PNFI-2012
23	2	4	t	T1-t3	PIAP1	PNFI-2012
17	2	3	t	T1-t3	PIAC1	PNFI-2012
20	2	0	f	T1-t3	PIFC1	PNFI-2012
29	2	0	f	T1-t3	PIID1	PNFI-2012
14	5	0	f	T1-t3	PIMT1	PNFI-2012
26	6	0	f	T1-t3	PIPT1	PNFI-2012
706	5	0	f	T2-t1	ACR002	PNFI-2012
701	5	0	f	TT	30001	PNFI-2012-PRO
702	4	0	f	TT	PITIP02	PNFI-2012-PRO
699	5	0	f	TT	30002	PNFI-2012-PRO
700	2	0	f	TT	PIPNP03	PNFI-2012-PRO
800	1	2	f	T1-s1	90013	PNFSACN-2014
805	3	4	f	T1-s1	90017	PNFSACN-2014
797	3	0	f	T1-s1	90011	PNFSACN-2014
803	3	2	f	T1-s1	90016	PNFSACN-2014
798	3	2	f	T1-s1	90012	PNFSACN-2014
807	1	1	f	T1-s1	90018	PNFSACN-2014
801	2	1	f	T1-s1	90014	PNFSACN-2014
806	3	4	f	T1-s2	90017	PNFSACN-2014
804	3	2	f	T1-s2	90016	PNFSACN-2014
799	3	2	f	T1-s2	90012	PNFSACN-2014
808	3	0	f	T1-s2	90015	PNFSACN-2014
802	2	1	f	T1-s2	90014	PNFSACN-2014
809	2	0	f	T1-s2	90019	PNFSACN-2014
715	5	0	f	T1-t2	PIEL1	PNFI-2012
36	2	0	f	T2-t1	PIFC2	PNFI-2012
45	5	0	f	T2-t1	PIS03	PNFI-2012
3	5	0	f	T2-t1	PIMT2	PNFI-2012
39	2	4	t	T2-t1	PIPP2	PNFI-2012
42	6	0	f	T2-t1	PIPT2	PNFI-2012
34	2	3	t	T2-t1	PIRC2	PNFI-2012
707	5	0	f	T2-t2	ACR002	PNFI-2012
4	2	3	t	T2-t2	PIBD2	PNFI-2012
37	2	0	f	T2-t2	PIFC2	PNFI-2012
33	5	0	f	T2-t2	PIMT2	PNFI-2012
40	2	4	t	T2-t2	PIPP2	PNFI-2012
43	6	0	f	T2-t2	PIPT2	PNFI-2012
35	2	3	t	T2-t2	PIRC2	PNFI-2012
708	5	0	f	T2-t3	ACR002	PNFI-2012
297	5	0	f	T2-t3	PIEL2	PNFI-2012
38	2	0	f	T2-t3	PIFC2	PNFI-2012
41	2	4	t	T2-t3	PIPP2	PNFI-2012
44	6	0	f	T2-t3	PIPT2	PNFI-2012
709	5	0	f	T3-t1	ACR003	PNFI-2012
51	2	0	f	T3-t1	PIFC3	PNFI-2012
57	5	0	f	T3-t1	PIIS3	PNFI-2012
5	5	0	f	T3-t1	PIMA3	PNFI-2012
54	6	0	f	T3-t1	PIPT3	PNFI-2012
50	5	0	f	T3-t1	PISO3	PNFI-2012
710	5	0	f	T3-t2	ACR003	PNFI-2012
52	2	0	f	T3-t2	PIFC3	PNFI-2012
58	5	0	f	T3-t2	PIIS3	PNFI-2012
49	5	0	f	T3-t2	PIMA3	PNFI-2012
6	5	0	t	T3-t2	PIMB3	PNFI-2012
55	6	0	f	T3-t2	PIPT3	PNFI-2012
711	5	0	f	T3-t3	ACR003	PNFI-2012
53	2	0	f	T3-t3	PIFC3	PNFI-2012
59	5	0	f	T3-t3	PIIS3	PNFI-2012
7	2	3	f	T3-t3	PIIO3	PNFI-2012
56	6	0	f	T3-t3	PIPT3	PNFI-2012
712	5	0	f	T4-t1	ACR004	PNFI-2012
69	2	3	t	T4-t1	PIAB4	PNFI-2012
8	2	0	f	T4-t1	PIFC4	PNFI-2012
68	5	0	f	T4-t1	PIGP4	PNFI-2012
70	2	0	f	T4-t1	PIID4	PNFI-2012
65	6	0	f	T4-t1	PIPT4	PNFI-2012
713	5	0	f	T4-t2	ACR004	PNFI-2012
63	2	0	f	T4-t2	PIFC4	PNFI-2012
71	2	0	f	T4-t2	PIID4	PNFI-2012
66	6	0	f	T4-t2	PIPT4	PNFI-2012
9	2	3	t	T4-t2	PIRA4	PNFI-2012
76	2	3	t	T4-t2	PISI4	PNFI-2012
714	5	0	f	T4-t3	ACR004	PNFI-2012
10	2	3	t	T4-t3	PIAI4	PNFI-2012
64	2	0	f	T4-t3	PIFC4	PNFI-2012
72	2	0	f	T4-t3	PIID4	PNFI-2012
67	6	0	f	T4-t3	PIPT4	PNFI-2012
\.


--
-- Name: ucMalla_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"ucMalla_id_seq"', 850, true);


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: -
--

COPY usuario (cedula, contrasena, frase, ingreso, nivel) FROM stdin;
12345678	81dc9bdb52d04dc20036dbd8313ed055	81dc9bdb52d04dc20036dbd8313ed055	2016-03-06	1
19096583	0be514ce00322d7f7c6dedd2d36eb1bb	0be514ce00322d7f7c6dedd2d36eb1bb	\N	4
8039294	bd5f33ef30e961de5eb2e5897735c79c	bd5f33ef30e961de5eb2e5897735c79c	\N	4
10102454	c5cc3e2259dc2d182a7a957530f41e93	c5cc3e2259dc2d182a7a957530f41e93	\N	4
11463296	8355bc86bb9041b347279552ffd88604	8355bc86bb9041b347279552ffd88604	\N	4
3485766	9a2b7ff2cc79cbeaa90ac929921d8f0b	9a2b7ff2cc79cbeaa90ac929921d8f0b	\N	4
3830917	575862a9949e926a9b66183ed1a40b50	575862a9949e926a9b66183ed1a40b50	\N	4
3910823	cc215e38708c4b7aa128ca63e0e7c560	cc215e38708c4b7aa128ca63e0e7c560	\N	3
3990590	22212a2babbc4a323a7d7995ee5e586c	22212a2babbc4a323a7d7995ee5e586c	\N	4
4194292	7494b1d435bce489f269333deb0364c8	7494b1d435bce489f269333deb0364c8	\N	4
4327492	84d92e62a60679c0f74c32f6fdaf22df	84d92e62a60679c0f74c32f6fdaf22df	\N	4
4397227	151ef25c58bb4d1f8d824b5ef2a0b28c	151ef25c58bb4d1f8d824b5ef2a0b28c	\N	4
4488065	b7d6326a02e823f78739131d1b18a5ef	b7d6326a02e823f78739131d1b18a5ef	\N	4
4490481	c1e523c324d5dbdb04a0c3b5c8c8f2fd	c1e523c324d5dbdb04a0c3b5c8c8f2fd	\N	4
4492233	cac3ad41b28201f8ae78595bbeb441a5	cac3ad41b28201f8ae78595bbeb441a5	\N	4
4583431	5d858bb5aeca14f663be7beba2ed5c82	5d858bb5aeca14f663be7beba2ed5c82	\N	4
4633259	070f94f5b685cb6424503e65297fcecb	070f94f5b685cb6424503e65297fcecb	\N	4
4953940	d28452c0677c1c83ee2a1c7acb5b5005	d28452c0677c1c83ee2a1c7acb5b5005	\N	4
5206267	f0814a71c773dbd226609762ef44dc87	f0814a71c773dbd226609762ef44dc87	\N	4
5559793	6c31adf92bf71b6c13b26b22a773d443	6c31adf92bf71b6c13b26b22a773d443	\N	4
4054457	2251adfb09280133936c019bc9a19b10	2251adfb09280133936c019bc9a19b10	\N	4
6558454	c48f20583ac05bd67505a323c9b905d5	c48f20583ac05bd67505a323c9b905d5	\N	4
7775026	42df52be560380c14fb07851f7981bd7	42df52be560380c14fb07851f7981bd7	\N	4
8000617	3bed83641ecf837ed4f983db6f5d6ba4	3bed83641ecf837ed4f983db6f5d6ba4	\N	4
8004161	7b0448421f47dff06e3189e5eab5fb14	7b0448421f47dff06e3189e5eab5fb14	\N	4
8006388	0cc88b41f3cfc5f0d175bdd1b99d5d11	0cc88b41f3cfc5f0d175bdd1b99d5d11	\N	4
8024531	f86303cdc94c1562131e4793bff28899	f86303cdc94c1562131e4793bff28899	\N	4
8025750	b328e1d95f78f612c1d72ce8443cb434	b328e1d95f78f612c1d72ce8443cb434	\N	4
8035484	097081696a566d9c7bbf66b162001b8c	097081696a566d9c7bbf66b162001b8c	\N	4
8002183	231d5eb9b103e2912dbf66142b4fff27	231d5eb9b103e2912dbf66142b4fff27	\N	4
8042559	c2afb984bb8efca6ff668eb7480b87c6	c2afb984bb8efca6ff668eb7480b87c6	\N	4
8045258	d06f9c2a00f031cc0dce4037568f3f00	d06f9c2a00f031cc0dce4037568f3f00	\N	4
8087415	0b012322a8e8c2f1b159972aca7e024a	0b012322a8e8c2f1b159972aca7e024a	\N	4
10797122	bfe95be2129cc8d2d0319d5af948537d	bfe95be2129cc8d2d0319d5af948537d	\N	4
11467397	e434a25f85d97f364968c0372dec02fd	e434a25f85d97f364968c0372dec02fd	\N	4
11468201	3b3dc2f543224dbc7d1f70e050021354	3b3dc2f543224dbc7d1f70e050021354	\N	4
11912316	c55323665d2057be779fad97a47b603a	c55323665d2057be779fad97a47b603a	\N	4
12353031	b6dadd5f0ace9690d411a699f8aa967d	b6dadd5f0ace9690d411a699f8aa967d	\N	4
12779975	b3f5962ff884271911b48581c7aeba47	b3f5962ff884271911b48581c7aeba47	\N	4
13099384	79f26ee136757e29ec3fd99815097ea5	79f26ee136757e29ec3fd99815097ea5	\N	4
13966605	409142237bca42c8f26ae7cf83912f89	409142237bca42c8f26ae7cf83912f89	\N	4
14400087	89389b1b6508d370cbe7e0aaa11d5ad4	89389b1b6508d370cbe7e0aaa11d5ad4	\N	4
15223533	5bc48736216bd15793a0e313a4a520fd	5bc48736216bd15793a0e313a4a520fd	\N	4
15381185	800bb1ce941e90ff1dd781dcbfaad650	800bb1ce941e90ff1dd781dcbfaad650	\N	4
15754311	d135ddcbb342701f7feed27260199844	d135ddcbb342701f7feed27260199844	\N	4
16377291	4588a87b35d12a48b0d3c14e09706046	4588a87b35d12a48b0d3c14e09706046	\N	4
17238348	473b26499a1b38a9dc538b570e2c5ccb	473b26499a1b38a9dc538b570e2c5ccb	\N	4
8002737	41d326bb37c0da6b13f0e660bbee73d8	41d326bb37c0da6b13f0e660bbee73d8	\N	4
3048184	3bbfc1cc8b47188f4cacb69087f96c90	3bbfc1cc8b47188f4cacb69087f96c90	\N	4
3992405	23f2e923e529eff1373a6fc682fc0289	23f2e923e529eff1373a6fc682fc0289	\N	4
4488420	794b05853f27bf5a4918476db058d387	794b05853f27bf5a4918476db058d387	\N	4
5206372	7819b053557b28cb8ffbcaae6bad3d5e	7819b053557b28cb8ffbcaae6bad3d5e	\N	4
5355610	585c01f58724a812a623cea8d881594d	585c01f58724a812a623cea8d881594d	\N	4
5447146	f3e6cf69718e9af3546e6e4250fa1cbb	f3e6cf69718e9af3546e6e4250fa1cbb	\N	4
5507269	fc89a89f03b567bb9446f8a1bfc52db3	fc89a89f03b567bb9446f8a1bfc52db3	\N	4
5794416	024ac2fbf96735e9fbcfd3ba9c1890be	024ac2fbf96735e9fbcfd3ba9c1890be	\N	4
7648734	0bf924432ae5f9a81a43056f1600600c	0bf924432ae5f9a81a43056f1600600c	\N	4
7934845	86a5676989a14a2c9c30a58bd6c4241a	86a5676989a14a2c9c30a58bd6c4241a	\N	4
8021306	0423f9cbf4cb76bab158cce661cb2c49	0423f9cbf4cb76bab158cce661cb2c49	\N	4
8041510	4a419c52faf02ca5280b484217405985	4a419c52faf02ca5280b484217405985	\N	4
8046408	74fa651fac75a181ee33a4a649020995	74fa651fac75a181ee33a4a649020995	\N	4
8048794	65589a2693503a9edee54fbc479e9867	65589a2693503a9edee54fbc479e9867	\N	4
8336414	e2faf3e8559e2ab784d3d3903b33cf4f	e2faf3e8559e2ab784d3d3903b33cf4f	\N	4
8683060	4d1bf54a9247b664812c2acbbae80199	4d1bf54a9247b664812c2acbbae80199	\N	4
8958864	adfb862332ca5f2519543b6930c83934	adfb862332ca5f2519543b6930c83934	\N	4
9472514	2a7d39046e2b66d25adfef8eaaff8463	2a7d39046e2b66d25adfef8eaaff8463	\N	4
10102259	df2b30466a6f98d43116bcd5975e832b	df2b30466a6f98d43116bcd5975e832b	\N	4
10104966	3de330f2a91534516041d3d7b7f61196	3de330f2a91534516041d3d7b7f61196	\N	4
10314511	ec4e1cc2ef06323963b1f38ae348b41e	ec4e1cc2ef06323963b1f38ae348b41e	\N	4
10714070	7519cb086380123d8d3cdbe76374a952	7519cb086380123d8d3cdbe76374a952	\N	4
10715404	b52dc8c828e77a47e674ab47d4eceb6f	b52dc8c828e77a47e674ab47d4eceb6f	\N	4
10718224	c04f978b6bf49e5bc700ca35a7799df7	c04f978b6bf49e5bc700ca35a7799df7	\N	4
10718393	6e2da033096b2ec6639963c0bcc0d93b	6e2da033096b2ec6639963c0bcc0d93b	\N	4
11067484	24dc02e0e086cac103b48ed830ef9496	24dc02e0e086cac103b48ed830ef9496	\N	4
3767311	6529bafe93979c2d1d009319f85877ec	6529bafe93979c2d1d009319f85877ec	\N	3
4472778	ef3b2b9a7dc1a9d2c6648f1f8cbfc1e5	ef3b2b9a7dc1a9d2c6648f1f8cbfc1e5	\N	4
4491607	fd752f6c286d0434a0baf7965c0585df	fd752f6c286d0434a0baf7965c0585df	\N	4
5124273	03b3d265b309890c7347c1c34ee301e6	03b3d265b309890c7347c1c34ee301e6	\N	4
8002316	3fee0ab2d3fce702c976606851f224cb	3fee0ab2d3fce702c976606851f224cb	\N	4
8012641	9614236cda66482aea852d293e0f68f9	9614236cda66482aea852d293e0f68f9	\N	4
8020758	b729797bd392581545bfab7e5fcef703	b729797bd392581545bfab7e5fcef703	\N	4
8022671	34371818a3e6f4c7bc7186aa913cb7ba	34371818a3e6f4c7bc7186aa913cb7ba	\N	4
8026155	4386bab6300f03d2d3a029ba17448ada	4386bab6300f03d2d3a029ba17448ada	\N	4
8027408	7c98c08d935636d1acc51eb91ffa57fe	7c98c08d935636d1acc51eb91ffa57fe	\N	4
8029696	ad5e140872b52ab95e4c82bac3d7643d	ad5e140872b52ab95e4c82bac3d7643d	\N	4
8034029	65dbc46be0e1b2a4d1020849416d432c	65dbc46be0e1b2a4d1020849416d432c	\N	4
8034371	c7e9806f3997bc6a7f8193b8ba1bd2d3	c7e9806f3997bc6a7f8193b8ba1bd2d3	\N	4
8038332	451eac1447f5c0b7c5722b3bfb2091ff	451eac1447f5c0b7c5722b3bfb2091ff	\N	4
8080676	9140eaf514cf9fa9af7a15ed2f93010d	9140eaf514cf9fa9af7a15ed2f93010d	\N	4
8084432	9866590ce50a3ea6dd322f8bdeb4d437	9866590ce50a3ea6dd322f8bdeb4d437	\N	4
9198636	66b936cada44318ff4e8565c6dd3515e	66b936cada44318ff4e8565c6dd3515e	\N	4
9473151	209cf50328e6d79093a0e6ef6038346b	209cf50328e6d79093a0e6ef6038346b	\N	4
9473423	4cc9bbe5ef60089c427b51ef5f2971ee	4cc9bbe5ef60089c427b51ef5f2971ee	\N	4
9474147	dea496fd72d0f629bc18ba319d866c31	dea496fd72d0f629bc18ba319d866c31	\N	4
10087275	dd9d5bca2aa8bdc8c8d207098a660bdd	dd9d5bca2aa8bdc8c8d207098a660bdd	\N	4
10108950	5102253afdd7d7402665270dd1237645	5102253afdd7d7402665270dd1237645	\N	4
13098763	db524b1afe2e9e91f2d0bad04e245993	db524b1afe2e9e91f2d0bad04e245993	\N	4
3727339	fa1365282f3e427e13e7b3b0c0a3d053	fa1365282f3e427e13e7b3b0c0a3d053	\N	4
8045307	9c7b055893962cdd147cda201a164d4e	9c7b055893962cdd147cda201a164d4e	\N	4
10713529	c76874cebeef7c2a3fbe4b9565ddecb1	c76874cebeef7c2a3fbe4b9565ddecb1	\N	4
3692342	4508a8ee86c8a0f4a420028001c318f6	4508a8ee86c8a0f4a420028001c318f6	\N	4
5021210	c6ac797adb3eb2e1b60e037bd84bca37	c6ac797adb3eb2e1b60e037bd84bca37	\N	4
9906067	38dccbcbd6f386caaaf82d24df3e935c	38dccbcbd6f386caaaf82d24df3e935c	\N	4
10100205	fc119e857573f06035b6c4005446c6cf	fc119e857573f06035b6c4005446c6cf	\N	4
8006639	8f013843adbd0db92877a0f1803fe696	8f013843adbd0db92877a0f1803fe696	\N	4
8039498	fdf236cbadd8fa80631903ed866335f5	fdf236cbadd8fa80631903ed866335f5	\N	4
8079222	83bf094c6e7dd9f4933406296f52f930	83bf094c6e7dd9f4933406296f52f930	\N	4
9234597	57584f8cfd26b846502a9bb518593049	57584f8cfd26b846502a9bb518593049	\N	4
6940439	2485cd717dbb3c88180ddb0a51e67e04	2485cd717dbb3c88180ddb0a51e67e04	\N	4
2149217	e40443240cfe1f9ad82c45685797d331	e40443240cfe1f9ad82c45685797d331	\N	3
3791326	e6775578d370af95b4c0fa8b154602d7	e6775578d370af95b4c0fa8b154602d7	\N	4
8029045	a441feb3e7ecdce6669ffc488c78a49c	a441feb3e7ecdce6669ffc488c78a49c	\N	4
8041620	12b58b36d93a01f612c13cb9c6f06cea	12b58b36d93a01f612c13cb9c6f06cea	\N	4
9473374	aaf9359bf0233c843b0aee001e10c2b0	aaf9359bf0233c843b0aee001e10c2b0	\N	4
3574698	23c714e9445dace7695b1b31a285ab4c	23c714e9445dace7695b1b31a285ab4c	\N	4
8040787	059cb8c73710c3a7eec1db166fb3ffa3	059cb8c73710c3a7eec1db166fb3ffa3	\N	4
4356042	c141b51789a240c36f6a52267ab9636e	c141b51789a240c36f6a52267ab9636e	\N	4
4492356	64fd9ee9352033e4000819f1b8e0d67f	64fd9ee9352033e4000819f1b8e0d67f	\N	4
9473852	12e7cf9a6fae9f00a6f1d73dcfa5bd7c	12e7cf9a6fae9f00a6f1d73dcfa5bd7c	\N	4
10109087	c2f2518e34446aadd880359092921d55	c2f2518e34446aadd880359092921d55	\N	4
17456574	816bebc08ec49f1c54efcb910ed3ed99	816bebc08ec49f1c54efcb910ed3ed99	\N	4
17499585	fb6887d0ea1966197901103a039cbab9	fb6887d0ea1966197901103a039cbab9	\N	4
16199115	d2dcb26e075480e5dc4a63cc123cca36	d2dcb26e075480e5dc4a63cc123cca36	\N	4
18581024	ad67f304834453528bc7b06ea6459520	ad67f304834453528bc7b06ea6459520	\N	4
9240195	2ee3850a19794fc8d4b08844e6f5d192	2ee3850a19794fc8d4b08844e6f5d192	\N	4
14281324	5f7ce8cf730f6fc42a089d7a6aae488c	5f7ce8cf730f6fc42a089d7a6aae488c	\N	4
16317126	08d9b55cf418cb295320af776dacd77c	08d9b55cf418cb295320af776dacd77c	\N	4
1010633	601ffea3c515aaaf4643bcdcc67995c4	601ffea3c515aaaf4643bcdcc67995c4	\N	4
6729553	5914f39bdb0b4762dfd7daee564f6aa5	5914f39bdb0b4762dfd7daee564f6aa5	\N	4
5753564	b6eee7d83defde4e0860a5dff1fddd84	b6eee7d83defde4e0860a5dff1fddd84	\N	4
9501330	a49a8f92a097d4b3d7fa7b6ecbdbcc18	a49a8f92a097d4b3d7fa7b6ecbdbcc18	\N	4
5561396	1844118865eeb5549d6d938d29efaf50	1844118865eeb5549d6d938d29efaf50	\N	4
8005159	b30603eb67535b8ceae151a76a003923	b30603eb67535b8ceae151a76a003923	\N	4
7326064	1fff7cc12ee539d5bf5dd43c362dafa6	1fff7cc12ee539d5bf5dd43c362dafa6	\N	4
8046659	522108d8ca097e21f0aa6f777fb69ccf	522108d8ca097e21f0aa6f777fb69ccf	\N	4
9478674	e7feb0a003244326e663b2cc81685cca	e7feb0a003244326e663b2cc81685cca	\N	4
10718091	d6a21593c642f171718ca64f53bd95aa	d6a21593c642f171718ca64f53bd95aa	\N	4
9473567	cff64b6f506ef54d86494594f1070930	cff64b6f506ef54d86494594f1070930	\N	4
8038611	47673f8c60fa4f9a20788c958c713c2e	47673f8c60fa4f9a20788c958c713c2e	\N	4
4484976	ba35008385c2ce7c63525c8c517c102c	ba35008385c2ce7c63525c8c517c102c	\N	4
7168412	ec04d8227256d077b0a002de0c3258f6	ec04d8227256d077b0a002de0c3258f6	\N	4
9499979	ac3da063f25e3630406352efc8485122	ac3da063f25e3630406352efc8485122	\N	4
4491973	b0298f8ed048311053f60cbf3e42b313	b0298f8ed048311053f60cbf3e42b313	\N	4
8027793	1ce8e3dce7c48f2ed383bd47c9de4bb4	1ce8e3dce7c48f2ed383bd47c9de4bb4	\N	4
4489957	af5677e5a5c7630932dd2a957dc49ac2	af5677e5a5c7630932dd2a957dc49ac2	\N	4
11956576	3543d68e00499c26fb4d1530ed1ed117	3543d68e00499c26fb4d1530ed1ed117	\N	4
8044768	68dc88f7a3d83cc43f40aded9351caf8	68dc88f7a3d83cc43f40aded9351caf8	\N	4
13014569	5f5c7efb3f15ea81d0dd7b5e67250fcf	5f5c7efb3f15ea81d0dd7b5e67250fcf	\N	4
8029075	00b95497dd2fc4a6a94b1048f4eea419	00b95497dd2fc4a6a94b1048f4eea419	\N	4
9201868	56476a97de127d0bf612f1fc4187d516	56476a97de127d0bf612f1fc4187d516	\N	4
17027780	c1d2456e5316015053f443d742904064	c1d2456e5316015053f443d742904064	\N	4
17663839	926ae04aa049774705456f8e8742cd45	926ae04aa049774705456f8e8742cd45	\N	4
11957795	8b30c1f82b0c25690bec0e972b023c37	8b30c1f82b0c25690bec0e972b023c37	\N	4
8028204	c1bc8f50f5f986c0f63c5b72435c462d	c1bc8f50f5f986c0f63c5b72435c462d	\N	4
5239250	6cc0522141ba6803d6da34cab24b95b3	6cc0522141ba6803d6da34cab24b95b3	\N	4
8656400	58900fce5db0a3971e8fb84a42abc4bc	58900fce5db0a3971e8fb84a42abc4bc	\N	4
8021736	e8dda1a8784fe39fbe52dac7a220ebfd	e8dda1a8784fe39fbe52dac7a220ebfd	\N	3
5952723	60ff020f6c28637d3cdb9900930da7e9	60ff020f6c28637d3cdb9900930da7e9	\N	4
9643447	dd35f4d48507ae1175ca235afc6cbc84	dd35f4d48507ae1175ca235afc6cbc84	\N	4
2287821	fcbd24061336460c0712f79f120a8890	fcbd24061336460c0712f79f120a8890	\N	4
3309773	8d6653f9c98633cd1e300c6370ad1785	8d6653f9c98633cd1e300c6370ad1785	\N	3
3939687	4a577c56bc90da96e81a7b1b301a6182	4a577c56bc90da96e81a7b1b301a6182	\N	3
4319574	b462227470eae52c79616030367c8de6	b462227470eae52c79616030367c8de6	\N	4
4768469	785f8d9c4b0d89cf4104a4ea37d66c70	785f8d9c4b0d89cf4104a4ea37d66c70	\N	4
4769890	1d9b36aefcc923c7ff878a5c2ad49476	1d9b36aefcc923c7ff878a5c2ad49476	\N	4
5206999	d90d81af6ca6b49be686cb81621c2f6a	d90d81af6ca6b49be686cb81621c2f6a	\N	4
5349758	ed720606c9c39f22c650543c5fda2777	ed720606c9c39f22c650543c5fda2777	\N	4
6547603	b724a5e17662e2c34b7dffa692212c37	b724a5e17662e2c34b7dffa692212c37	\N	4
7525829	ee0840f5f690047e45e9d6fb962feceb	ee0840f5f690047e45e9d6fb962feceb	\N	4
7832738	0c5a0f8b123dae6a4e2ca449fb03ad4c	0c5a0f8b123dae6a4e2ca449fb03ad4c	\N	4
8031593	b7e3c8ad2f8be15ee07d62028bdb0d80	b7e3c8ad2f8be15ee07d62028bdb0d80	\N	4
8037619	9514d3210bafbc7cc468308b71999a33	9514d3210bafbc7cc468308b71999a33	\N	3
8039160	75bcb1c5348e1aae48ce5f961a88bee8	75bcb1c5348e1aae48ce5f961a88bee8	\N	4
9028433	63598e2f4ad37051680ccc3c16b771ee	63598e2f4ad37051680ccc3c16b771ee	\N	4
10712408	d5f3c5a8c591f8cd2a659cd8e971c427	d5f3c5a8c591f8cd2a659cd8e971c427	\N	4
11108398	8db4616d6f0090e9b448927582b64cd4	8db4616d6f0090e9b448927582b64cd4	\N	4
11460000	337b954d70cd26911a7427bc4c93e1db	337b954d70cd26911a7427bc4c93e1db	\N	4
11465653	82537e24dac03e564d1fb02a32db908b	82537e24dac03e564d1fb02a32db908b	\N	4
11783461	e8149e9aa4e13d00d7e670d9374b0a2e	e8149e9aa4e13d00d7e670d9374b0a2e	\N	4
11959505	ee782959114d5f3cce9f71fea0712d88	ee782959114d5f3cce9f71fea0712d88	\N	4
12776731	d660032ac6a6278f2855e55e9b97c552	d660032ac6a6278f2855e55e9b97c552	\N	4
13013152	61f89954798de9961740851c4af657d4	61f89954798de9961740851c4af657d4	\N	4
13525905	a7eab9628fb3a7149cc7f3817dc8f6f6	a7eab9628fb3a7149cc7f3817dc8f6f6	\N	4
14700296	5dd6ea35e7682ea6828c3a484d8da081	5dd6ea35e7682ea6828c3a484d8da081	\N	4
15920086	b5b332e16ced085d59a1be87216d0c9d	b5b332e16ced085d59a1be87216d0c9d	\N	4
4353143	103fb06869a4f8a2d7aa1adc5beff7b1	103fb06869a4f8a2d7aa1adc5beff7b1	\N	4
5863317	e1dea75af7e05e7c8d98a271ea6a4f43	e1dea75af7e05e7c8d98a271ea6a4f43	\N	4
8026122	04f4c79e9f8a7deea1d3a3320e734b4b	04f4c79e9f8a7deea1d3a3320e734b4b	\N	4
8031064	fb828f9b511d93961b990c0044b8a05b	fb828f9b511d93961b990c0044b8a05b	\N	4
8331149	41498c4380f4dc35f845012934eeb014	41498c4380f4dc35f845012934eeb014	\N	4
11467713	dbe8b442576bb166849283db39da9f12	dbe8b442576bb166849283db39da9f12	\N	4
12352023	0a6f277c33a2426b76e718b69662cacf	0a6f277c33a2426b76e718b69662cacf	\N	4
12779069	d28d99dac9191ccdb64bb0452d1053cd	d28d99dac9191ccdb64bb0452d1053cd	\N	4
14839454	0f1bcf5a8d49ea492abb5b1bb290df5e	0f1bcf5a8d49ea492abb5b1bb290df5e	\N	4
14916156	4ac412620dc091f7fc75076d4ff44e68	4ac412620dc091f7fc75076d4ff44e68	\N	3
16020374	b40dd5b7e0fd6d5f839111877170cffe	b40dd5b7e0fd6d5f839111877170cffe	\N	4
14268612	34f432fea1cec97c3a28dc6aaac96834	34f432fea1cec97c3a28dc6aaac96834	\N	4
5871766	a02e56d0c08c334df723b9c02bed8418	a02e56d0c08c334df723b9c02bed8418	\N	4
8223161	1fbe21d086b188c9028dc235fd78e48f	1fbe21d086b188c9028dc235fd78e48f	\N	4
11955850	c662882846ca1deef054705bcdc2cebd	c662882846ca1deef054705bcdc2cebd	\N	4
12048353	17c76b2592944e9ca02a459bb462a665	17c76b2592944e9ca02a459bb462a665	\N	4
12722753	eaf43d89a47ed1b2d4076cb33a5d40ff	eaf43d89a47ed1b2d4076cb33a5d40ff	\N	4
14267080	a26e231eabf642a145d1d95e1d3a31c7	a26e231eabf642a145d1d95e1d3a31c7	\N	4
15175795	5ebe4becd5174db3eacdfb2ec686b5d3	5ebe4becd5174db3eacdfb2ec686b5d3	\N	4
15565857	03dadb5ea8876357e42b56b008af6a37	03dadb5ea8876357e42b56b008af6a37	\N	4
15920291	53ab85fcaee910bebbeb01678ea3336f	53ab85fcaee910bebbeb01678ea3336f	\N	4
17523454	d26b15d257224ee6da61f438f9cfa662	d26b15d257224ee6da61f438f9cfa662	\N	4
9476031	5ff6789f23835e9db36efac39975d1f1	5ff6789f23835e9db36efac39975d1f1	\N	4
12346208	f79d03633d87aa0e63b88c07ce9ade8c	f79d03633d87aa0e63b88c07ce9ade8c	\N	4
12817844	51127f4f3db577792ba820a67fa9002e	51127f4f3db577792ba820a67fa9002e	\N	4
14267842	df6f6a9bb7473e4eb99418894ca60063	df6f6a9bb7473e4eb99418894ca60063	\N	4
15516332	e3626538d6340788aaf94f8b758c9e64	e3626538d6340788aaf94f8b758c9e64	\N	4
15754922	28ab18cfd60bc2c181505382f110db27	28ab18cfd60bc2c181505382f110db27	\N	4
17130729	402a12ad9e7d229821e4c8264fb29348	402a12ad9e7d229821e4c8264fb29348	\N	4
3661985	e87a7bb3dd3d4719de614b9effb3c0ff	e87a7bb3dd3d4719de614b9effb3c0ff	\N	4
19421996	17dc2490b890ad83f97efe398767e75b	17dc2490b890ad83f97efe398767e75b	\N	4
8080375	13a461bfb2232a04e04578daed12df1f	13a461bfb2232a04e04578daed12df1f	\N	4
11319364	3ce635aaa3056e483978170dc1580aa2	3ce635aaa3056e483978170dc1580aa2	\N	4
11460813	9c9a46bbbecacef97226e2d3822df6f9	9c9a46bbbecacef97226e2d3822df6f9	\N	4
11952770	56d7115d6e1335ef03398d730f2461c4	56d7115d6e1335ef03398d730f2461c4	\N	4
12458260	46ed9b71104c4404905ee88a317a24ba	46ed9b71104c4404905ee88a317a24ba	\N	4
13014707	96df51cfef8c5f6d411bb8fbe54fb783	96df51cfef8c5f6d411bb8fbe54fb783	\N	4
13098188	4d6579a94bf8369405de4e874b1733c8	4d6579a94bf8369405de4e874b1733c8	\N	4
13098422	1b0dd6198d609d3c434525692b15f47b	1b0dd6198d609d3c434525692b15f47b	\N	4
13803490	50733d93ef47f93e674f8ede447d4408	50733d93ef47f93e674f8ede447d4408	\N	4
14400356	eda8ce0fab79298db56c77f6233033a6	eda8ce0fab79298db56c77f6233033a6	\N	4
14589222	66c800006eef883da36c38235cac4a17	66c800006eef883da36c38235cac4a17	\N	4
15622903	a0bf08a68c6d8bc1f9a537d827dd3e49	a0bf08a68c6d8bc1f9a537d827dd3e49	\N	4
17456954	bcf5e26d08469c2a8aae21992bf94d7a	bcf5e26d08469c2a8aae21992bf94d7a	\N	4
17664938	7f224a7ecfb67da33e2a6f3296e33a44	7f224a7ecfb67da33e2a6f3296e33a44	\N	4
18796815	4006a3a8a5ebea83ef59a6e6edf6a7d5	4006a3a8a5ebea83ef59a6e6edf6a7d5	\N	4
18796996	a3a4dbe220c2cfb948c333f528a8c6ba	a3a4dbe220c2cfb948c333f528a8c6ba	\N	4
15756979	e698a02195229bba8a03e21c49580f11	e698a02195229bba8a03e21c49580f11	\N	4
81423693	d1910cf691c17c6491a62ba1990ebe86	d1910cf691c17c6491a62ba1990ebe86	\N	4
15921593	41861a415e633a3220cbfb3d8d1d1f2c	41861a415e633a3220cbfb3d8d1d1f2c	\N	4
4768948	85dd6cf1a2929efe3e6a6bdd145012e3	85dd6cf1a2929efe3e6a6bdd145012e3	\N	4
11953052	0a6e4312b8427d4fb98364f4053bf2f2	0a6e4312b8427d4fb98364f4053bf2f2	\N	4
9470586	36176ac6fd2066fc35a5eea6f79ed268	36176ac6fd2066fc35a5eea6f79ed268	\N	4
10426911	03ff650bb5e5a6be24ff574df2b718f4	03ff650bb5e5a6be24ff574df2b718f4	\N	4
10795287	521366fe9f4bd2737e98871e550841a9	521366fe9f4bd2737e98871e550841a9	\N	4
12276745	e9d91e73d01951435bbc06a9f6de9bef	e9d91e73d01951435bbc06a9f6de9bef	\N	4
13126220	9a858c7fca782fccf95b61b1239b5ba2	9a858c7fca782fccf95b61b1239b5ba2	\N	4
13803898	b59dbe7ee8a43f084f646b63c6e17a83	b59dbe7ee8a43f084f646b63c6e17a83	\N	4
3586551	c1005fdc027b5da56caac1d2896a7825	c1005fdc027b5da56caac1d2896a7825	\N	4
5199025	ee9bfaaaec46914b5fab2917ad944e06	ee9bfaaaec46914b5fab2917ad944e06	\N	4
12457642	948e9f47f7b1bd01e9391241e0109321	948e9f47f7b1bd01e9391241e0109321	\N	4
2288079	1d28da29ceee7f0ba6e2d80868ce6aff	1d28da29ceee7f0ba6e2d80868ce6aff	\N	3
4385037	16991d8f5b629840e8b6f9a1ec935478	16991d8f5b629840e8b6f9a1ec935478	\N	4
4468978	f79a3784a004d9b8d34499b60829fd4a	f79a3784a004d9b8d34499b60829fd4a	\N	4
5222887	73d7688888cc90cf44c4bbf72a4dac6e	73d7688888cc90cf44c4bbf72a4dac6e	\N	4
7682243	42ec7163701eb0ab1099ae6fba2594aa	42ec7163701eb0ab1099ae6fba2594aa	\N	4
7901173	94014f6fcac092450676c5aa4475e3b7	94014f6fcac092450676c5aa4475e3b7	\N	4
8006635	5543023ece012afb4753c9be955d21ef	5543023ece012afb4753c9be955d21ef	\N	4
8025941	f669050076a1cdf8641349d49bec66da	f669050076a1cdf8641349d49bec66da	\N	4
8084037	cb2ea27be506a4127c68504bfc4936c1	cb2ea27be506a4127c68504bfc4936c1	\N	4
8709198	5e0703cbefcd41d399e15bd2292789d4	5e0703cbefcd41d399e15bd2292789d4	\N	4
8711187	4a8ba2fe650ed464ee78df37c2926263	4a8ba2fe650ed464ee78df37c2926263	\N	4
8991754	345af6e6ceef0324970f7fe098378c2b	345af6e6ceef0324970f7fe098378c2b	\N	4
9027962	5b2fc4940065f302a331ed756d2c25bd	5b2fc4940065f302a331ed756d2c25bd	\N	4
9048373	68f0bd436b040e26d59511f25e791d94	68f0bd436b040e26d59511f25e791d94	\N	4
9145227	fc283af3b0be7de549e051adc21a1eab	fc283af3b0be7de549e051adc21a1eab	\N	4
9346062	45d2d166d2e650c9ad6a5c19d930c88e	45d2d166d2e650c9ad6a5c19d930c88e	\N	4
10236687	c4da836cb87ca3d08000e8632d0d36a1	c4da836cb87ca3d08000e8632d0d36a1	\N	4
10896200	87a2d698af19e35ad1ae3291086b3665	87a2d698af19e35ad1ae3291086b3665	\N	4
10901133	f8041f7cb00fbbb1367f2f5f8e4fb04a	f8041f7cb00fbbb1367f2f5f8e4fb04a	\N	4
11165547	76b3a1bef38dce30144bfe600411ff65	76b3a1bef38dce30144bfe600411ff65	\N	4
12048936	9160725c8b872b18ab1afa94c51e1a05	9160725c8b872b18ab1afa94c51e1a05	\N	4
3062497	0619f8e37320b5f6c94fc5948b972231	0619f8e37320b5f6c94fc5948b972231	\N	4
13098948	b93f6de868f8267f5e8cdf25a2ec14c4	b93f6de868f8267f5e8cdf25a2ec14c4	\N	4
8034300	67171b70da180e4cb2dab18f7afaff94	67171b70da180e4cb2dab18f7afaff94	\N	4
16964770	05bd82d8caf0f6bc10cc93bb8f941234	05bd82d8caf0f6bc10cc93bb8f941234	\N	4
13649962	385681b729ff4af2af8108159655f5a1	385681b729ff4af2af8108159655f5a1	\N	4
8013671	e37b1603e9b1bc8a45e7323abe9ed43f	e37b1603e9b1bc8a45e7323abe9ed43f	\N	4
15142314	a3ad0f3c9fd9fbb27c31b88f945fbe3c	a3ad0f3c9fd9fbb27c31b88f945fbe3c	\N	3
10102108	8d5118ef94034ffc4fa8244d61e99f7f	8d5118ef94034ffc4fa8244d61e99f7f	\N	4
15516303	3e8ed7f02c116c278aaefd5533466833	3e8ed7f02c116c278aaefd5533466833	\N	4
16285988	eb65018e5443538b164b0f1f622a6aba	eb65018e5443538b164b0f1f622a6aba	\N	4
84570604	88d36db1b8899d68b7dfb3a4fce88b63	88d36db1b8899d68b7dfb3a4fce88b63	\N	4
7824945	0bb1fe6fdac07a2c38c4f0a0d33c85f9	0bb1fe6fdac07a2c38c4f0a0d33c85f9	\N	4
8019784	32ed4b00b50def2a5922e09178e7e8d5	32ed4b00b50def2a5922e09178e7e8d5	\N	4
13524820	6f5eb76e5eb048e87680aee838f1101c	6f5eb76e5eb048e87680aee838f1101c	\N	4
5655983	463930417ebcaa6c0b983feaa99e55f3	463930417ebcaa6c0b983feaa99e55f3	\N	4
11462979	fe3ebff3aad1d656c934dce578c0eb29	fe3ebff3aad1d656c934dce578c0eb29	\N	4
14917365	1ceb1630a4332d3182c9e453eb4f3d84	1ceb1630a4332d3182c9e453eb4f3d84	\N	4
8047120	1735297e39c74352e58ac9abd7a7746d	1735297e39c74352e58ac9abd7a7746d	\N	4
13966054	5ff0e58eb3493654de33ccaf03ff504d	5ff0e58eb3493654de33ccaf03ff504d	\N	4
14917178	18caad1706ad757328fdc58972ef0f28	18caad1706ad757328fdc58972ef0f28	\N	4
10256095	f01d65777326ef40577be2c505b0f750	f01d65777326ef40577be2c505b0f750	\N	3
12722185	c104b8833346e625a29fe4bb151b1d76	c104b8833346e625a29fe4bb151b1d76	\N	4
10898072	dc2c1e0a55dbb65be46925c7dbec061b	dc2c1e0a55dbb65be46925c7dbec061b	\N	4
11960173	0ac87cfe5ee012c953e00bf7325f6133	0ac87cfe5ee012c953e00bf7325f6133	\N	4
11303172	5a6cc1541cf286e5d056e5061bb6986c	5a6cc1541cf286e5d056e5061bb6986c	\N	4
13524109	3153b17cb4e60f3e8f757cc4ac1ce13a	3153b17cb4e60f3e8f757cc4ac1ce13a	\N	4
9389944	08da159ba37de77175b59e4127cd551a	08da159ba37de77175b59e4127cd551a	\N	4
8044725	2b9fb625c40f04f69377af0bad62792c	2b9fb625c40f04f69377af0bad62792c	\N	4
7509507	ebef8f1f2ea4b7f4a8ed6516492e5361	ebef8f1f2ea4b7f4a8ed6516492e5361	\N	4
13967486	00d7a812d3342712407817a294105a8d	00d7a812d3342712407817a294105a8d	\N	4
15296169	720c550120b6b081bed6a8c83c03eca7	720c550120b6b081bed6a8c83c03eca7	\N	4
13723698	fca9cdd1c97e0f76dd12ebadce118f6f	fca9cdd1c97e0f76dd12ebadce118f6f	\N	4
11954144	c530df8f7245e7191bad4575f7109a42	c530df8f7245e7191bad4575f7109a42	\N	4
14401340	4ba0c31493e2468b330400c3dd8e2544	4ba0c31493e2468b330400c3dd8e2544	\N	4
11466224	172d53f65ff63d14b8f204e52179b53e	172d53f65ff63d14b8f204e52179b53e	\N	4
13477378	dbc566430fe97ad1f5ad932f1645c0cd	dbc566430fe97ad1f5ad932f1645c0cd	\N	4
3966127	f9352b67c1a630757342859bffad0838	f9352b67c1a630757342859bffad0838	\N	3
10617743	25dca020ae3a4ebd633b867c59cfc204	25dca020ae3a4ebd633b867c59cfc204	\N	4
10092487	e5b58a96b41d80716d693400da48c645	e5b58a96b41d80716d693400da48c645	\N	4
9475173	ef094ee309c5a742b991a26e230bd16c	ef094ee309c5a742b991a26e230bd16c	\N	4
10687170	97ca9139916673b806768820fb6336f7	97ca9139916673b806768820fb6336f7	\N	4
5198965	e52bae589d2290c19ac94e08a50342b4	e52bae589d2290c19ac94e08a50342b4	\N	4
12800893	746024e153745dbbb4b9f77ffdacef59	746024e153745dbbb4b9f77ffdacef59	\N	4
13013943	00a1d9cfee1fd8588dc31d3e19471922	00a1d9cfee1fd8588dc31d3e19471922	\N	4
13229040	edc382362710253356ff7943d227e58b	edc382362710253356ff7943d227e58b	\N	4
13230783	8fed3ad16c2cb13ce31551b82b1ec72e	8fed3ad16c2cb13ce31551b82b1ec72e	\N	4
13965382	f887795b4954a441f0bee965a6391d9a	f887795b4954a441f0bee965a6391d9a	\N	4
13965387	b89b30d53162138ab89f87fefc1eb192	b89b30d53162138ab89f87fefc1eb192	\N	4
13965541	9ece2b2337ed825b367a51eec2b06204	9ece2b2337ed825b367a51eec2b06204	\N	4
14447272	350f10b79713709408d57fd4372f9449	350f10b79713709408d57fd4372f9449	\N	4
15235049	635d6535718f71d34d5bf5889debc62e	635d6535718f71d34d5bf5889debc62e	\N	4
15235336	c8c0316b57d8001931ceb81d3f53dbc5	c8c0316b57d8001931ceb81d3f53dbc5	\N	4
16604063	c0f45cbb4dad5699dcf959b4043a773c	c0f45cbb4dad5699dcf959b4043a773c	\N	4
16605994	d04eeb0858c49a95fddc0378ba1e4430	d04eeb0858c49a95fddc0378ba1e4430	\N	4
7783689	aba85ecf37860af83f5deb6babc240a0	aba85ecf37860af83f5deb6babc240a0	\N	4
8717503	2d4ce7ee498f3f0a89b97e4129583dea	2d4ce7ee498f3f0a89b97e4129583dea	\N	4
9397892	75de777b8b7b0a3ab47e3a9622ce83dd	75de777b8b7b0a3ab47e3a9622ce83dd	\N	4
11216746	812695cef96d42d3c072717d5cb3bc98	812695cef96d42d3c072717d5cb3bc98	\N	4
13804657	c6da6bdfcca89a2df66f4ef7230e90e2	c6da6bdfcca89a2df66f4ef7230e90e2	\N	4
3990156	d2e6a8623681cfb8a9e4d767edacf3d3	d2e6a8623681cfb8a9e4d767edacf3d3	\N	4
5435898	5b7ef2c773967418230643f1fa76c900	5b7ef2c773967418230643f1fa76c900	\N	4
5446019	abf2d2b6359c6628a7a243ed54e05a80	abf2d2b6359c6628a7a243ed54e05a80	\N	4
5654904	bcf6509a0434aa195bdc3a5fc5e6e219	bcf6509a0434aa195bdc3a5fc5e6e219	\N	4
6908190	71170e3afd870230eae58040b4e2f85f	71170e3afd870230eae58040b4e2f85f	\N	4
7545873	0daf55a6570d7c96805243a6fe497b4d	0daf55a6570d7c96805243a6fe497b4d	\N	4
7549702	bd12ce00a65443ddeaed083f7c8479a2	bd12ce00a65443ddeaed083f7c8479a2	\N	4
7772181	b6a5d4c12146d1d1a6b3c60bea1a9f1a	b6a5d4c12146d1d1a6b3c60bea1a9f1a	\N	4
8000405	e81560052d281e16ecca04ea03e8e9a3	e81560052d281e16ecca04ea03e8e9a3	\N	4
8029795	ba7e9172708d757401a340967adf8207	ba7e9172708d757401a340967adf8207	\N	4
8042180	675b07170e6a9ab3fec80169d788da3c	675b07170e6a9ab3fec80169d788da3c	\N	4
8081463	dafdbab0915c28fc0e5ec8c6036b02b4	dafdbab0915c28fc0e5ec8c6036b02b4	\N	4
9474475	3aa18b6bebfe42727f6be80af106bc8f	3aa18b6bebfe42727f6be80af106bc8f	\N	4
11461500	62cae2f24c05cfaa6164dc2d1995e72c	62cae2f24c05cfaa6164dc2d1995e72c	\N	4
15295791	c2a4e158357ba804179da5939e261df2	c2a4e158357ba804179da5939e261df2	\N	4
8007748	85b2fade846c06230d98cfccd3752523	85b2fade846c06230d98cfccd3752523	\N	4
8773038	7b387c0bbfb2c88d3faab512a11a48f7	7b387c0bbfb2c88d3faab512a11a48f7	\N	4
10106333	edc3fa35dacc5e72ca1a0ab937b83618	edc3fa35dacc5e72ca1a0ab937b83618	\N	4
11959486	3ec44d45791acb9be9c3c5fd32985095	3ec44d45791acb9be9c3c5fd32985095	\N	4
11959905	38d0e113063caee44b715da76272c661	38d0e113063caee44b715da76272c661	\N	4
12349450	f22c4c9fa8990ff5b330fe7f77d0d4d2	f22c4c9fa8990ff5b330fe7f77d0d4d2	\N	4
17340511	f3119dbe0e2380e994ce2ebdbc6c146b	f3119dbe0e2380e994ce2ebdbc6c146b	\N	4
9390689	a3a61106d5a2eae74e53d6e0c486f814	a3a61106d5a2eae74e53d6e0c486f814	\N	4
16716898	678f68b4724a2b5ea2486415544f5b4e	678f68b4724a2b5ea2486415544f5b4e	\N	4
13762920	504d52625ca941052700cd71a4839ca9	504d52625ca941052700cd71a4839ca9	\N	4
15693970	19fab11d4bc4be4b15eacc509ad7d02b	19fab11d4bc4be4b15eacc509ad7d02b	\N	4
17664344	3c980fd2290aba8dd8743b22c5505f4b	3c980fd2290aba8dd8743b22c5505f4b	\N	4
5502501	0a1ecd7b7533f31fdd36c1e133e66c55	0a1ecd7b7533f31fdd36c1e133e66c55	\N	4
9472709	c5adc1125a02a1e6fc09a020e796cc62	c5adc1125a02a1e6fc09a020e796cc62	\N	4
18620438	863a17cfad2a8c8cadddfe4616d3f048	863a17cfad2a8c8cadddfe4616d3f048	\N	4
20912440	d447d8811f82ea641c5ce20047ad22a5	d447d8811f82ea641c5ce20047ad22a5	\N	4
8049037	9a4f9cfd28a7126ab5c2571c61be7421	9a4f9cfd28a7126ab5c2571c61be7421	\N	4
12776115	bff2d9e5d14b218ce7d4585cfcffa204	bff2d9e5d14b218ce7d4585cfcffa204	\N	4
15584303	3675a465b3d44b06886d94f470e7e902	3675a465b3d44b06886d94f470e7e902	\N	4
17662445	2d4294b4f8d241139f49714d6e3314ce	2d4294b4f8d241139f49714d6e3314ce	\N	4
11959873	0138427fef18d3881147e71e2f92557d	0138427fef18d3881147e71e2f92557d	\N	4
12778312	53078b38578f39c563e2929e10e53a83	53078b38578f39c563e2929e10e53a83	\N	4
15584878	04a5f06e699dee99570237af14b5e93a	04a5f06e699dee99570237af14b5e93a	\N	4
18310574	b1ed3220e03d98f602eaf4a6847bb6b9	b1ed3220e03d98f602eaf4a6847bb6b9	\N	4
21364550	751526ac816b7395cf68bb080a85fd68	751526ac816b7395cf68bb080a85fd68	\N	4
84395445	02fb8250a50af93fe61d59bf2e30160e	02fb8250a50af93fe61d59bf2e30160e	\N	4
10108118	0024b19921633fe8a92b7bfdb32e02ce	0024b19921633fe8a92b7bfdb32e02ce	\N	4
10896132	34da1f13b75e1928e8a4e33e6db0cbd1	34da1f13b75e1928e8a4e33e6db0cbd1	\N	4
12777719	59535cd36ba9e0a73574af91aec87170	59535cd36ba9e0a73574af91aec87170	\N	4
14771192	e78f56a14b4d736acc40df006a69d66b	e78f56a14b4d736acc40df006a69d66b	\N	4
15175341	bb822b373fb4b2a4b681a3a1bc0b91c7	bb822b373fb4b2a4b681a3a1bc0b91c7	\N	4
18798060	f49b83b70f9706ca0a75cb5265000c2a	f49b83b70f9706ca0a75cb5265000c2a	\N	4
19487152	68f7b03816ac03e76078f55d042eff3f	68f7b03816ac03e76078f55d042eff3f	\N	4
19487788	f60e799f7fc818d90912a291c660d7cd	f60e799f7fc818d90912a291c660d7cd	\N	4
13688279	fe8f6a7d2123dfa9fd82e051d3ac8eba	fe8f6a7d2123dfa9fd82e051d3ac8eba	\N	4
17129511	7ae17aa67c125e8b9396d33c0fc3f0b4	7ae17aa67c125e8b9396d33c0fc3f0b4	\N	4
6167653	f75d3e355f067217cdd5f214e1192251	f75d3e355f067217cdd5f214e1192251	\N	4
8076223	c62fa0932fa550caebd0c505b5dbbe72	c62fa0932fa550caebd0c505b5dbbe72	\N	4
8519916	e2d8ff556339a6751c5b87a69da3b7c1	e2d8ff556339a6751c5b87a69da3b7c1	\N	4
8705826	a9bc24a0a29cf104eefb7bda18e6d9ef	a9bc24a0a29cf104eefb7bda18e6d9ef	\N	4
9361725	4541a3ddb69ad0dd4737df7114e5566e	4541a3ddb69ad0dd4737df7114e5566e	\N	4
10856682	be62b95001d0b7ec11590ea4dfaa9b3f	be62b95001d0b7ec11590ea4dfaa9b3f	\N	4
10905552	bf2d42e338fd747b9607d89b530eebab	bf2d42e338fd747b9607d89b530eebab	\N	4
11462892	803e289a3c99e2226661978a0d1ddafd	803e289a3c99e2226661978a0d1ddafd	\N	4
11954097	79a3a08778075f3337700bc31bea24af	79a3a08778075f3337700bc31bea24af	\N	4
12220551	bbf35765bdf54aa1eca941aab9007b8d	bbf35765bdf54aa1eca941aab9007b8d	\N	4
12487701	754cbdf9e0e7b9ccaa644c2f590043db	754cbdf9e0e7b9ccaa644c2f590043db	\N	4
13013755	e5fff782a10b03fa555d194c68b50eeb	e5fff782a10b03fa555d194c68b50eeb	\N	4
14131507	0b499b8128c7a34ce85a1d343aa2ee94	0b499b8128c7a34ce85a1d343aa2ee94	\N	4
14255791	50273b2f9033e1bb982736088b8f0458	50273b2f9033e1bb982736088b8f0458	\N	4
14447036	550c16b48ac3332202176fb18feab030	550c16b48ac3332202176fb18feab030	\N	4
14447384	0497235137071af173fbab30122f7ab4	0497235137071af173fbab30122f7ab4	\N	4
15074652	23cee666bd50bf9ce11f9b1faf6c3a30	23cee666bd50bf9ce11f9b1faf6c3a30	\N	4
5740339	5d3ef73cb18c7683f6132591794458d8	5d3ef73cb18c7683f6132591794458d8	\N	4
9279327	1022aab4f8d9f1c1abb77316cef7333d	1022aab4f8d9f1c1abb77316cef7333d	\N	4
9476268	e4e466aca81c87b5b2244cacd0e29cea	e4e466aca81c87b5b2244cacd0e29cea	\N	4
5201622	0f7acaad5493d4218da8da70977ca485	0f7acaad5493d4218da8da70977ca485	\N	4
8032732	091ae634e1f6c33c67538fdfe48586f5	091ae634e1f6c33c67538fdfe48586f5	\N	4
9473824	42eeda9382ada33cfbd9b4db25a79088	42eeda9382ada33cfbd9b4db25a79088	\N	4
8021842	f3d3c9b0b328a76d29cf222a6438a55d	f3d3c9b0b328a76d29cf222a6438a55d	\N	4
8720054	b2e9d57831279c7726d07cea3415933d	b2e9d57831279c7726d07cea3415933d	\N	4
15234079	0bdeaaeaf3bc0ef29e042ec790b62f77	0bdeaaeaf3bc0ef29e042ec790b62f77	\N	4
15234490	6ccd64ff5eba154b95b68953bffb753d	6ccd64ff5eba154b95b68953bffb753d	\N	4
15695079	db4ced677ca22789301534f56b8ff8eb	db4ced677ca22789301534f56b8ff8eb	\N	4
16019616	2561d3f78ef774bf4c585d1bab9175bf	2561d3f78ef774bf4c585d1bab9175bf	\N	4
16019964	96c4a5a5abdb75416e931e2aad960071	96c4a5a5abdb75416e931e2aad960071	\N	4
16020533	8633b0fc3ece565191b24fc9057d9def	8633b0fc3ece565191b24fc9057d9def	\N	4
16020822	cfd6d7a4201f608bdec5b005e2dfd221	cfd6d7a4201f608bdec5b005e2dfd221	\N	4
16316134	80c1fe6d5315e48c19311fa444026af9	80c1fe6d5315e48c19311fa444026af9	\N	4
16657714	21c4c939bc8d9273a020c41b62997583	21c4c939bc8d9273a020c41b62997583	\N	4
17769893	9445a89f3a393ab19b9ee689cff10c02	9445a89f3a393ab19b9ee689cff10c02	\N	4
18579167	e095e680de56f19e2789a84fded47512	e095e680de56f19e2789a84fded47512	\N	4
18579209	54d924ed0e1602f77e74295c0d451cb1	54d924ed0e1602f77e74295c0d451cb1	\N	4
22656117	edb4a796eb4662fae8f452c8cfca5aa5	edb4a796eb4662fae8f452c8cfca5aa5	\N	4
3941437	5ab2a91d7991a0e276ae3c9a0ebce191	5ab2a91d7991a0e276ae3c9a0ebce191	\N	4
4353531	efc594e68fa093035b1bff171e23cda6	efc594e68fa093035b1bff171e23cda6	\N	4
8045536	917548060eecf2ba57787f38e42300ce	917548060eecf2ba57787f38e42300ce	\N	4
8075648	246ceac5126aa181378d8e9466367017	246ceac5126aa181378d8e9466367017	\N	4
8707022	6d7035bb6bf7422ed7d3c141dacd37c7	6d7035bb6bf7422ed7d3c141dacd37c7	\N	4
11465010	068a643214b6b2733a5bbbe305c51961	068a643214b6b2733a5bbbe305c51961	\N	4
12487991	106d131960a438f8af50ff059f7b36a2	106d131960a438f8af50ff059f7b36a2	\N	4
13790769	1d7b94649745d1d5bacc314948bc65f3	1d7b94649745d1d5bacc314948bc65f3	\N	4
15695370	bf36f2d9df769398e24442523004352b	bf36f2d9df769398e24442523004352b	\N	4
15695737	14e85340d633216c43f59b3d0646d57e	14e85340d633216c43f59b3d0646d57e	\N	4
16907428	c034e6aa80fd096220f5f3719049f8a3	c034e6aa80fd096220f5f3719049f8a3	\N	4
17321417	3e22e3027758b5f8cc06749e5ee74c15	3e22e3027758b5f8cc06749e5ee74c15	\N	4
18264711	c60f8187160b5bd427e6635d950ee3fb	c60f8187160b5bd427e6635d950ee3fb	\N	4
3297745	00356b1cfb28a07c7112c470ad525449	00356b1cfb28a07c7112c470ad525449	\N	4
4700593	ee468883e2706b5efc4b7a08d49f4c96	ee468883e2706b5efc4b7a08d49f4c96	\N	4
7973553	b6473353c5a05549e3e5ff7e8960e373	b6473353c5a05549e3e5ff7e8960e373	\N	4
9203225	a626515c0c90295fb6d1f44bea4a3fe6	a626515c0c90295fb6d1f44bea4a3fe6	\N	4
9390966	314116080c0c47810631f51c3e25b048	314116080c0c47810631f51c3e25b048	\N	4
9392858	61b4aa784e5104c03602607c33df523a	61b4aa784e5104c03602607c33df523a	\N	4
9496511	70ad9a80c94b20e20cdac349ff93c0bd	70ad9a80c94b20e20cdac349ff93c0bd	\N	4
10241655	9dcbf932214e9f31ca68ae9344478fcc	9dcbf932214e9f31ca68ae9344478fcc	\N	4
11236773	a9f454eca88a96fa750a08089b4c98a1	a9f454eca88a96fa750a08089b4c98a1	\N	4
10720364	41cdbc5d83d17c3acbca613523d40680	41cdbc5d83d17c3acbca613523d40680	\N	4
19440209	bbe627fca6996d3a087c6cd38d9a8c95	bbe627fca6996d3a087c6cd38d9a8c95	\N	4
3908624	837342a045376e19fcd373cfd88e3aed	837342a045376e19fcd373cfd88e3aed	\N	4
5201033	4ee25470d6a2a4f8e0ab5e13414af829	4ee25470d6a2a4f8e0ab5e13414af829	\N	4
14917541	4291aa80a7a30caf852eb1fcf1dd9e90	4291aa80a7a30caf852eb1fcf1dd9e90	\N	4
18962414	ab31af8aeb4a4a00825245b24f4ebad5	ab31af8aeb4a4a00825245b24f4ebad5	\N	4
8022340	c6534ade707682c57b869d33bc1afc58	c6534ade707682c57b869d33bc1afc58	\N	4
4589713	3b19c55875f3fe6cba6e121f4d265d4b	3b19c55875f3fe6cba6e121f4d265d4b	\N	4
8013569	ecb594d875041950eae84edbe8d6fbfd	ecb594d875041950eae84edbe8d6fbfd	\N	4
8023975	6e66608c8b5942c2932381c06deb5e31	6e66608c8b5942c2932381c06deb5e31	\N	4
3991395	138ea42c67068e38ff552a6a92d8931b	138ea42c67068e38ff552a6a92d8931b	\N	4
6966311	3c2c6626519e6a8e1438e63387097de1	3c2c6626519e6a8e1438e63387097de1	\N	4
9602126	2081f8302e08bdcd131d74ee9edac63d	2081f8302e08bdcd131d74ee9edac63d	\N	4
7482782	65db748c0ae46b2423b37b4968458045	65db748c0ae46b2423b37b4968458045	\N	4
18308852	ef6c9170630577ac4de337f447242f4f	ef6c9170630577ac4de337f447242f4f	\N	4
2069838	27c05ddeecbab6d9d800c1770ec0ac7c	27c05ddeecbab6d9d800c1770ec0ac7c	\N	4
7785696	5904ca624728bad9e6da0acad169957c	5904ca624728bad9e6da0acad169957c	\N	4
10108462	d7692557c59a8f460beb14b5211b6899	d7692557c59a8f460beb14b5211b6899	\N	4
8034298	6efdcea180fdefeda32b68217f8e9bec	6efdcea180fdefeda32b68217f8e9bec	\N	4
84492794	1ee09d6d90dac4cb439a71a1ca6ede2d	1ee09d6d90dac4cb439a71a1ca6ede2d	\N	4
8033769	9ac9b89d78d1150f68859173a4aa5fda	9ac9b89d78d1150f68859173a4aa5fda	\N	4
14589482	2576f0211649910a9164a2dc4bb23117	2576f0211649910a9164a2dc4bb23117	\N	4
13499843	6ece4b36786db597bc3e564d938dd2a1	6ece4b36786db597bc3e564d938dd2a1	\N	4
10716040	cc56da664e9d415e8e406eb29221699b	cc56da664e9d415e8e406eb29221699b	\N	4
15295462	9c6cc3c6c7258cc2732dd97bc7d4476d	9c6cc3c6c7258cc2732dd97bc7d4476d	\N	4
10751767	0cf4009ada62fc78d7830b776f95ef55	0cf4009ada62fc78d7830b776f95ef55	\N	4
11319506	4968c16fdb320ccbfbaa0cdbec0d50f8	4968c16fdb320ccbfbaa0cdbec0d50f8	\N	4
11460232	14691d9e8b6cf5beb8487ee6b0e9d54e	14691d9e8b6cf5beb8487ee6b0e9d54e	\N	4
11912990	c8bc33deb4e3f497035be51d78ee21d8	c8bc33deb4e3f497035be51d78ee21d8	\N	4
11914501	ef2bbfa274ebf99fcc8c1638543241b8	ef2bbfa274ebf99fcc8c1638543241b8	\N	4
11955728	e93cf177cf00092ba1df58ff7512ca0f	e93cf177cf00092ba1df58ff7512ca0f	\N	4
12354608	7604175034ea0fb5cafddfb5e7a1f4bd	7604175034ea0fb5cafddfb5e7a1f4bd	\N	4
12655010	e0549e59f60d1d7b13c3c73b5efee5af	e0549e59f60d1d7b13c3c73b5efee5af	\N	4
13208733	1d04f0e48f026a863a53b8a345713f43	1d04f0e48f026a863a53b8a345713f43	\N	4
13803295	76cfa6461896fd0803a763eb703c89ae	76cfa6461896fd0803a763eb703c89ae	\N	4
14022931	1517c7000ddfb360d5c28ae063b12533	1517c7000ddfb360d5c28ae063b12533	\N	4
14249554	31bb1fb9af6df36e819fdc585a7f3377	31bb1fb9af6df36e819fdc585a7f3377	\N	4
14957722	797012244b6d1a850e78e004b1dd3d17	797012244b6d1a850e78e004b1dd3d17	\N	4
15174952	1a2bf8fe1014a21514438fa011d49b17	1a2bf8fe1014a21514438fa011d49b17	\N	4
15357168	afc22555321b145d7ea5b69a70ef54ce	afc22555321b145d7ea5b69a70ef54ce	\N	4
15432243	8da2677a614985023f19438197c46e0b	8da2677a614985023f19438197c46e0b	\N	4
15947784	c4baf60baab17c46fb500042a747b35c	c4baf60baab17c46fb500042a747b35c	\N	4
16351978	0a0744d74f56bc4674b810f47dd1aeb7	0a0744d74f56bc4674b810f47dd1aeb7	\N	4
16716300	e34b53045761bf9355be2a6352bb7635	e34b53045761bf9355be2a6352bb7635	\N	4
16743379	6add79656bde4df049c2ad8c6f6e9ceb	6add79656bde4df049c2ad8c6f6e9ceb	\N	4
17436794	b4bebc877cec4f541756a4281d232130	b4bebc877cec4f541756a4281d232130	\N	4
17437536	c36c4fd796c36e2d556de3a4d369988e	c36c4fd796c36e2d556de3a4d369988e	\N	4
17794526	3ac954beb5d43c17d25bcc5e9cba8d41	3ac954beb5d43c17d25bcc5e9cba8d41	\N	4
18055149	d3293505d9354617bf5b69ba6152afc8	d3293505d9354617bf5b69ba6152afc8	\N	4
18208897	db19ca74bde4620a699e9688802979b6	db19ca74bde4620a699e9688802979b6	\N	4
18614251	e48f290a6222b9f4385c370924403104	e48f290a6222b9f4385c370924403104	\N	4
18615818	4765c7b0cc350659014f14ed68523687	4765c7b0cc350659014f14ed68523687	\N	4
19236516	103f5595735d44acba318b6186f57da1	103f5595735d44acba318b6186f57da1	\N	4
8038358	544a459d0774acbaa0fd394c78fcc006	544a459d0774acbaa0fd394c78fcc006	\N	4
11361473	ae51a51be3c372fdecfa7dda408f7792	ae51a51be3c372fdecfa7dda408f7792	\N	4
12321519	718ebe6bb41bc89f10549cc66d87ae54	718ebe6bb41bc89f10549cc66d87ae54	\N	4
13098687	56a1d50bfb5ff717ce75be31d469291a	56a1d50bfb5ff717ce75be31d469291a	\N	4
15621504	335aa788510b0072f0863c7e675d2c42	335aa788510b0072f0863c7e675d2c42	\N	4
15920357	159391629faa95d8ab0996235288a4b7	159391629faa95d8ab0996235288a4b7	\N	4
17129591	2a74c8c2aca266bc3bbda43e479163c3	2a74c8c2aca266bc3bbda43e479163c3	\N	4
17239002	a14ea96a30f7e218e36194e29863c0a5	a14ea96a30f7e218e36194e29863c0a5	\N	4
17662802	1e53976e6ddc2507675107d43d7896e7	1e53976e6ddc2507675107d43d7896e7	\N	4
2086595	aab99469589f63a9ab6d086a7528ead5	aab99469589f63a9ab6d086a7528ead5	\N	4
8023615	221583491c25093ce715bd52ed3232cc	221583491c25093ce715bd52ed3232cc	\N	4
8035343	d4709f5ee78aca12da4e4bca01acaaf9	d4709f5ee78aca12da4e4bca01acaaf9	\N	4
8040696	f5581de8bbc525c6bb24f9da632ad00d	f5581de8bbc525c6bb24f9da632ad00d	\N	4
8043996	9f73ec8a02856a3aa811daeedceeb443	9f73ec8a02856a3aa811daeedceeb443	\N	4
9320887	a9673f40a914b0e5b6194c9e3104c9f9	a9673f40a914b0e5b6194c9e3104c9f9	\N	4
9398159	8856ccfedf0f80e21922eee7640d6483	8856ccfedf0f80e21922eee7640d6483	\N	4
11960981	415670c3ea48083ec8af4fe108d913fc	415670c3ea48083ec8af4fe108d913fc	\N	4
13309223	76c65d6cf9b9bc76d923ba6538d8f384	76c65d6cf9b9bc76d923ba6538d8f384	\N	4
13648065	c42ac7d7a2ffb03435f13acb7433c713	c42ac7d7a2ffb03435f13acb7433c713	\N	4
13803902	7900597187bd4ff22d5c1f698488c7a0	7900597187bd4ff22d5c1f698488c7a0	\N	4
14067007	669a62819ed705f7d1f20fac69f691bf	669a62819ed705f7d1f20fac69f691bf	\N	4
14171327	5d0b09263e71ea59aa5afc8aab074a30	5d0b09263e71ea59aa5afc8aab074a30	\N	4
14267897	8ff4e7e17c20df7f455260a9a76c5180	8ff4e7e17c20df7f455260a9a76c5180	\N	4
14320450	af632f527d347824e4b3682e044eb5e0	af632f527d347824e4b3682e044eb5e0	\N	4
15174936	02927bb1cda41153ba8face3bb9e006d	02927bb1cda41153ba8face3bb9e006d	\N	4
15295994	d9ef59837e567bc66381df0daa901303	d9ef59837e567bc66381df0daa901303	\N	4
15296686	74b1a3573670a0c36a64e40a79d1ba12	74b1a3573670a0c36a64e40a79d1ba12	\N	4
15621939	6b4eb31f521cce1b7245f4b945eb112c	6b4eb31f521cce1b7245f4b945eb112c	\N	4
15755730	8032df710aeba5a98057a9ba41f02810	8032df710aeba5a98057a9ba41f02810	\N	4
15784489	49ea85c3f2b1fdc2e40b64917221ee51	49ea85c3f2b1fdc2e40b64917221ee51	\N	4
16039221	3621fe1446c27c8314d8cf7de232bafa	3621fe1446c27c8314d8cf7de232bafa	\N	4
16199520	1ba9cb9ad2d9f439620108a6921c1f7a	1ba9cb9ad2d9f439620108a6921c1f7a	\N	4
16445626	10785e4ce38aecc7111f121632d50908	10785e4ce38aecc7111f121632d50908	\N	4
16655032	0abd825d7e94deb3ba417d07b76a59cd	0abd825d7e94deb3ba417d07b76a59cd	\N	4
17130332	c247ea5599265b4b329625d4b9aeed4d	c247ea5599265b4b329625d4b9aeed4d	\N	4
17130671	d45ab075fb5884740ba4ff83b4c83aa6	d45ab075fb5884740ba4ff83b4c83aa6	\N	4
17323027	2617c7e1c3d9eb31907a4007f24a4a13	2617c7e1c3d9eb31907a4007f24a4a13	\N	4
3223045	2217eecadc34bfb5dc7db1da7ce29408	2217eecadc34bfb5dc7db1da7ce29408	\N	4
8039615	d366cbc49984c88fe202951ad6bfac68	d366cbc49984c88fe202951ad6bfac68	\N	4
10717019	546397232dfc504cc387c86d74788f38	546397232dfc504cc387c86d74788f38	\N	4
12778229	569f64ac0be0b15d3ee95f3aa02b23ea	569f64ac0be0b15d3ee95f3aa02b23ea	\N	4
14107223	952942e0f99fbac85ff6446eda32417d	952942e0f99fbac85ff6446eda32417d	\N	4
13524598	3fee666a1a3f346c81ad8dbdf115dfc3	3fee666a1a3f346c81ad8dbdf115dfc3	\N	4
5466076	c3daaef7c0f76e79cbf178df9e6b2b00	c3daaef7c0f76e79cbf178df9e6b2b00	\N	4
7080727	82e37376111000d9bbfc2ecde2fae6d3	82e37376111000d9bbfc2ecde2fae6d3	\N	4
8041985	9f8cd5426238b62a9b09b241cb005e44	9f8cd5426238b62a9b09b241cb005e44	\N	4
8039463	4b21b5c4815577db073406fa36c6fa0f	4b21b5c4815577db073406fa36c6fa0f	\N	4
19592116	2856d68750ed49aef0d407b547b8bdeb	2856d68750ed49aef0d407b547b8bdeb	\N	4
12779833	1e4925ab5a441e00e57904834a14e13e	1e4925ab5a441e00e57904834a14e13e	\N	4
9081546	ec744a4144de27c61d42f3ac30b6b4e8	ec744a4144de27c61d42f3ac30b6b4e8	\N	4
14131053	588505cf579251db86f27dc3ee710a13	588505cf579251db86f27dc3ee710a13	\N	4
6953950	a08200d824595e54997221a9ec0db9b2	a08200d824595e54997221a9ec0db9b2	\N	4
13648603	8efb164cd5b818b99862a31eb0fb63f7	8efb164cd5b818b99862a31eb0fb63f7	\N	4
17254684	129c65bf7cabf383adf639072c6ac9bb	129c65bf7cabf383adf639072c6ac9bb	\N	4
20039181	6b1f1ae672fa6e5430ad510c2a4702ee	6b1f1ae672fa6e5430ad510c2a4702ee	\N	4
13966349	f012e39b85f4b6d1f80741c4e5803e27	f012e39b85f4b6d1f80741c4e5803e27	\N	4
5200034	c9cadc744663d31e5e98418bd07cf355	c9cadc744663d31e5e98418bd07cf355	\N	4
9906615	354a9f14d14e98288482a38f6dc4b4c6	354a9f14d14e98288482a38f6dc4b4c6	\N	4
11953708	7e218f97d7ff5d4317b9c05d3de84e7c	7e218f97d7ff5d4317b9c05d3de84e7c	\N	4
8045120	e3eca8e3f06bf3e65c56b10b553b613a	e3eca8e3f06bf3e65c56b10b553b613a	\N	4
9874227	8b76b4a00651cbe8556fcb06b19d589f	8b76b4a00651cbe8556fcb06b19d589f	\N	4
11705856	be29c5dd67c03a2d2cbbfe0bb31ffb67	be29c5dd67c03a2d2cbbfe0bb31ffb67	\N	4
18620054	7d87c51f16fa11d4c23a77dd79c7b22b	7d87c51f16fa11d4c23a77dd79c7b22b	\N	4
18618150	4b4ce1f63ea891603ccc3758edda8912	4b4ce1f63ea891603ccc3758edda8912	\N	4
19279167	f1b67874cf9c6613b8d4fc10e232412e	f1b67874cf9c6613b8d4fc10e232412e	\N	4
9474618	26dbb2348b7dc1a2fe9e3698418f12a7	26dbb2348b7dc1a2fe9e3698418f12a7	\N	4
17129049	a9b9e4cae8e76bbdf0b64eef60bec2a6	a9b9e4cae8e76bbdf0b64eef60bec2a6	\N	4
10172170	7b58c972cee4aafc3a62c705ca2957c1	7b58c972cee4aafc3a62c705ca2957c1	\N	4
11036485	17aac5ccc9e8144a9ce303f42fc65198	17aac5ccc9e8144a9ce303f42fc65198	\N	4
20199965	cd351ae5ddf2b85aa5f569db2669e360	cd351ae5ddf2b85aa5f569db2669e360	\N	4
12348836	45aa7659e0d36c12b19c25a7719c3a4b	45aa7659e0d36c12b19c25a7719c3a4b	\N	4
5198826	0e9372c1bb77ca090f3174d195bacb08	0e9372c1bb77ca090f3174d195bacb08	\N	4
\.


--
-- PostgreSQL database dump complete
--

