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
-- Data for Name: building; Type: TABLE DATA; Schema: public; Owner: -
--

COPY building (id, name, headquarters) FROM stdin;
1	A	1
2	B	1
3	C	1
4	D	1
5	E	1
6	A	3
7	B	3
8	C	3
9	D	3
10	E	3
\.


--
-- Name: building_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('building_id_seq', 10, true);


--
-- Data for Name: carrera; Type: TABLE DATA; Schema: public; Owner: -
--

COPY carrera (id, nombre, "idArea") FROM stdin;
01	PNF Agroalimentación	3
05	PNF Geociencias	1
06	PNF Turismo	2
07	PNF Contaduria	2
08	PNF Fonoaudiología	2
10	PNF Psicología Social	2
09	PNF Seguridad Alimentaria Y Cultura Nutricional	3
11	PNF Historia	2
02	PNF Construcción Civil	1
04	PNF Administración	2
03	PNF Informática	1
12	PNF Enfermería Integral Comunitaria	4
42	Construccion Civil	1
44	Turismo	3
45	Informatica	1
46	Hoteleria	3
47	Contaduria	3
48	Manejo de Emergencias	2
43	Mineria	1
41	Agrotecnia	3
49	Radiologia e Imagenologia	3
50	Enfermeria	2
\.


--
-- Data for Name: carreraSede; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "carreraSede" (id, "idCarrera", "idCoordinador", "idSede") FROM stdin;
1	01	3048184	3
2	02	3767311	3
5	05	2149217	3
6	06	3910823	3
7	07	3939687	3
8	08	3661985	3
4	04	8037619	3
10	03	2288079	1
3	03	10256095	3
11	12	3966127	3
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
3	Prosecucion	\n\t\t{\n\t\t\t"periodos" : [\n\t\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Trayecto de Transicion",\n\t\t\t\t\t"id" : "TT",\n\t\t\n\t\t\t\t\t"duracion" : "3",\n\t\t\t\t\t"subperiodos" : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Trayecto 3",\n\t\t\t\t\t"id" : "T3",\n\t\t\n\t\t\t\t\t"duracion" : false,\n\t\t\t\t\t"subperiodos" : [\n\t\t\t\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Trimestre 1",\n\t\t\t\t\t\t\t"id" : "t1",\n\t\t\t\t\t\t\t"duracion" : "3"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Trimestre 2",\n\t\t\t\t\t\t\t"id" : "t2",\n\t\t\t\t\t\t\t"duracion" : "3"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Trimestre 3",\n\t\t\t\t\t\t\t"id" : "t3",\n\t\t\t\t\t\t\t"duracion" : "3"\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t"nombre" : "Trayecto 4",\n\t\t\t\t\t"id" : "T4",\n\t\t\n\t\t\t\t\t"duracion" : false,\n\t\t\t\t\t"subperiodos" : [\n\t\t\t\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Trimestre 1",\n\t\t\t\t\t\t\t"id" : "t1",\n\t\t\t\t\t\t\t"duracion" : "3"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Trimestre 2",\n\t\t\t\t\t\t\t"id" : "t2",\n\t\t\t\t\t\t\t"duracion" : "3"\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t"nombre" : "Trimestre 3",\n\t\t\t\t\t\t\t"id" : "t3",\n\t\t\t\t\t\t\t"duracion" : "3"\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\n\t\t\t\t}\n\t\t\t]\n\t\t}\n\t
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
\.


--
-- Data for Name: malla; Type: TABLE DATA; Schema: public; Owner: -
--

COPY malla (id, fecha) FROM stdin;
PNFI-2012	2011-04-27
PNFA-2010-2	2015-10-01
PNFA-2014-PRO	2015-10-19
PNFA-2014	2015-10-12
PNFA-2010-3	2015-10-27
\.


--
-- Data for Name: mallaECS; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "mallaECS" (id, estado, "idECS", "idMalla") FROM stdin;
1	t	1	PNFI-2012
2	t	2	PNFA-2014
5	t	4	PNFA-2014-PRO
4	t	2	PNFA-2010-2
8	t	2	PNFA-2010-3
\.


--
-- Data for Name: periodo; Type: TABLE DATA; Schema: public; Owner: -
--

COPY periodo ("ID", id, "fechaInicio", "fechaFin", tipo, "idECS") FROM stdin;
5	2015-B	2015-10-27	2015-10-28	p	2
6	2015-B	2015-05-18	2015-10-02	a	2
7	2015-B	2015-10-27	2015-10-28	p	4
8	2015-B	2015-05-18	2015-10-02	a	4
\.


--
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: -
--

COPY persona (cedula, nombre, "segundoNombre", apellido, "segundoApellido", sexo, correo, direccion, telefono, "telefonoFijo") FROM stdin;
13014569	Nelma	Del Valle	Uzcategui	De Barreto	f	redes.asesoria@gmail.com	Sin asignar	0414-7416984	02742211241
9499979	Rodolfo	Jose	Gonzalez	Gomez	f	rodolfogonzalezgomez@gmail.com	Sin asignar	04265770067	02742448880
11956576	Agni	Carolina	Sarache	Balza	f	carolina_sarache@yahoo.es	Sin asignar	0416-4708970	0274-2664556
8002737	Jose	Juvencio	Quintero	Delgado	f	Sin asignar	Sin asignar	Sin asignar	\N
8029075	Jerson	Orlando	Zambrano	Guerrero	f	jersonzambrano@yahoo.com	Sin asignar	042657800277	02742444503
17663839	Marlene	Jackeline	Rincón	Muñoz	f	Sin asignar	Sin asignar	Sin asignar	\N
10100205	German	\N	Rojas	\N	f	rgerman75@yahoo.es	Sin asignar	0424-7071381	0274-2214285
7168412	Jesus	Antonio	Delgado	Mendoza	f	jesusdelg1@gmail.com	Sin asignar	04160727928	\N
19096583	Anna	Katherina	Lezama	Galaschow	f	annitap46@gmail.com	Sin asignar	04126552386	\N
9201868	Pedro	Antonio	Martinez	Herrera	f	mhpa65@hotmail.com	Sin asignar	0412-5499476	02742630019
15296169	Rosaly	Carolina	Mendoza	Marquez	f	mendozarosaly@hotmail.com	Sin asignar	04264153365	02742661228
3992405	Maria	Magaly	Valero	Lacruz	f	Sin asignar	Sin asignar	Sin asignar	\N
14267080	Yulecxy 	Aurora	Uzcategui	Araque	f	yuluzar@hotmail.com	Sin asignar	0414-3751830	0274-2528083
3048184	Jose	\N	Solano	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
4768948	Beatriz Carolina	Del Carmen	Angeli	Maury	f	beatrizcarolinaangeli@gmail.com	Sin asignar	04247349806	\N
7080727	Ivan	\N	Lopez	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8039294	Liliana	\N	Duran	\N	f	ldgeologa@gmail.com	Sin asignar	Sin asignar	\N
8039463	Ramses	Alonzo	Pernia	Suarez	f	ramsespernia0606@hotmail.com	Sin asignar	Sin asignar	\N
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
4489957	Zoila	Teresa	Sosa	Barrios	f	Sin asignar	Sin asignar	Sin asignar	\N
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
5466076	Esteban	\N	Briceño	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5507269	Lourdes	F	Valvuena	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5559793	Edith	Iraiz	Calderon	Saras	f	eics_amigos@hotmail.com	Sin asignar	0414-7456832	\N
5561396	Manuel	Antonio	Oliveros	Carruyo	f	mao5561@hotmail.com	Sin asignar	0426-5580062	0274-2216348
5740339	Cecilia	Magdalena	Granados	De Brito	f	Sin asignar	Sin asignar	Sin asignar	\N
5794416	Mariela	\N	Mendoza	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5863317	Oscar	Geronimo	Mujica	Figueroa	f	oscar.mujica_89@hotmail.com	Sin asignar	0426-5507175	\N
4054457	Victor	Alberto	Meza	Morales	f	victormeza02@hotmail.com	Sin asignar	Sin asignar	\N
4491607	Jesus	Alfonso	Rivas	Chacon	f	alfonsorivas17@hotmail.com	Sin asignar	0416-9980201	\N
5124273	Corrado	\N	Canto	Pacheco	f	ccantopacheco@hotmail.com	Sin asignar	Sin asignar	\N
5952723	Leticia	Del Carmen	Mogollon	De Chalbaud	f	Sin asignar	Sin asignar	Sin asignar	\N
3309773	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
6558454	Andres	Julian	Forti	Cavazzoni	f	aforti1963@hotmail.com, aforti@inia.gob.ve	Sin asignar	Sin asignar	\N
6940439	Zandra	Virginia	Ortega	Guerra	f	zandravirginia@yahoo.es	Sin asignar	04146086140	\N
8028204	Nancy	Margot	Villarreal	Villanueva	f	nanavillarreal@gmail.com	Sin asignar	04147451751	\N
7326064	Ramon	Fernando	Riera	Tona	f	rriera60@hotmail.com	Sin asignar	0416-6562052	0274-2452722
7525829	Carmen	Ysolina	Gutierrez	Pitter	f	Sin asignar	Sin asignar	Sin asignar	\N
7648734	Maria	Trinidad	Otalvora	\N	f	otalvoramm@hotmail.com	Sin asignar	2211916	0274
7775026	Mariela	C	Oliveros	C	f	marielaobracho@hotmail.com	Sin asignar	Sin asignar	\N
7824945	Thais	Coromoto	Bracho	Urdaneta	f	thaisbracho49@gmail.com	Sin asignar	0414-7172393	\N
8000617	Omar	Enrrique	Fernandez	Castillo	f	venaomar88@hotmail.com	Sin asignar	Sin asignar	\N
8002316	Jesus	Manuel	Sanchez	Villarreal	f	sanvi_3@hotmail.com	Sin asignar	0414-5416339	\N
8004161	Maria	Xiomara	Gil	Otaiza	f	maxiogilo12@gmail.com	Sin asignar	Sin asignar	\N
8005159	Rigoberto	\N	Paredes	\N	f	Sin asignar	Sin asignar	04144569878	\N
8006388	Roman	Ali	Marquez	\N	f	tierracruda@hotmail.com	Sin asignar	0424-7160374	\N
8012641	Ana	Teresa	Quintero	De Ruggero	f	anatqdr@gmail.com	Sin asignar	0424-7671634	\N
8019784	Liria	\N	Gutierrez	De Rojas	f	lirios_gutierrez@hotmail.com	Sin asignar	Sin asignar	\N
8020758	Maria	Grazia	Mocci	Deriu	f	cuadrifolium@yahoo.com	Sin asignar	04149721770	02742667245
8021306	Luis	Apolinar	Altuve	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8021736	Rosa	Maria	Vasquez	Falcon	f	rosa_mariavf@hotmail.com	Sin asignar	0416-2747257	\N
8021842	Jose	Ramon	Diaz	\N	f	joserdiazp@yahoo.es	Sin asignar	0274-4176258	\N
8022671	Jose 	Humberto	Quintero	Davila	f	Sin asignar	Sin asignar	04147444352	02742631167
8024531	Emiro	\N	Rivas	Rivas	f	Sin asignar	Sin asignar	Sin asignar	\N
8025750	Victor	Manuel	Contreras	Contreras	f	vimaco7@hotmail.com	Sin asignar	0424-7214303	\N
8026122	Carla	\N	Secco	Track	f	carlaseco@gmail.com	Sin asignar	Sin asignar	0274-2447227
8026155	Aura	Yanira	Santana	Vivas	f	Sin asignar	Sin asignar	Sin asignar	\N
17027780	Eibert	Leonardo	Reinoza	Contreras	f	eibertleon@gmail.com	Sin asignar	04265737393	02746587384
4491973	Ana	Celina	Muñoz	Garcia	f	anamunozuniversidad@gmail.com	Sin asignar	04147447472	02742637323
8027793	Judith	Esperanza	Rodriguez	Rivero	f	rodriguez.judith593@gmail.com	Sin asignar	04269287208	02744172051
11957795	Alix	Yubisay	Sayago	Albarran	f	aysa_ve@yahoo.com	Sin asignar	04147237453	\N
6953950	Adolfo	Jose	Romero	Gonzalez	f	adrome67@yahoo.es	Sin asignar	04268808212	02744147257
5239250	Gilbert	Arturo	Santeliz	Zerpa	f	gilbertsanteliz@gmail.com	Sin asignar	04265707388	02742215787
4484976	Nelson	Antonio	Corredor	Trejo	f	ncorredortrejo@gmail.com	Sin asignar	2442582	0274
8027408	Olga	Maritza	De Frenza	Hernandez	f	maridefren@hotmail.com	Sin asignar	0412	\N
8029696	Ana	Cristina	Pacheco	Lugo	f	ana_cristinapacheco@hotmail.com	Sin asignar	0416-6740590	\N
8031064	Gladys	Elena	Araujo	Diaz	f	geap54@yahoo.com	Sin asignar	0416-3795128	02742522383
8032732	Aura	Cecilia	Quintero	D Jesus	f	auracqd@hotmail.com	Sin asignar	0414-7466491	\N
8034029	Francisco	Alonso	Marquez	Sosa	f	franmarq25@yahoo.com	Sin asignar	04149792750	02742632918
8034300	Pedro	William	Gonzalez	Guillen	f	pwgg@hotmail.com	Sin asignar	Sin asignar	\N
8034371	Javier	Alexis	Tellez	Gil	f	jatell@hotmail.com	Sin asignar	0416-2704767	\N
8035484	Pio	Jose	Muñoz	Angulo	f	pjota15@hotmail.com	Sin asignar	22160322	0274
8038332	Marjorie	\N	Uzcategui	\N	f	mayouzca@hotmail.com	Sin asignar	0416-7743326	\N
8038611	Frank	Reinaldo	Rodriguez	Calderon	f	srodriguez@inia.gob.ve	Sin asignar	Sin asignar	\N
10102108	Yasmelia	Del Carmen	Zerpa	Vielma	f	Sin asignar	Sin asignar	Sin asignar	\N
8002183	Luis	Enrique	Rojas	Ramirez	f	rojasluis64@gmail.com	Sin asignar	Sin asignar	\N
8006639	Jose	De Jesus	Marquez	\N	f	chepomar@hotmail.com	Sin asignar	0414-7166051	2664709
8039498	Tibayre	\N	Fernandez	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8040787	Ruben	Dario	Volcanes	Corredor	f	rubenvolcanes13@hotmail.com	Sin asignar	0426-5710547	0274-2662756
8041510	Emiro	Alfredo	Nava	Flores	f	emironava@hotmail.com, emironava@cantv.net	Sin asignar	0416-6740835	0274-2633054
8041620	Ramiro	Enrique	Prato	Vicuña	f	ramiroprato@hotmail.com	Sin asignar	0414-7445995	\N
8042559	Jhonny	Enrique	Sanchez	Villareal	f	jhonysanchezv@yahoo.com	Sin asignar	0414-7179562	\N
8044768	Jorge	Luis	Flores	Calderon	f	jorgelflores5@hotmail.com	Sin asignar	Sin asignar	\N
8045258	Carlos	Eduardo	Suescum	Rodriguez	f	suescum99@hotmail.com	Sin asignar	0414-9793280	0274-2213072
8045307	Belky	Coromoto	Sulbaran	Maldonado	f	belky_sulbaran@yahoo.com	Sin asignar	0414-7466065	\N
8046408	David	Jose	Flores	Rojas	f	ingdavidflores@gmail.com	Sin asignar	Sin asignar	\N
8046659	Milton	\N	Silva	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8048794	Grizeta	\N	Uzcategui	Barrios	f	joanktp@hotamil.com	Sin asignar	Sin asignar	\N
8079222	Magaly	Alicia	Valero	De Rodriguez	f	magava54@yahoo.es	Sin asignar	2522281	0274
8080375	Mario	\N	Lanza	Camacaro	f	lanza.c@hotmail.com	Sin asignar	Sin asignar	\N
8029045	Amneris	Teotiste	Guerrero	Molina	f	guerrero.amneris28@gmail.com	Sin asignar	0426-5725885	\N
8080676	Herlinda	Cecilia	Montoya	De Higuera	f	leoriana@hotmail.com	Sin asignar	04168876722	\N
8087415	Libia	Y	Marquez	C	f	Sin asignar	Sin asignar	Sin asignar	\N
8331149	Jesus	\N	Vasquez	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8336414	Jose	\N	Vasquez	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8656400	Pedro	\N	Manzano	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5435898	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8683060	Lilian	Aurora	Puentes	Peña	f	lilianpuentes1@hotmail.com	Sin asignar	Sin asignar	\N
8720054	Henry	Eduardo	Garmendia	Paredes	f	hegp2007@yahoo.com	Sin asignar	0416-4853146	\N
8958864	Carlos	\N	Rojas	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9028433	Maritza	Josefina	Peña	Candela	f	mari_p2005@hotmail.com	Sin asignar	0412	\N
9234597	Pedro	\N	Gutierrez	\N	f	pedrogutierrez202@hotmail.com	Sin asignar	Sin asignar	\N
9472514	Jose	Luis	Marquez	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9473151	Jairo	Ramon	Peña	Peña	f	Sin asignar	Sin asignar	Sin asignar	\N
9473374	Fredy	Enrique	Rivas	Valero	f	ingorivas@hotmail.com	Sin asignar	0416-5025988	\N
9473423	Idalba	Del Socorro	Perez	Mora	f	idalser@yahoo.com	Sin asignar	0416-5719995	\N
9473567	Lisbeth	Jane	Diaz	De Garcia	f	lisbethjane@gmail.com	Sin asignar	Sin asignar	\N
9473852	Carlos	Manuel	Sanchez	Garcia	f	Sin asignar	Sin asignar	Sin asignar	\N
9476268	Lusbeth	Del Valle	Ramirez	Palazzi	f	lulyrp@hotmail.com	Sin asignar	Sin asignar	\N
9478674	Carlos	Antonio	Zordan	Zordan	f	Sin asignar	Sin asignar	Sin asignar	\N
9501330	Orlando	Antonio	Oberto	Urbina	f	orlandooberto@yahoo.com	Sin asignar	Sin asignar	\N
9906067	Omel	Jose	Sifontes	\N	f	omelsifontes@gmail.com	Sin asignar	Sin asignar	\N
9906615	Teresa	De Jesus	Medina	De Rodriguez	f	teresamero@gmail.com	Sin asignar	04120759473	\N
10092487	Migdalia	Bethsabe	Martinez	Carrero	f	migbethsamar03@hotmail.com	Sin asignar	0414-7381102	\N
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
10718091	Omar	Alonzo	Balza	Carrillo	f	balzaomar@hotmail.com	Sin asignar	0424-7728962	0274-4166125
10720364	Jose	Timoteo	Milla	Monsalve	f	millamjo@ula.ve, millamjo@hotmail.com, illamjo@hotmail.com	Sin asignar	0414	\N
10797122	Rosanela	\N	Galindo	Chirinos	f	rosanela.galindo@gmail.com	Sin asignar	Sin asignar	\N
11067484	Anneline	\N	Alvarado	Machado	f	annelinea@gmail.com	Sin asignar	Sin asignar	\N
11108398	Olga	Ines	Contreras	Rodriguez	f	Sin asignar	Sin asignar	Sin asignar	\N
11319364	Marilu	\N	Andara	Castellano	f	Sin asignar	Sin asignar	Sin asignar	\N
11460000	Esther	Zulay	Rosas	Lobo	f	erosaslobo@gmail.com	Sin asignar	Sin asignar	\N
10256095	Duberlis	Del Valle	Gonzalez	\N	f	duberlisg@gmail.com	Sin asignar	04141790063	\N
9389944	Cristina	Antonia	Sandoval	Briceño	f	cristinasandovalb@hotmail.com	Sin asignar	04265739493	02742452759
8044725	Yudith	\N	Sanchez	\N	f	yuditsame@yahoo.es,yuditsame@hotmail.com	Sin asignar	04247731856	02742446926
11460813	Suly	Coromoto	Contreras	Fernandez	f	ylus8@yahoo.es	Sin asignar	Sin asignar	\N
11462979	Martha	Ivonne	Triana	Vargas	f	Sin asignar	Sin asignar	04247145086	02742715952
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
13098948	Federico	\N	Del Cura	Delgado	f	federico.delcura@gmail.com	Sin asignar	0416-7759881	\N
13099384	Jose	Melanio	Peña	Sanchez	f	jomepesas@hotmail.com	Sin asignar	0426-7799987	\N
13524820	Lisbeth	Fabiola	Rivas	Vielma	f	fabiolarivas17777@gmail.com	Sin asignar	04167749828	02742214331
13525905	Marielba	\N	Oballos	Benavides	f	oballosm@yahoo.es,oballosm@hotmail.com	Sin asignar	0414-7202547	\N
13649962	Yimi	Leandro	Marquez	\N	f	marquezyimi@hotmail.com	Sin asignar	04265731501	\N
5655983	Blanca	Elena	Alviarez	De Maldonado	f	blancalvi@gmail.com	Sin asignar	04167771000	\N
13803490	Heidy	Dayana	Bitorajes	Diaz	f	abramovic@hotmail.com, abramovic2002@hotmail.es	Sin asignar	0416-2924280	\N
13966605	Nervis	Nakary	Carrillo	Santiago	f	Sin asignar	Sin asignar	Sin asignar	\N
14267842	Ernesto	\N	Vergara	Montoya	f	ernestovergara@hotmail.com	Sin asignar	0416-3793398	\N
14400087	Aleixandre	Dennison	Villarroel	Gomez	f	aldevigo@gmail.com	Sin asignar	0414-1794286	\N
14589222	Yammy	Karelys	Guillen	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14700296	Jenny	Katherinne	Osorio	Albarran	f	kath97355@hotmail.com	Sin asignar	Sin asignar	\N
14268612	Hugo	Jose	Cerrada	Marquez	f	hugocerrada@hotmail.com, hugocerrada@gmail.com	Sin asignar	0414-7459824	0274-2442691
11705856	Carlos	Luis	Sarmiento	Fernandez	f	sarmiento.11@gmail.com	Sin asignar	04165763133	02742213623
14839454	Liliana	Elvira	Urbina	Diaz	f	elvirex@hotmail.com	Sin asignar	0414-5425457	\N
14917365	Johan	Alejandro	Zerpa	Torres	f	jazt23@hotmail.com	Sin asignar	0426-7730348	\N
15175795	Silvia	Josefina	Gonzalez	Fernandez	f	silviaj9730@hotmail.com	Sin asignar	0416-0988076	\N
15223533	Saul	Elias	Guaimara	Rondon	f	saelig@hotmail.com	Sin asignar	04247194467	\N
15381185	Ruth	Melania	Castillo	Omaña	f	ruthmelania82@yahoo.com	Sin asignar	04166469011	\N
15516303	Hebert	Joel	Avendaño	La Cruz	f	Sin asignar	Sin asignar	Sin asignar	\N
15516332	Katherin	Joan	Trejo	Pernia	f	joanktp@yahoo.com	Sin asignar	0414-1792774	\N
15565857	Norkys	Magaly	Bustos	Zambrano	f	norkysbusto@hotmail.com	Sin asignar	0414-0802546	\N
15622903	Leida 	Tamara	Salcedo	Peñaloza	f	leidatsalcedo@gmail.com	Sin asignar	04265712890	02746574546
15754922	Jorge	Luis	Altuve	\N	f	jorgeluisaltuve@yahoo.es	Sin asignar	Sin asignar	\N
15754311	Keibys	Eduardo	Colmenares	\N	f	colmenares.keibys@gmail.com	Sin asignar	04168750063	\N
15756979	Maria	Jose	Salas	Medina	f	Sin asignar	Sin asignar	Sin asignar	\N
12352023	Yenny	Caribay	Araujo	Guillen	f	yennygui@hotmail.com	Sin asignar	04125499348	\N
84570604	Guillermo	\N	Bustos	Prada	f	guillermobustopradam@gmail.com	Sin asignar	04261529464	\N
15920086	Daniel	Ricardo	Salas	Contreras	f	daniels2030@gmail.com	Sin asignar	Sin asignar	\N
15920291	Jorge	Guillermo	Angulo	Salazar	f	ale_alito8_@hotmail.com	Sin asignar	Sin asignar	\N
15921593	Belisario	\N	Toro	\N	f	toro_ai@hotmail.com	Sin asignar	Sin asignar	\N
16020374	Caterling	Vanessa	Melendez	Montoya	f	caterling_m@hotmail.com	Sin asignar	0414-9790618	\N
16285988	Luisana	\N	Fonseca	Cadenas	f	luisanafonseca12@gmail.com	Sin asignar	Sin asignar	\N
16377291	Yosmely	\N	Ramirez	\N	f	yosmely_ramirez@hotmail.com	Sin asignar	0416-4704092	\N
16964770	Sarai	Margarita	Sojo	Portillo	f	sarfer60@hotmail.com	Sin asignar	04147425566	\N
17130729	Onelia	Karina	Fernandez	Sosa	f	onefs@hotmail.com	Sin asignar	Sin asignar	\N
17238348	Carla	Vanessa	Pacheco	Guerrero	f	Sin asignar	Sin asignar	Sin asignar	\N
17456574	Manuel	Alberto	Lujan	Anzola	f	lujanoanzola@yahoo.com	Sin asignar	Sin asignar	\N
13967486	Mervin	Javier	Marquez	Quintero	f	mervin_marquez@yahoo.es	Sin asignar	0424-7372826	02742215202
13966054	Anna	Yusmarie	Dugarte	Sanchez	f	dugartea@gmail.com	Sin asignar	04247026306	\N
10898072	Jesus	Alber	Romero	Cubillos	f	alber_romero@hotmail.com	Sin asignar	Sin asignar	02747893689
11466224	Jimi	Jose	Quintero	Dugarte	f	jjimiq@gmail.com, j_jimiq@gmail.com	Sin asignar	04147555034	02742635434
13723698	Aida	Vidalina	Avila	Zavala	f	aidivi@gmail.com	Sin asignar	04247585074	\N
11303172	Monica	Aurora	Rosciano	Tolosa	f	monicarosciano23@gmail.com	Sin asignar	Sin asignar	\N
11954144	Antonio	Jose	Montilla	Montilla	f	eantoniojosemontilla@gmail.com	Sin asignar	7721070	0424
14401340	Mayra	Irlanda	Peña	Rodriguez	f	maype123@hotmail.com	Sin asignar	04147453968	\N
13524109	Darwin	Javier	Pernia	Rodriguez	f	darwinpernia@gmail.com	Sin asignar	04147175016	\N
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
3966127	Oswaldo	Adelis	Abarca	Montilla	f	Sin asignar	Sin asignar	Sin asignar	\N
6547603	Judith	Tibisay	Colina	Mirena	f	judithc8@hotmail.com	Sin asignar	Sin asignar	\N
7832738	Maria	Asuncion	Socorro	\N	f	mariasove@yahoo.com	Sin asignar	Sin asignar	\N
9475173	Yadira	Yelitza	Marquez	Santiago	f	yayms@hotmail.com	Sin asignar	04140760466	02742660082
9476031	Javier	Antonio	Castillo	Torres	f	jact5455@hotmail.com	Sin asignar	0416-4749446	\N
14916156	Yamile	Mercedes	Alam	Pastor	f	ymap1999@yahoo.com	Sin asignar	04166744520	\N
13477378	Susana	Del Pilar	Briceño	Jaimes	f	susanabj@gmail.com	Sin asignar	04247259745	02747903567
14917178	Johanna	Yecenia	Gomez	Alvarez	f	johannna.ga@gmail.com	Sin asignar	04149565557	\N
7509507	Lorenzo	Antonio	Vasquez	Rojas	f	natabir@gmail.com	Sin asignar	04147041084	027441499797
11960173	Edgar	Alexander	Rosales	Rubio	f	edwsalex@hotmail.com	Sin asignar	04265728277	\N
13648603	Raquel	Ailyn	Zambrano	De Pascarella	f	raquelzambrano@hotmail.com	Sin asignar	04247202152	02742630043
8047120	Diony	Ginette	Alviarez	Paredes	f	gdiony@yahoo.es	Sin asignar	04269770025	\N
12722185	Solange	Aniree	Leal	Leal	f	solangeleal@yahoo.com	Sin asignar	0416-2755134	0274-2623282
8037619	Miriam	Del Carmen	Muñoz	Ramirez	f	licmiriamuno@gmail.com	Sin asignar	04147027698	\N
15142314	Pablo	Martin	Silgueiro	Soto	f	pablosilgueiro@gmail.com	Sin asignar	04267549299	\N
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
10617743	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10687170	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10795287	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12276745	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13126220	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13803898	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
3586551	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5199025	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5753564	Santos	Segundo	Coronel	Romero	m	ssrc513@gmail.com	Sin asignar	04164747101	\N
12457642	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
3062497	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8013671	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8041985	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9081546	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14131053	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
2288079	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
4385037	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
4468978	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5198965	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
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
9390689	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
16716898	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10751767	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13762920	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15693970	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17664344	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
2069838	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
3991395	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5502501	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
6966311	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
7482782	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
7785696	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8033769	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8034298	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9472709	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9602126	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
9874227	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10108462	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10716040	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13499843	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14589482	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15295462	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18308852	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18618150	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18620438	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
20912440	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
84492794	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8049037	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12776115	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15584303	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17662445	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
3908624	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
4589713	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
5201033	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8013569	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8023975	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11959873	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12778312	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15584878	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18310574	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18962414	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
19440209	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
21364550	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
84395445	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
8022340	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10108118	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10896132	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
12777719	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14771192	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
15175341	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
18798060	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
19487152	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
19487788	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13688279	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14917541	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
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
13309223	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
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
13966349	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
14107223	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
10172170	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
11036485	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
13524598	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
17129049	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
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
43	Mádicina
44	Lic. en Enfermería
45	TSU en Radiología
46	Odontología
47	Ing. Agrícola
48	Lic. en Diseño Industrial
49	Lic. en Estadística
50	Lic. en Economía
51	Lic. Filosofía
52	Ing. en Geología
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
4491973	No	0	No	0
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
4484976	Agre	3	TC	0
4488420	Asist	3	TC	0
4489957	Asist	3	EXC	0
5206372	Asoc	3	EXC	0
5355610	Asist	3	TC	0
5447146	Asoc	3	TC	0
5507269	Asoc	3	TC	0
5794416	Asoc	3	TC	0
7648734	Agre	3	EXC	0
7934845	Agre	3	TC	10
8021306	Asist	3	TC	0
8021736	Inst	3	MT	0
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
5239250	Asist	3	TC	0
6953950	Asoc	3	EXC	0
7168412	Asoc	3	TC	0
8002316	Asoc	3	EXC	0
8012641	Asist	3	TC	0
8020758	Inst	3	TC	0
8022671	Asoc	3	TC	0
8026155	Agre	3	EXC	0
8027408	Asist	3	EXC	0
8027793	Asist	3	TC	0
8029075	Asist	3	TC	0
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
9499979	Inst	3	TC	0
10087275	Agre	3	EXC	0
10108950	Agre	3	EXC	0
11956576	Asist	3	TC	0
13014569	Asist	3	TC	0
13098763	Asist	3	EXC	0
3727339	Asoc	3	EXC	0
5466076	Agre	3	EXC	0
5561396	Agre	3	EXC	0
7326064	Asist	3	TC	0
8005159	Asist	3	EXC	0
8039463	Asist	3	TC	0
8046659	Agre	3	TC	0
9478674	Inst	3	TC	0
9501330	Agre	3	TC	0
8045307	Asoc	3	TC	0
10713529	AuxII	3	EXC	0
3692342	Inst	1	TC	0
5021210	Inst	1	TCv	0
9906067	Inst	1	TC	0
10100205	Inst	1	MT	0
8006639	Inst	1	MT	0
8039498	Inst	1	TCv	0
8044768	Inst	1	MT	0
8079222	Inst	1	MT	0
8656400	Inst	1	TC	0
9234597	Inst	1	TC	0
5952723	Inst	1	TC	0
9906615	Inst	1	TCv	0
6940439	Inst	1	TC	0
8028204	Inst	1	TC	0
9201868	Inst	1	MT	0
11957795	Inst	1	TC	0
17027780	Inst	1	MT	0
17663839	Inst	1	MT	0
2149217	Inst	1	TC	0
3791326	Inst	1	TCv	0
8029045	Inst	1	TC	27
8041620	Inst	1	TC	0
9473374	Inst	1	TCv	0
3574698	Inst	1	TC	0
8038611	Inst	1	MT	0
9473567	Inst	1	TC	0
10718091	Inst	1	TCv	0
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
9643447	Inst	1	TC	10
2287821	Agre	3	TC	0
3309773	Asist	3	TCv	0
3939687	Asist	3	TC	0
3966127	Agre	3	EXC	0
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
9475173	Asist	3	TC	0
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
5655983	Asoc	3	EXC	0
5863317	Inst	3	TC	0
7509507	Inst	3	EXC	0
8026122	Asist	3	TC	0
8031064	Inst	3	TC	0
8044725	Inst	3	TC	0
8047120	Asoc	3	EXC	0
8331149	AuxIV	3	EXC	0
9389944	Asoc	3	TC	0
10092487	Asist	3	TC	0
10256095	Asist	3	TC	0
10898072	Asist	3	EXC	0
11303172	Asist	3	TC	0
11467713	Asist	3	TC	0
11960173	Agre	3	EXC	0
12352023	Asist	3	TC	0
12722185	Asist	3	TC	0
12779069	Asist	3	TC	0
13524109	Inst	3	TC	0
13648603	Asist	3	TC	0
13966054	Asoc	3	TC	0
13967486	Aux	3	TC	0
14839454	Asist	3	TC	0
14916156	Asist	3	TC	0
14917178	Inst	3	TC	0
15296169	Inst	3	TC	0
16020374	Asist	3	TC	0
8034300	Asoc	3	EXC	0
13098948	Agre	3	TC	0
13649962	Asist	3	EXC	0
15142314	Inst	3	TC	47
10102108	Inst	3	EXC	0
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
16285988	Inst	1	TC	0
16964770	Inst	1	MT	0
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
11705856	Inst	1	MT	0
8080375	Inst	1	TCv	0
11319364	Inst	1	TCv	0
11460813	Inst	1	TCv	0
11952770	Inst	1	TC	0
12458260	Inst	1	TCv	0
13014707	Inst	1	TC	0
13098188	Inst	1	MT	0
13098422	Inst	1	TCv	0
13477378	Inst	1	TC	0
13524820	Inst	1	TC	0
13803490	Inst	1	TC	0
14400356	Inst	1	TC	0
14401340	Inst	1	TC	0
14589222	Inst	1	TC	0
15622903	Inst	1	TC	0
17456954	Inst	1	TC	0
17664938	Inst	1	TC	0
18796815	Inst	1	TC	0
18796996	Inst	1	TC	0
8019784	Inst	1	MT	0
11466224	Inst	1	TC	0
11954144	Inst	1	TC	0
13723698	Inst	1	TC	0
15756979	Inst	1	TC	0
81423693	Inst	1	TC	0
7824945	Inst	1	TC	0
15516303	Inst	1	TCv	0
84570604	Inst	1	MT	0
11462979	Inst	1	TC	0
14917365	Inst	1	MT	0
15921593	Inst	1	TCv	0
4768948	Inst	1	TC	0
11953052	Inst	1	TC	2
12345678	No	0	No	0
9470586	Asoc	3	EXC	0
10426911	Asist	3	EXC	0
10617743	Agre	3	EXC	0
10687170	Asist	3	TC	0
10795287	Aux	3	TCv	0
12276745	Agre	3	EXC	0
13126220	Aux	3	TC	0
13803898	Agre	3	TC	0
3586551	Agre	3	TC	0
5199025	Asist	3	TC	0
12457642	Inst	3	TC	0
3062497	AuxV	3	EXC	0
8013671	Inst	3	TC	0
8041985	Agre	3	EXC	0
9081546	Asoc	3	EXC	0
14131053	Inst	3	TC	0
2288079	Asist	3	TC	0
4385037	Asist	3	MT	0
4468978	Asist	3	EXC	0
5198965	Agre	3	TC	0
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
10751767	Inst	1	TCv	0
13762920	Inst	1	MT	0
15693970	Inst	1	TCv	0
17664344	Inst	1	TCv	0
2069838	Inst	1	TC	0
3991395	Inst	1	TC	0
5502501	Aux	1	MT	0
6966311	Inst	1	TC	0
7482782	Inst	1	MT	0
7785696	Inst	1	MT	0
8033769	Inst	1	MT	0
8034298	Inst	1	MT	0
9472709	Inst	1	MT	0
9602126	Inst	1	MT	0
9874227	Inst	1	MT	0
10108462	Inst	1	TCv	0
10716040	Inst	1	MT	0
13499843	Aux	1	MT	0
14589482	Inst	1	MT	0
15295462	Aux	1	MT	0
18308852	Inst	1	MT	0
18618150	Aux	1	MT	0
18620438	Aux	1	MT	0
20912440	Aux	1	MT	0
84492794	Inst	1	MT	0
8049037	Inst	1	TC	0
12776115	Inst	1	TC	0
15584303	Inst	1	TCv	0
17662445	Inst	1	TC	0
3908624	Inst	1	MT	0
4589713	Inst	1	TC	0
5201033	Inst	1	TC	0
8013569	Inst	1	TC	0
8023975	Inst	1	MT	0
11959873	Inst	1	TCv	0
12778312	Inst	1	MT	0
15584878	Inst	1	TC	0
18310574	Inst	1	TC	0
18962414	Inst	1	TC	0
19440209	Inst	1	TC	0
21364550	Inst	1	TC	0
84395445	Inst	1	MT	0
8022340	Inst	1	TCv	0
10108118	Inst	1	TC	0
10896132	Inst	1	TC	0
12777719	Inst	1	TC	0
14771192	Inst	1	MT	0
15175341	Inst	1	TC	0
18798060	Inst	1	TC	0
19487152	Inst	1	TC	0
19487788	Inst	1	MT	0
13688279	Inst	1	TCv	0
14917541	Inst	1	TC	0
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
10720364	Agre	3	TC	0
7080727	Agre	3	EXC	0
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
13966349	Inst	1	MT	0
14107223	Inst	1	TCv	0
10172170	Inst	1	TCv	0
11036485	Inst	1	TCv	0
13524598	Inst	1	MT	0
17129049	Inst	1	TCv	0
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
ELECTIVA-222	Electiva II	f	08	2
ESMD15025	Economía, Sustentabilidad y Modelos de Desarrollo	f	04	5
IDIOT2-2167	Idiomas II	f	06	2
NEUROLIN-245	Neurolinguistica	f	08	2
OUPST2-61220	Oper. Unidades Prod. Social y Facilitación de Serv. Turist.	f	06	3
OYS9023	Organización y Sistemas	f	04	2
PATOCOHU-256	Patología de la Comunicación Humana	f	08	2
DSRST3-1445	Des. Sustentable y Sost. de los Recursos y Serv. Tur.	f	06	5
DTCST3-61220	Desarrollo del Turismo Comunitario y Social	f	06	3
ELECTIVA-322	Electiva III	f	08	2
FEVP001	Formulación y Evaluación de Proyectos	f	07	2
GDTUT3-2167	Gestión de Destinos Turísticos	f	06	2
GEC9033	Gerencia de Costos	f	07	2
GEF9033	Gestión Financiera	f	07	2
IDI9033	Idiomas II	f	04	2
IDIOT3-28810	Idiomas III	f	06	2
ING9033	Ingles II	f	04	2
MOTRORAL-334	Motricidad Oral	f	08	2
EDUCAMBI-434	Educación Ambiental	f	08	2
ELECTIVA-422	Electiva IV	f	08	2
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
PG223	Física Aplicada	f	05	2
PRO660422	Desarrollo de Nuevas Tendencias en la Gestión Contable Finan	f	07	3
PROYSOCI-479	Proyecto Sociointegrador IV	f	08	3
SALUOCFO-456	Salud Ocupacional en Fonoaudiología	f	08	2
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
ELECTIVA-122	Electiva I	f	08	2
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
PG234	Minería II	f	05	2
AGTCSI242	Topografía Catastro y Sistemas de Información Geográfica	f	01	2
AGTOG262	Topografía	f	01	2
AVTTT2-1084	Administración de Agencias de Viajes y Transporte Turistico	f	06	2
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
PIMT005	Matematica	f	01	2
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
PIEL2	Electiva II	f	03	2
PIIO3	Investigación de Operaciones	f	03	2
PISO3	Sistemas Operativos	f	03	2
PIFC3	Formación Critica III	f	03	5
PIEL3	Electiva III	f	03	2
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
31501	Planeamiento De Minas	f	43	1
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
91101	Computacion General	f	49	1
91102	Fisica De La Radiologia	f	49	1
91103	Deporte Y Cultura	f	49	1
91104	Radiologia I	f	49	1
91105	Anatomia	f	49	1
91106	Terminologia Medica	f	49	1
91107	Atencion Al Paciente	f	49	1
21305	Dibujo Ii	f	42	1
43302	Admon. De Empresas Turisticas	f	44	1
71415	(electiva) Cont Empresas Agric	f	47	1
91201	Fisiologia	f	49	1
91202	Etica	f	49	1
91203	Psicologia	f	49	1
91204	Matematica	f	49	1
91205	Ingles Instrumental	f	49	1
91206	Radiologia Ii	f	49	1
91207	Redaccion De Informes	f	49	1
91301	Uso Farmacos En La Radiologia	f	49	1
91302	Electiva I	f	49	1
91303	Gerencia Servicio Radiologico	f	49	1
91304	Estadistica Aplicada	f	49	1
91305	Proteccion Radiologica I	f	49	1
91306	Radiologia Iii	f	49	1
91307	Practicas Radiograficas I	f	49	1
91401	Radiologia Legal	f	49	1
91402	Electiva Ii	f	49	1
91403	Metodologia Investigacion I	f	49	1
91404	Epidemiologia	f	49	1
91405	Proteccion Radiologica Ii	f	49	1
91406	Radiologia Iv	f	49	1
91501	Servicio Comunitario	f	49	1
91502	Politicas Publicas	f	49	1
91503	Metodologia Investigacion Ii	f	49	1
91504	Gestion En Salud	f	49	1
91505	Sociologia De La Salud	f	49	1
91506	Radiologia V	f	49	1
91507	Practicas Radiograficas Iii	f	49	1
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
91407	Practicas Radiograficas Ii	f	49	1
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
91601	Trabajo Especial De Grado	f	49	1
91602	Pasantias	f	49	1
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
PIEL1	Electiva I	f	03	2
FEP3031	Formulación Y Evaluación De Proyecto	f	04	2
AF6042	Administración Financiera	f	04	2
CON9023	Contabilidad Ii	f	04	2
ELEC39043	Electiva Iii	f	04	2
PSAPD15035	Participación Social En La Adm, Producción Y Distribucción	f	04	5
PRO700324	Diseño Planificación Desarrollo E Innovación De Sistema Adm	f	04	3
PRO700424	Dirección, Control Y Evaluación De Sistemas Adm	f	04	3
PISC2	Servicio Comunitario	f	03	5
PIEL4	Electiva Iv	f	03	2
PIIS2	Ingenieria Del Software I	f	03	2
AEPS6033	Electiva Iii	f	04	2
MATEti-963	Matematicas	f	06	2
DEINti-301	Desarrollo Integral	f	06	2
IDIOti-602	Idiomas	f	06	2
TECOti-361	Tecnologias De La Comunicacion	f	06	2
PNNCti-963	Proyecto Nacional Y Nueva Ciudadania	f	06	5
IUTSti-482	Intr. A La Univ. Y El Turismo En El Nuevo Modelo Social	f	06	2
30001	Fundamento De Ingenieria Del Software	f	03	2
30002	Matematica Avanzada	f	03	2
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
PIGC3	Acreditable Iii	f	03	1
T1PS79	Proyecto Sociointegrador I	f	06	3
PH0010206	Formacion Sociopolitica I	f	11	5
PH0010803	Actividades Acreditables I	f	11	1
ACRED03	Acreditable Iii	f	02	1
ACRED04	Acreditable Iv	f	02	1
ACRED02	Acreditable Ii	f	03	1
ACR004	Acreditable Iv	f	03	1
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
AGACRED001	Acreditable I	f	01	1
AGACRED004	Acreditable Iv	f	01	1
901110	Homo Ludens (deporte Y Recreación I)	f	09	2
AGACRED003	Acreditable Iii	f	01	1
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
\.


--
-- Name: carga_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('carga_id_seq', 217, true);


--
-- Name: carreraSede_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"carreraSede_id_seq"', 11, true);


--
-- Data for Name: classroom_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY classroom_type (id, name) FROM stdin;
1	Aula
2	Laboratorio
3	Hospital
\.


--
-- Name: classroom_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('classroom_type_id_seq', 3, true);


--
-- Data for Name: classrooms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY classrooms (id, name, building, classroom_type) FROM stdin;
1	1	2	1
2	2	2	1
3	3	2	1
\.


--
-- Name: classrooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('classrooms_id_seq', 3, true);


--
-- Name: condicion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('condicion_id_seq', 4, true);


--
-- Data for Name: coordinates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY coordinates (id, rows, columns) FROM stdin;
\.


--
-- Name: coordinates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('coordinates_id_seq', 1, false);


--
-- Name: eje_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('eje_id_seq', 5, true);


--
-- Name: estructuraCS_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"estructuraCS_id_seq"', 7, true);


--
-- Name: estructura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('estructura_id_seq', 3, true);


--
-- Data for Name: historial; Type: TABLE DATA; Schema: public; Owner: -
--

COPY historial (id, usuario, descripcion, sql) FROM stdin;
\.


--
-- Name: mallaECS_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"mallaECS_id_seq"', 8, true);


--
-- Name: periodo_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"periodo_ID_seq"', 10, true);


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
3	5239250
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
\.


--
-- Name: profesion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('profesion_id_seq', 52, true);


--
-- Data for Name: schedule; Type: TABLE DATA; Schema: public; Owner: -
--

COPY schedule (id, status, classrooms, rows, columns) FROM stdin;
1	1	1	1	1
2	2	1	1	2
3	3	1	1	3
4	4	1	1	4
5	5	1	1	5
6	6	1	1	6
7	7	1	1	7
8	8	1	2	1
9	9	1	2	2
10	10	1	2	3
11	11	1	2	4
12	12	1	2	5
13	13	1	2	6
14	14	1	2	7
15	15	1	3	1
16	16	1	3	2
17	17	1	3	3
18	18	1	3	4
19	19	1	3	5
20	20	1	3	6
21	21	1	3	7
22	22	1	4	1
23	23	1	4	2
24	24	1	4	3
25	25	1	4	4
26	26	1	4	5
27	27	1	4	6
28	28	1	4	7
29	29	1	5	1
30	30	1	5	2
31	31	1	5	3
32	32	1	5	4
33	33	1	5	5
34	34	1	5	6
35	35	1	5	7
36	36	1	6	1
37	37	1	6	2
38	38	1	6	3
39	39	1	6	4
40	40	1	6	5
41	41	1	6	6
42	42	1	6	7
43	43	1	7	1
44	44	1	7	2
45	45	1	7	3
46	46	1	7	4
47	47	1	7	5
48	48	1	7	6
49	49	1	7	7
50	50	1	8	1
51	51	1	8	2
52	52	1	8	3
53	53	1	8	4
54	54	1	8	5
55	55	1	8	6
56	56	1	8	7
57	57	1	9	1
58	58	1	9	2
59	59	1	9	3
60	60	1	9	4
61	61	1	9	5
62	62	1	9	6
63	63	1	9	7
64	64	1	10	1
65	65	1	10	2
66	66	1	10	3
67	67	1	10	4
68	68	1	10	5
69	69	1	10	6
70	70	1	10	7
71	71	1	11	1
72	72	1	11	2
73	73	1	11	3
74	74	1	11	4
75	75	1	11	5
76	76	1	11	6
77	77	1	11	7
78	78	1	12	1
79	79	1	12	2
80	80	1	12	3
81	81	1	12	4
82	82	1	12	5
83	83	1	12	6
84	84	1	12	7
85	85	1	13	1
86	86	1	13	2
87	87	1	13	3
88	88	1	13	4
89	89	1	13	5
90	90	1	13	6
91	91	1	13	7
92	92	1	14	1
93	93	1	14	2
94	94	1	14	3
95	95	1	14	4
96	96	1	14	5
97	97	1	14	6
98	98	1	14	7
99	99	1	15	1
100	100	1	15	2
101	101	1	15	3
102	102	1	15	4
103	103	1	15	5
104	104	1	15	6
105	105	1	15	7
106	106	1	16	1
107	107	1	16	2
108	108	1	16	3
109	109	1	16	4
110	110	1	16	5
111	111	1	16	6
112	112	1	16	7
113	113	1	17	1
114	114	1	17	2
115	115	1	17	3
116	116	1	17	4
117	117	1	17	5
118	118	1	17	6
119	119	1	17	7
120	120	1	18	1
121	121	1	18	2
122	122	1	18	3
123	123	1	18	4
124	124	1	18	5
125	125	1	18	6
126	126	1	18	7
127	127	1	19	1
128	128	1	19	2
129	129	1	19	3
130	130	1	19	4
131	131	1	19	5
132	132	1	19	6
133	133	1	19	7
134	134	2	1	1
135	135	2	1	2
136	136	2	1	3
137	137	2	1	4
138	138	2	1	5
139	139	2	1	6
140	140	2	1	7
141	141	2	2	1
142	142	2	2	2
143	143	2	2	3
144	144	2	2	4
145	145	2	2	5
146	146	2	2	6
147	147	2	2	7
148	148	2	3	1
149	149	2	3	2
150	150	2	3	3
151	151	2	3	4
152	152	2	3	5
153	153	2	3	6
154	154	2	3	7
155	155	2	4	1
156	156	2	4	2
157	157	2	4	3
158	158	2	4	4
159	159	2	4	5
160	160	2	4	6
161	161	2	4	7
162	162	2	5	1
163	163	2	5	2
164	164	2	5	3
165	165	2	5	4
166	166	2	5	5
167	167	2	5	6
168	168	2	5	7
169	169	2	6	1
170	170	2	6	2
171	171	2	6	3
172	172	2	6	4
173	173	2	6	5
174	174	2	6	6
175	175	2	6	7
176	176	2	7	1
177	177	2	7	2
178	178	2	7	3
179	179	2	7	4
180	180	2	7	5
181	181	2	7	6
182	182	2	7	7
183	183	2	8	1
184	184	2	8	2
185	185	2	8	3
186	186	2	8	4
187	187	2	8	5
188	188	2	8	6
189	189	2	8	7
190	190	2	9	1
191	191	2	9	2
192	192	2	9	3
193	193	2	9	4
194	194	2	9	5
195	195	2	9	6
196	196	2	9	7
197	197	2	10	1
198	198	2	10	2
199	199	2	10	3
200	200	2	10	4
201	201	2	10	5
202	202	2	10	6
203	203	2	10	7
204	204	2	11	1
205	205	2	11	2
206	206	2	11	3
207	207	2	11	4
208	208	2	11	5
209	209	2	11	6
210	210	2	11	7
211	211	2	12	1
212	212	2	12	2
213	213	2	12	3
214	214	2	12	4
215	215	2	12	5
216	216	2	12	6
217	217	2	12	7
218	218	2	13	1
219	219	2	13	2
220	220	2	13	3
221	221	2	13	4
222	222	2	13	5
223	223	2	13	6
224	224	2	13	7
225	225	2	14	1
226	226	2	14	2
227	227	2	14	3
228	228	2	14	4
229	229	2	14	5
230	230	2	14	6
231	231	2	14	7
232	232	2	15	1
233	233	2	15	2
234	234	2	15	3
235	235	2	15	4
236	236	2	15	5
237	237	2	15	6
238	238	2	15	7
239	239	2	16	1
240	240	2	16	2
241	241	2	16	3
242	242	2	16	4
243	243	2	16	5
244	244	2	16	6
245	245	2	16	7
246	246	2	17	1
247	247	2	17	2
248	248	2	17	3
249	249	2	17	4
250	250	2	17	5
251	251	2	17	6
252	252	2	17	7
253	253	2	18	1
254	254	2	18	2
255	255	2	18	3
256	256	2	18	4
257	257	2	18	5
258	258	2	18	6
259	259	2	18	7
260	260	2	19	1
261	261	2	19	2
262	262	2	19	3
263	263	2	19	4
264	264	2	19	5
265	265	2	19	6
266	266	2	19	7
\.


--
-- Name: schedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('schedule_id_seq', 266, true);


--
-- Name: seccion_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"seccion_ID_seq"', 32, true);


--
-- Name: sede_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('sede_id_seq', 7, true);


--
-- Data for Name: ucMalla; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "ucMalla" (id, "horasTeoricas", "horasPracticas", tipo, periodo, "idUC", "idMalla") FROM stdin;
34	2	3	t	T2-t1	PIRC2	PNFI-2012
4	2	3	t	T2-t2	PIBD2	PNFI-2012
37	2	0	f	T2-t2	PIFC2	PNFI-2012
33	5	0	f	T2-t2	PIMT2	PNFI-2012
40	2	4	t	T2-t2	PIPP2	PNFI-2012
290	4	0	f	T4-t1	PRO2749	PNFA-2014-PRO
283	3	0	f	T4-t2	FSC1244	PNFA-2014-PRO
216	4	0	f	T3-t2	PRE9033	PNFA-2010-2
43	6	0	f	T2-t2	PIPT2	PNFI-2012
35	2	3	t	T2-t2	PIRC2	PNFI-2012
38	2	0	f	T2-t3	PIFC2	PNFI-2012
41	2	4	t	T2-t3	PIPP2	PNFI-2012
44	6	0	f	T2-t3	PIPT2	PNFI-2012
51	2	0	f	T3-t1	PIFC3	PNFI-2012
57	5	0	f	T3-t1	PIIS3	PNFI-2012
5	5	0	f	T3-t1	PIMA3	PNFI-2012
54	6	0	f	T3-t1	PIPT3	PNFI-2012
50	5	0	f	T3-t1	PISO3	PNFI-2012
52	2	0	f	T3-t2	PIFC3	PNFI-2012
232	4	0	f	T3-t3	ADM6032	PNFA-2010-2
235	2	0	f	T3-t3	DAR9033	PNFA-2010-2
285	3	0	f	T4-t2	FEP9043	PNFA-2014-PRO
58	5	0	f	T3-t2	PIIS3	PNFI-2012
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
14	5	0	f	T1-t3	PIMT1	PNFI-2012
26	6	0	f	T1-t3	PIPT1	PNFI-2012
36	2	0	f	T2-t1	PIFC2	PNFI-2012
45	5	0	f	T2-t1	PIS03	PNFI-2012
3	5	0	f	T2-t1	PIMT2	PNFI-2012
39	2	4	t	T2-t1	PIPP2	PNFI-2012
99	4	0	f	T1-t2	CON15015	PNFA-2014
79	4	0	f	T1-t2	EST6012	PNFA-2014
105	3	0	f	T1-t2	FSC12014	PNFA-2014
42	6	0	f	T2-t1	PIPT2	PNFI-2012
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
49	5	0	f	T3-t2	PIMA3	PNFI-2012
6	5	0	t	T3-t2	PIMB3	PNFI-2012
55	6	0	f	T3-t2	PIPT3	PNFI-2012
53	2	0	f	T3-t3	PIFC3	PNFI-2012
59	5	0	f	T3-t3	PIIS3	PNFI-2012
7	2	3	f	T3-t3	PIIO3	PNFI-2012
56	6	0	f	T3-t3	PIPT3	PNFI-2012
69	2	3	t	T4-t1	PIAB4	PNFI-2012
20	2	0	f	T1-t3	PIFC1	PNFI-2012
29	2	0	f	T1-t3	PIID1	PNFI-2012
12	5	0	f	T0	PITIP02	PNFI-2012
1	5	0	f	T0	PIMT004	PNFI-2012
11	5	0	f	T0	PIPNP03	PNFI-2012
21	2	4	t	T1-t1	PIAP1	PNFI-2012
15	2	3	t	T1-t1	PIAC1	PNFI-2012
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
18	2	0	f	T1-t1	PIFC1	PNFI-2012
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
27	2	0	f	T1-t1	PIID1	PNFI-2012
2	5	0	f	T1-t1	PIMT1	PNFI-2012
24	6	0	f	T1-t1	PIPT1	PNFI-2012
22	2	4	t	T1-t2	PIAP1	PNFI-2012
16	2	3	t	T1-t2	PIAC1	PNFI-2012
19	2	0	f	T1-t2	PIFC1	PNFI-2012
28	2	0	f	T1-t2	PIID1	PNFI-2012
13	5	0	f	T1-t2	PIMT1	PNFI-2012
25	6	0	f	T1-t2	PIPT1	PNFI-2012
23	2	4	t	T1-t3	PIAP1	PNFI-2012
17	2	3	t	T1-t3	PIAC1	PNFI-2012
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
297	5	0	f	T2-t3	PIEL2	PNFI-2012
8	2	0	f	T4-t1	PIFC4	PNFI-2012
68	5	0	f	T4-t1	PIGP4	PNFI-2012
70	2	0	f	T4-t1	PIID4	PNFI-2012
65	6	0	f	T4-t1	PIPT4	PNFI-2012
63	2	0	f	T4-t2	PIFC4	PNFI-2012
71	2	0	f	T4-t2	PIID4	PNFI-2012
66	6	0	f	T4-t2	PIPT4	PNFI-2012
9	2	3	t	T4-t2	PIRA4	PNFI-2012
76	2	3	t	T4-t2	PISI4	PNFI-2012
10	2	3	t	T4-t3	PIAI4	PNFI-2012
64	2	0	f	T4-t3	PIFC4	PNFI-2012
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
72	2	0	f	T4-t3	PIID4	PNFI-2012
67	6	0	f	T4-t3	PIPT4	PNFI-2012
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
\.


--
-- Name: ucMalla_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"ucMalla_id_seq"', 480, true);


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: -
--

COPY usuario (cedula, contrasena, frase, ingreso, nivel) FROM stdin;
12345678	81dc9bdb52d04dc20036dbd8313ed055	81dc9bdb52d04dc20036dbd8313ed055	2016-01-27	1
\.


--
-- PostgreSQL database dump complete
--

