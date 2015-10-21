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
\.


--
-- Name: area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('area_id_seq', 3, true);


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
1	01	3048184	3
2	02	3767311	3
5	05	2149217	3
6	06	3910823	3
7	07	3939687	3
8	08	3661985	3
4	04	8037619	3
10	03	2288079	1
3	03	10256095	3
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
\.


--
-- Data for Name: malla; Type: TABLE DATA; Schema: public; Owner: -
--

COPY malla (id, fecha) FROM stdin;
PNFA-2014	2015-10-12
PNFA-2014-PRO	2015-10-19
PNFI-2012	2011-04-27
PNFA-2010-2	2015-10-01
\.


--
-- Data for Name: mallaECS; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "mallaECS" (id, estado, "idECS", "idMalla") FROM stdin;
1	t	1	PNFI-2012
2	t	2	PNFA-2014
5	t	4	PNFA-2014-PRO
4	t	2	PNFA-2010-2
\.


--
-- Data for Name: periodo; Type: TABLE DATA; Schema: public; Owner: -
--

COPY periodo ("ID", id, "fechaInicio", "fechaFin", tipo, "idECS") FROM stdin;
\.


--
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: -
--

COPY persona (cedula, nombre, "segundoNombre", apellido, "segundoApellido", sexo, correo, direccion, telefono, "telefonoFijo") FROM stdin;
12345678	Nombre	\N	Apellido	\N	m	correo@servidor.com	Calle #123, Ciudad edo. Estado	04XX-1234567	02XX-1234567
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
5655983	Blanca	Elena	Alviarez	De Maldonado	f	blancalvi@gmail.com	Sin asignar	04167771000	\N
12722185	Solange	Aniree	Leal	Leal	f	solangeleal@yahoo.com	Sin asignar	0416-2755134	0274-2623282
8037619	Miriam	Del Carmen	Muñoz	Ramirez	f	licmiriamuno@gmail.com	Sin asignar	04147027698	\N
15142314	Pablo	Martin	Silgueiro	Soto	f	pablosilgueiro@gmail.com	Sin asignar	04267549299	\N
4319574	Iraide	Celina	Zerpa	\N	f	iraidezerpa@gmail.com	Sin asignar	04265744008	\N
5753564	Santo	Segundo	Coronel	Romero	m	ssrc513@gmail.com	Sin asignar	04164747101	\N
11955850	Carlos	\N	Hernandez	\N	m	carloshla2007@gmail.com	Asd	04263281790	\N
7934845	Maria	Carolina	Marquez	Uzcategui	f	mcarolinamar@hotmail.com	Sin asignar	04247708690	\N
1010633	Lenix	\N	Omana	\N	f	lenix@ula.ve	Asd	04147485841	\N
14281324	Jesus	\N	Casique	\N	m	casiquemorenojesus@gmail.com	Asd	04247127978	\N
11953052	Gioconda	Marlin	Saez	Torres	f	giocopaul@gmail.com	Asdasd	0416-5222543	\N
8223161	Vianney	\N	Canache	\N	m	fitosiciliano@hotmail.com	Asd	0424-7686768	\N
9643447	Yasmin	\N	Carmona	\N	f	yasmincarmina310@gmail.com	Asd	0416-3700829	\N
5871766	Doris	\N	Villalba	\N	f	dvilla44@gmail.com	Asd	0416-6700862	\N
12722753	Emilia	\N	Graterol	\N	f	emiliagraterol@yahoo.com	Asd	0424-7139955	\N
6729553	Maria	Gloria	Parra	\N	f	mariagloria.parrar@gmail.com	Asd	0416-8743486	\N
8039160	Alejandro	\N	Rojas	\N	m	alejandrorojas23@yahoo.com	Asd	0426-7625391	\N
16317126	Maria	\N	Carrero	\N	f	marca1911@yahoo.es	Av. qwe	04247625391	\N
3309773	Nombre	\N	Apellido	\N	f	Sin asignar	Sin asignar	Sin asignar	\N
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
1010633	Inst	1	TC	10
14281324	Inst	1	MT	50
16317126	Inst	1	TC	2
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
5753564	Tit	3	EXC	49
8034300	Asoc	3	EXC	0
13098948	Agre	3	TC	0
13649962	Asist	3	EXC	0
15142314	Inst	3	TC	47
10102108	Inst	3	EXC	0
14268612	Asist	3	TC	0
5871766	Inst	1	MT	50
6729553	Inst	1	MT	50
8223161	Inst	1	MT	10
9643447	Inst	1	MT	10
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
PGT16	Acreditable I	f	05	1
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
PGT36	Acreditable II	f	05	1
PGT37	Proyecto III	f	05	3
PRO6604223	Electiva III	f	07	2
70002	Seminario Niif Para Pymes	f	07	2
AGFIAIP	Física Aplicada	f	01	2
70013	Electiva II	f	07	2
ACACT2	Actividades Acreditables II	f	06	1
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
ACACT3	Actividades Acreditables III	f	06	1
ADP9033	Administración de la Producción	f	04	2
AGAGR342	Agroestadística	f	01	2
AGAMI001	Metodología de la Investigación	f	01	1
AGEPS342	Economía Política y Social I	f	01	5
AGMEI362	Manejo Ecológico de Insectos y Enfermedades	f	01	5
ACACT4	Actividades Acreditables IV	f	06	1
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
ACACT1	Actividades Acreditables I	f	06	1
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
PIACT1	Actividad Acreditable I	t	03	1
PIACT2	Actividad Acreditable II	t	03	1
PIACT3	Actividad Acreditable III	t	03	1
PIACT4	Actividad Acreditable IV	t	03	1
PIPP2	Programación II	f	03	2
ADAW	Electiva Desarrollo de Aplicaciones en la Web	f	03	2
PIPT1	Proyecto Sociotecnológico I	f	03	3
PIAP1	Algorítmica y Programación  I	f	03	2
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
EOE6012	Expresión Oral y Escrita	f	04	2
TIC6012	TICs	f	04	2
MAJ6012	Marco Jurídico I	f	04	2
PRYII27029	Proyecto II	f	04	3
CON150152	Contabilidad II	f	04	2
FDE9023	Fundamentos de Economía	f	04	2
MAJ6022	Marco Jurídico II	f	04	2
GEA6022	Gestión Ecológica Ambiental	f	04	4
GTH9023	Gestión de Talento Humano	f	04	2
PAACT1	Actividad Acreditable I	t	04	1
PAACT2	Actividad Acreditable II	t	04	1
PAACT3	Actividad Acreditable III	t	04	1
PAACT4	Actividad Acreditable IV	t	04	1
EEP60T2	Ética en el Ejercicio Profesional	f	04	5
GEA60T2	Gestión Ecológica y Ambiental	f	04	4
PNC60T2	Proyecto Nacional y Nueva Ciudadanía Transición	f	04	5
SEM160T2	Área Contable	f	04	2
SEM260T2	Desarrollo Social Comunitario	f	04	5
PRO2739	Proyecto III	f	04	3
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
PP13041	Paquetes Informáticos Aplicados a la Administración	f	04	2
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
PDF3012	Deberes Formales del Contribuyente	f	04	2
TPM6012	Teoría y Práctica del Mercadeo	f	04	2
SHA9023	Seminario Habilidades Directivas I	f	04	2
CGA9023	Electiva I	t	04	1
FSC18026	Formación Socio Crítica II	f	04	5
ELEC29023	Electiva II	t	04	1
SHDD9043	Seminario Habilidades Directivas II	f	04	2
\.


--
-- Data for Name: carga; Type: TABLE DATA; Schema: public; Owner: -
--

COPY carga (id, "dividirHT", "nuevoNombre", "idProfesor", "idSeccion", "idSuplente", "idUC") FROM stdin;
\.


--
-- Name: carga_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('carga_id_seq', 98, true);


--
-- Name: carreraSede_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"carreraSede_id_seq"', 10, true);


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

SELECT pg_catalog.setval('"estructuraCS_id_seq"', 6, true);


--
-- Name: estructura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('estructura_id_seq', 3, true);


--
-- Data for Name: historial; Type: TABLE DATA; Schema: public; Owner: -
--

COPY historial (id, usuario, descripcion, sql) FROM stdin;
1444440963	Nombre Apellido (12345678)	Se agregó la estructura <strong>Semetral</strong>	insert into estructura values(default, &#039;Semetral&#039;, &#039;\n\t\t{\n\t\t\t&quot;periodos&quot; : [\n\t\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre I&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;S1&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;,\n\t\t\t\t\t&quot;subperiodos&quot; : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre II&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;S2&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;,\n\t\t\t\t\t&quot;subperiodos&quot; : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre III&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;S3&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;,\n\t\t\t\t\t&quot;subperiodos&quot; : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre IV&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;S4&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;,\n\t\t\t\t\t&quot;subperiodos&quot; : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre V&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;S5&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;,\n\t\t\t\t\t&quot;subperiodos&quot; : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre VI&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;S6&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;,\n\t\t\t\t\t&quot;subperiodos&quot; : false\n\t\t\t\n\t\t\t\t}\n\t\t\t]\n\t\t}\n\t&#039;)
1444664391	Nombre Apellido (12345678)	Se modificó la estructura <strong>Semetral</strong>	update estructura set nombre=&#039;Semestral&#039;, estructura=&#039;\n\t\t{\n\t\t\t&quot;periodos&quot; : [\n\t\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre I&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;S1&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;,\n\t\t\t\t\t&quot;subperiodos&quot; : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre II&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;S2&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;,\n\t\t\t\t\t&quot;subperiodos&quot; : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre III&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;S3&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;,\n\t\t\t\t\t&quot;subperiodos&quot; : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre IV&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;S4&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;,\n\t\t\t\t\t&quot;subperiodos&quot; : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre V&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;S5&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;,\n\t\t\t\t\t&quot;subperiodos&quot; : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Semestre VI&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;S6&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : &quot;6&quot;,\n\t\t\t\t\t&quot;subperiodos&quot; : false\n\t\t\t\n\t\t\t\t}\n\t\t\t]\n\t\t}\n\t&#039; where nombre=&#039;Semetral&#039;
1444664610	Nombre Apellido (12345678)	Se modificó al profesor <strong>Miriam Muñoz (8037619)</strong>	update persona set cedula=&#039;8037619&#039;, nombre=&#039;Miriam&#039;, &quot;segundoNombre&quot;=&#039;Del Carmen&#039;, apellido=&#039;Muñoz&#039;, &quot;segundoApellido&quot;=&#039;Ramirez&#039;, sexo=&#039;f&#039;, correo=&#039;licmiriamuno@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04147027698&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8037619&#039;\n\nupdate profesor set cedula=&#039;8037619&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;10&#039; where cedula=&#039;8037619&#039;
1444664650	Nombre Apellido (12345678)	Se modificó la carrera <strong>PNF Administración</strong>	update carrera set id=&#039;04&#039;, nombre=&#039;PNF Administración&#039;, &quot;idArea&quot;=&#039;2&#039; where id=&#039;04&#039;
1444664942	Nombre Apellido (12345678)	Se modificó al profesor <strong>Pablo Silgueiro (15142314)</strong>	update persona set cedula=&#039;15142314&#039;, nombre=&#039;Pablo&#039;, &quot;segundoNombre&quot;=&#039;Martin&#039;, apellido=&#039;Silgueiro&#039;, &quot;segundoApellido&quot;=&#039;Soto&#039;, sexo=&#039;f&#039;, correo=&#039;pablosilgueiro@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04267549299&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;15142314&#039;\n\nupdate profesor set cedula=&#039;15142314&#039;, categoria=&#039;Inst&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;47&#039; where cedula=&#039;15142314&#039;
1444665021	Nombre Apellido (12345678)	Se modificó al profesor <strong>Iraide Zerpa (4319574)</strong>	update persona set cedula=&#039;4319574&#039;, nombre=&#039;Iraide&#039;, &quot;segundoNombre&quot;=&#039;Celina&#039;, apellido=&#039;Zerpa&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;iraidezerpa@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04265744008&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;4319574&#039;\n\nupdate profesor set cedula=&#039;4319574&#039;, categoria=&#039;Asist&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;27&#039; where cedula=&#039;4319574&#039;
1444665104	Nombre Apellido (12345678)	Se modificó al profesor <strong>Amneris Guerrero (8029045)</strong>	update persona set cedula=&#039;8029045&#039;, nombre=&#039;Amneris&#039;, &quot;segundoNombre&quot;=&#039;Teotiste&#039;, apellido=&#039;Guerrero&#039;, &quot;segundoApellido&quot;=&#039;Molina&#039;, sexo=&#039;f&#039;, correo=&#039;guerrero.amneris28@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;0426-5725885&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;8029045&#039;\n\nupdate profesor set cedula=&#039;8029045&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;27&#039; where cedula=&#039;8029045&#039;
1444665879	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Matematica</strong>	update &quot;unidadCurricular&quot; set id=&#039;MAD9013&#039;, nombre=&#039;Matemática&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;MA6002&#039;
1444665914	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Proyecto Nacional y Nueva Ciudadania</strong>	update &quot;unidadCurricular&quot; set id=&#039;PNNC6002&#039;, nombre=&#039;Proyecto Nacional y Nueva Ciudadanía&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;5&#039; where id=&#039;PNNC9003&#039;
1444665949	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Desarrollo Integral</strong>	update &quot;unidadCurricular&quot; set id=&#039;DI6001&#039;, nombre=&#039;Desarrollo Integral&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;DIE6002&#039;
1444666005	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Gestión de Riesgos y Protección Civil</strong>	update &quot;unidadCurricular&quot; set id=&#039;GRPC6002&#039;, nombre=&#039;Gestión de Riesgos y Protección Civil&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;GRPC3001&#039;
1444666048	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>La Administración en el Nuevo Modelo Social</strong>	update &quot;unidadCurricular&quot; set id=&#039;AMS6002&#039;, nombre=&#039;Administración en el Nuevo Modelo Social&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;PRO6002&#039;
1444666168	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Proyecto</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PRO27019&#039;, &#039;Proyecto&#039;, false, &#039;04&#039;, &#039;3&#039;)
1444666439	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Fundamentos de la Administración</strong>	update &quot;unidadCurricular&quot; set id=&#039;FAD15015&#039;, nombre=&#039;Fundamentos de la Administración&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;FA12014&#039;
1444666480	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Contabilidad I</strong>	update &quot;unidadCurricular&quot; set id=&#039;CON15015&#039;, nombre=&#039;Contabilidad I&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;CON12014&#039;
1444666535	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Formación Socio Crítica I</strong>	insert into &quot;unidadCurricular&quot; values(&#039;FSC12014&#039;, &#039;Formación Socio Crítica I&#039;, false, &#039;04&#039;, &#039;5&#039;)
1444666575	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Tecnicas de Expresión Oral y Escrita</strong>	update &quot;unidadCurricular&quot; set id=&#039;EOE6012&#039;, nombre=&#039;Expresión Oral y Escrita&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;PTE3011&#039;
1444666829	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>TICs</strong>	insert into &quot;unidadCurricular&quot; values(&#039;TIC6012&#039;, &#039;TICs&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444666910	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva I</strong>	update &quot;unidadCurricular&quot; set id=&#039;ELC6012&#039;, nombre=&#039;Electiva I&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;ELEC19023&#039;
1444666995	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Estadística</strong>	update &quot;unidadCurricular&quot; set id=&#039;EST6012&#039;, nombre=&#039;Estadística&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;ES3011&#039;
1444668122	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Marco Jurídico I</strong>	insert into &quot;unidadCurricular&quot; values(&#039;MAJ6012&#039;, &#039;Marco Jurídico I&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444668386	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Operaciones Financieras</strong>	update &quot;unidadCurricular&quot; set id=&#039;OFI9013&#039;, nombre=&#039;Operaciones Financieras&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;OF6012&#039;
1444668484	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Teoría y Práctica del Mercadeo</strong>	update &quot;unidadCurricular&quot; set id=&#039;TPM9013&#039;, nombre=&#039;Teoría y Práctica del Mercadeo&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;TPM6012&#039;
1444669022	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Deberes Formales del Contribuyente retenciones</strong>	update &quot;unidadCurricular&quot; set id=&#039;DFC9013&#039;, nombre=&#039;Deberes Formales del Contribuyente&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;DFC6012&#039;
1444669085	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Proyecto II</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PRYII27029&#039;, &#039;Proyecto II&#039;, false, &#039;04&#039;, &#039;3&#039;)
1444669389	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Contabilidad II</strong>	update &quot;unidadCurricular&quot; set id=&#039;CON150152&#039;, nombre=&#039;Contabilidad II&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;CON9023&#039;
1444669481	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Formación Socio Critica II</strong>	update &quot;unidadCurricular&quot; set id=&#039;FSC12024&#039;, nombre=&#039;Formación Socio Crítica II&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;5&#039; where id=&#039;FSC18026&#039;
1444669608	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Fundamentos de Economía</strong>	insert into &quot;unidadCurricular&quot; values(&#039;FDE9023&#039;, &#039;Fundamentos de Economía&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444669668	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Marco Jurídico II</strong>	insert into &quot;unidadCurricular&quot; values(&#039;MAJ6022&#039;, &#039;Marco Jurídico II&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444669773	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Gestión Ecológica Ambiental</strong>	insert into &quot;unidadCurricular&quot; values(&#039;GEA6022&#039;, &#039;Gestión Ecológica Ambiental&#039;, false, &#039;04&#039;, &#039;4&#039;)
1444669839	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Gestión de Talento Humano</strong>	insert into &quot;unidadCurricular&quot; values(&#039;GTH9023&#039;, &#039;Gestión de Talento Humano&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444669876	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Presupuesto Público y Privado</strong>	update &quot;unidadCurricular&quot; set id=&#039;PPP9033&#039;, nombre=&#039;Presupuesto Público y Privado&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;PRE9033&#039;
1444669920	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Deberes Formales del Contribuyente</strong>	update &quot;unidadCurricular&quot; set id=&#039;DFC9023&#039;, nombre=&#039;Deberes Formales del Contribuyente&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;DFC9013&#039;
1444669971	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Seminario Habilidades Directivas I</strong>	update &quot;unidadCurricular&quot; set id=&#039;HDI9023&#039;, nombre=&#039;Habilidades Directivas I&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;SHA9023&#039;
1444670020	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Administración de Costos</strong>	update &quot;unidadCurricular&quot; set id=&#039;ADC9023&#039;, nombre=&#039;Administración de Costos&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;ADC6022&#039;
1444670050	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva II</strong>	update &quot;unidadCurricular&quot; set id=&#039;ELC6002&#039;, nombre=&#039;Electiva II&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;ELEC29023&#039;
1444672023	Nombre Apellido (12345678)	Se eliminó <strong>AEPS6033</strong>	delete from &quot;unidadCurricular&quot; where &quot;id&quot;=&#039;AEPS6033&#039;
1444670176	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva I</strong>	update &quot;unidadCurricular&quot; set id=&#039;ELC6012&#039;, nombre=&#039;Electiva I&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;ELC6012&#039;
1444670194	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva II</strong>	update &quot;unidadCurricular&quot; set id=&#039;ELC6002&#039;, nombre=&#039;Electiva II&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;ELC6002&#039;
1444670324	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Actividad Acreditable</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PAACT1&#039;, &#039;Actividad Acreditable&#039;, true, &#039;04&#039;, &#039;1&#039;)
1444670351	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Actividad Acreditable</strong>	update &quot;unidadCurricular&quot; set id=&#039;PAACT1&#039;, nombre=&#039;Actividad Acreditable I&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;PAACT1&#039;
1444670380	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Actividad Acreditable II</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PAACT2&#039;, &#039;Actividad Acreditable II&#039;, true, &#039;04&#039;, &#039;1&#039;)
1444670444	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Actividad Acreditable III</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PAACT3&#039;, &#039;Actividad Acreditable III&#039;, true, &#039;04&#039;, &#039;1&#039;)
1444670465	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Actividad Acreditable IV</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PAACT4&#039;, &#039;Actividad Acreditable IV&#039;, true, &#039;04&#039;, &#039;1&#039;)
1444670920	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Ética en el Ejercicio Profesional</strong>	insert into &quot;unidadCurricular&quot; values(&#039;EEP60T2&#039;, &#039;Ética en el Ejercicio Profesional&#039;, false, &#039;04&#039;, &#039;5&#039;)
1444670982	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Administración en el Nuevo Modelo Social</strong>	update &quot;unidadCurricular&quot; set id=&#039;ANM60T2&#039;, nombre=&#039;Administración en el Nuevo Modelo Social&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;AMS6002&#039;
1444671114	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Gestión Ecológica y Ambiental</strong>	insert into &quot;unidadCurricular&quot; values(&#039;GEA60T2&#039;, &#039;Gestión Ecológica y Ambiental&#039;, false, &#039;04&#039;, &#039;4&#039;)
1444671187	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Proyecto Nacional y Nueva Ciudadanía Transición</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PNC60T2&#039;, &#039;Proyecto Nacional y Nueva Ciudadanía Transición&#039;, false, &#039;04&#039;, &#039;5&#039;)
1444671243	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Área Contable</strong>	insert into &quot;unidadCurricular&quot; values(&#039;SEM160T2&#039;, &#039;Área Contable&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444671285	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Desarrollo Social Comunitario</strong>	insert into &quot;unidadCurricular&quot; values(&#039;SEM260T2&#039;, &#039;Desarrollo Social Comunitario&#039;, false, &#039;04&#039;, &#039;5&#039;)
1444671309	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Proyecto III</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PRO2739&#039;, &#039;Proyecto III&#039;, false, &#039;04&#039;, &#039;3&#039;)
1444671350	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Formación Socio Critica III</strong>	update &quot;unidadCurricular&quot; set id=&#039;FSC12034&#039;, nombre=&#039;Formación Socio Crítica III&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;5&#039; where id=&#039;FSC18036&#039;
1444671409	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Planificación</strong>	update &quot;unidadCurricular&quot; set id=&#039;PYG9033&#039;, nombre=&#039;Planificación y Gestión&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;PPL6032&#039;
1444671480	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Estadística II</strong>	insert into &quot;unidadCurricular&quot; values(&#039;EST6032&#039;, &#039;Estadística II&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444671512	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Contabilidad Gubernamental</strong>	update &quot;unidadCurricular&quot; set id=&#039;COG6032&#039;, nombre=&#039;Contabilidad Gubernamental&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;PCG3011&#039;
1444671572	Nombre Apellido (12345678)	Se eliminó <strong>AIEF6042</strong>	delete from &quot;unidadCurricular&quot; where &quot;id&quot;=&#039;AIEF6042&#039;
1444671591	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Análisis e Interpretación de Estados Financieros</strong>	update &quot;unidadCurricular&quot; set id=&#039;AEF9033&#039;, nombre=&#039;Análisis e Interpretación de Estados Financieros&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;AEF9032&#039;
1444671739	Nombre Apellido (12345678)	Se eliminó <strong>ADP6032</strong>	delete from &quot;unidadCurricular&quot; where &quot;id&quot;=&#039;ADP6032&#039;
1444671821	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Sistemas Administrativos</strong>	insert into &quot;unidadCurricular&quot; values(&#039;SAD6032&#039;, &#039;Sistemas Administrativos&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444671873	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Habilidades Directivas II</strong>	insert into &quot;unidadCurricular&quot; values(&#039;HDI9033&#039;, &#039;Habilidades Directivas II&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444671955	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Administración de Costos II</strong>	insert into &quot;unidadCurricular&quot; values(&#039;ADC9033&#039;, &#039;Administración de Costos II&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444671974	Nombre Apellido (12345678)	Se eliminó <strong>CGA9023</strong>	delete from &quot;unidadCurricular&quot; where &quot;id&quot;=&#039;CGA9023&#039;
1444672006	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva III</strong>	update &quot;unidadCurricular&quot; set id=&#039;ELC6032&#039;, nombre=&#039;Electiva III&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;ELEC39043&#039;
1444672062	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Electiva IV</strong>	update &quot;unidadCurricular&quot; set id=&#039;ELEC6042&#039;, nombre=&#039;Electiva IV&#039;, renombrable=true, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;1&#039; where id=&#039;ELEC49043&#039;
1444672104	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Proyecto IV</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PRO2749&#039;, &#039;Proyecto IV&#039;, false, &#039;04&#039;, &#039;3&#039;)
1444672159	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Formación Socio Critica IV</strong>	update &quot;unidadCurricular&quot; set id=&#039;FSC1244&#039;, nombre=&#039;Formación Socio Crítica IV&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;5&#039; where id=&#039;FSC18046&#039;
1444672219	Nombre Apellido (12345678)	Se eliminó <strong>AF6042</strong>	delete from &quot;unidadCurricular&quot; where &quot;id&quot;=&#039;AF6042&#039;
1444672247	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Administración Financiera</strong>	update &quot;unidadCurricular&quot; set id=&#039;ADF9043&#039;, nombre=&#039;Administración Financiera&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;ADF6042&#039;
1444672286	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Auditoria Administrativa</strong>	update &quot;unidadCurricular&quot; set id=&#039;ADD9043&#039;, nombre=&#039;Auditoría Administrativa&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;APAA3041&#039;
1444672346	Nombre Apellido (12345678)	Se eliminó <strong>FEP3031</strong>	delete from &quot;unidadCurricular&quot; where &quot;id&quot;=&#039;FEP3031&#039;
1444672442	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Sistemas Financieros</strong>	update &quot;unidadCurricular&quot; set id=&#039;SISF9043&#039;, nombre=&#039;Sistemas Financieros&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;SIF6042&#039;
1444672503	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Paquetes Informaticos Aplicados a los Proc Administ</strong>	update &quot;unidadCurricular&quot; set id=&#039;PIA9043&#039;, nombre=&#039;Paquetes Informáticos Aplicados a la Administración&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;PP13041&#039;
1444672581	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Gestión Pública</strong>	insert into &quot;unidadCurricular&quot; values(&#039;GP9043&#039;, &#039;Gestión Pública&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444672659	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Investigación de Operaciones</strong>	insert into &quot;unidadCurricular&quot; values(&#039;IOP9043&#039;, &#039;Investigación de Operaciones&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444672708	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Control de Gestión Administrativa</strong>	update &quot;unidadCurricular&quot; set id=&#039;CGA9043&#039;, nombre=&#039;Control de Gestión Administrativa&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;PCG6042&#039;
1444674650	Nombre Apellido (12345678)	Se agregó la malla <strong>PNFA-2014</strong>	insert into malla values(&#039;PNFA-2014&#039;, &#039;2015-10-12&#039;) returning id
1444674744	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Administración en el Nuevo Modelo Social</strong>	update &quot;unidadCurricular&quot; set id=&#039;ANM60T2&#039;, nombre=&#039;Administración en el Nuevo Modelo Social Transición&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;ANM60T2&#039;
1444674759	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Administración en el Nuevo Modelo Social</strong>	insert into &quot;unidadCurricular&quot; values(&#039;AMS6002&#039;, &#039;Administración en el Nuevo Modelo Social&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444674783	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Deberes Formales del Contribuyente</strong>	update &quot;unidadCurricular&quot; set id=&#039;DFC9013&#039;, nombre=&#039;Deberes Formales del Contribuyente&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;DFC9023&#039;
1444674833	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Deberes Formales del Contribuyente II islr</strong>	update &quot;unidadCurricular&quot; set id=&#039;DFC9023&#039;, nombre=&#039;Deberes Formales del Contribuyente II&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;PDF3012&#039;
1444674862	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Presupuesto Público y Privado</strong>	update &quot;unidadCurricular&quot; set id=&#039;PPP9023&#039;, nombre=&#039;Presupuesto Público y Privado&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;PPP9033&#039;
1444674923	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFA-2014</strong>	update malla set id=&#039;PNFA-2014&#039;, fecha=&#039;2015-10-12&#039; where id=&#039;PNFA-2014&#039;
1444937925	Nombre Apellido (12345678)	Se agregó la estructura <strong>Prosecucion</strong>	insert into estructura values(default, &#039;Prosecucion&#039;, &#039;\n\t\t{\n\t\t\t&quot;periodos&quot; : [\n\t\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Trayecto de Transicion&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;TT&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : &quot;3&quot;,\n\t\t\t\t\t&quot;subperiodos&quot; : false\n\t\t\t\n\t\t\t\t}\n\t\t\t]\n\t\t}\n\t&#039;)
1444937973	Nombre Apellido (12345678)	Se modificó la carrera <strong>PNF Administración</strong>	update carrera set id=&#039;04&#039;, nombre=&#039;PNF Administración&#039;, &quot;idArea&quot;=&#039;2&#039; where id=&#039;04&#039;
1444938216	Nombre Apellido (12345678)	Se agregó la malla <strong>PNFA-2014-PRO</strong>	insert into malla values(&#039;PNFA-2014-PRO&#039;, &#039;2015-10-15&#039;) returning id
1444938443	Nombre Apellido (12345678)	Se activó el nuevo periodo <strong>2015-B</strong>	insert into periodo values(default, &#039;2015-B&#039;, &#039;2015-10-12&#039;, &#039;2015-10-25&#039;, &#039;p&#039;, &#039;2&#039;)\n\ninsert into periodo values(default, &#039;2015-B&#039;, &#039;2015-10-15&#039;, &#039;2015-11-29&#039;, &#039;a&#039;, &#039;2&#039;)
1444938444	Nombre Apellido (12345678)	Se activó el nuevo periodo <strong>2015-B</strong>	insert into periodo values(default, &#039;2015-B&#039;, &#039;2015-10-12&#039;, &#039;2015-10-25&#039;, &#039;p&#039;, &#039;3&#039;)\n\ninsert into periodo values(default, &#039;2015-B&#039;, &#039;2015-10-15&#039;, &#039;2015-11-29&#039;, &#039;a&#039;, &#039;3&#039;)
1444938547	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T1-t1</strong> en <strong>PNF Administración</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;2&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;04&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-t1&#039;)
1444938579	Nombre Apellido (12345678)	Se agregó la sección <strong>B</strong> del <strong>T1-t1</strong> en <strong>PNF Administración</strong>	insert into seccion values(default, &#039;B&#039;, &#039;n&#039;, &#039;1.5&#039;, false, &#039;2&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;04&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-t1&#039;)
1444938866	Nombre Apellido (12345678)	Se agregó al profesor <strong>Maria Carrera (16317126)</strong>	insert into persona values(&#039;16317126&#039;, &#039;Maria&#039;, null, &#039;Carrera&#039;, null, &#039;f&#039;, &#039;marca1911@yahoo.es&#039;, &#039;Av. qwe&#039;, &#039;04247625391&#039;, null)\n\ninsert into profesor values(&#039;16317126&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;TC&#039;, &#039;2&#039;)
1444938905	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Carrera Maria (16317126)</strong>	insert into carga values(default, false, null, &#039;16317126&#039;, &#039;1&#039;, null, &#039;CON15015&#039;)
1444938906	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Carrera Maria (16317126)</strong>	insert into carga values(default, false, null, &#039;16317126&#039;, &#039;2&#039;, null, &#039;CON15015&#039;)
1444938966	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Vasquez Rosa (8021736)</strong>	insert into carga values(default, false, null, &#039;8021736&#039;, &#039;1&#039;, null, &#039;EOE6012&#039;)
1444939015	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Perez Idalba (9473423)</strong>	insert into carga values(default, false, null, &#039;9473423&#039;, &#039;1&#039;, null, &#039;FSC12014&#039;)
1444939024	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Perez Idalba (9473423)</strong>	insert into carga values(default, false, null, &#039;9473423&#039;, &#039;2&#039;, null, &#039;EOE6012&#039;)
1444939072	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Marquez Yadira (9475173)</strong>	insert into carga values(default, false, null, &#039;9475173&#039;, &#039;1&#039;, null, &#039;TIC6012&#039;)
1444946963	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Seminario Habilidades Directivas II</strong>	update &quot;unidadCurricular&quot; set id=&#039;SHDD9043&#039;, nombre=&#039;Habilidades Directivas II&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;SHDD9043&#039;
1444947068	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Administración Financiera</strong>	insert into &quot;unidadCurricular&quot; values(&#039;ADF6042&#039;, &#039;Administración Financiera&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444947121	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Sistemas Financieros</strong>	insert into &quot;unidadCurricular&quot; values(&#039;SIF6042&#039;, &#039;Sistemas Financieros&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444947246	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Formación Socio Crítica IV</strong>	insert into &quot;unidadCurricular&quot; values(&#039;FSC18046&#039;, &#039;Formación Socio Crítica IV&#039;, false, &#039;04&#039;, &#039;5&#039;)
1444947325	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Proyecto Nacional y Nueva Ciudadanía</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PNNC9003&#039;, &#039;Proyecto Nacional y Nueva Ciudadanía&#039;, false, &#039;04&#039;, &#039;5&#039;)
1444947338	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Control de Gestión Administrativa</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PCG6042&#039;, &#039;Control de Gestión Administrativa&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444947384	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Paquetes Informáticos Aplicados a la Administración</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PP13041&#039;, &#039;Paquetes Informáticos Aplicados a la Administración&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444947871	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>La Administración en el Nuevo Modelo Social</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PRO6002&#039;, &#039;La Administración en el Nuevo Modelo Social&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444948048	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Gestión de Riesgos y Protección Civil</strong>	insert into &quot;unidadCurricular&quot; values(&#039;GRPC3001&#039;, &#039;Gestión de Riesgos y Protección Civil&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444948188	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Matemática</strong>	insert into &quot;unidadCurricular&quot; values(&#039;MAT6002&#039;, &#039;Matemática&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444948287	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Dirección, Control y Evaluación de Sistemas Adm</strong>	update &quot;unidadCurricular&quot; set id=&#039;PRO570419&#039;, nombre=&#039;Dirección, Control y Evaluación de Sistemas Administrativos&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;3&#039; where id=&#039;PRO570419&#039;
1444948337	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Desarrollo Integral</strong>	insert into &quot;unidadCurricular&quot; values(&#039;DIE6002&#039;, &#039;Desarrollo Integral&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444948347	Nombre Apellido (12345678)	Se eliminó <strong>PRO700424</strong>	delete from &quot;unidadCurricular&quot; where &quot;id&quot;=&#039;PRO700424&#039;
1444948397	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Auditoria Administrativa</strong>	insert into &quot;unidadCurricular&quot; values(&#039;APAA3041&#039;, &#039;Auditoria Administrativa&#039;, false, &#039;04&#039;, &#039;2&#039;)
1445375889	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012</strong>	update malla set id=&#039;PNFI-2012&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012&#039;
1444948398	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Operaciones Financieras</strong>	insert into &quot;unidadCurricular&quot; values(&#039;OF6012&#039;, &#039;Operaciones Financieras&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444948462	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Electiva IV</strong>	insert into &quot;unidadCurricular&quot; values(&#039;ELEC49043&#039;, &#039;Electiva IV&#039;, true, &#039;04&#039;, &#039;1&#039;)
1444948505	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Electiva III</strong>	insert into &quot;unidadCurricular&quot; values(&#039;AFPS6033&#039;, &#039;Electiva III&#039;, true, &#039;04&#039;, &#039;1&#039;)
1444948513	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Estadistica</strong>	insert into &quot;unidadCurricular&quot; values(&#039;ES3011&#039;, &#039;Estadistica&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444948585	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Analisis e Interpretación de Estados Financieros</strong>	insert into &quot;unidadCurricular&quot; values(&#039;AEF9032&#039;, &#039;Analisis e Interpretación de Estados Financieros&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444948810	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Formación Socio Crítica I</strong>	insert into &quot;unidadCurricular&quot; values(&#039;FSC18016&#039;, &#039;Formación Socio Crítica I&#039;, false, &#039;04&#039;, &#039;5&#039;)
1444948915	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Planificación</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PPL6032&#039;, &#039;Planificación&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444948940	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Técnicas de Expresión Oral y Escrita</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PTE3011&#039;, &#039;Técnicas de Expresión Oral y Escrita&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444949023	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Formación Socio Crítica III</strong>	insert into &quot;unidadCurricular&quot; values(&#039;FSC18036&#039;, &#039;Formación Socio Crítica III&#039;, false, &#039;04&#039;, &#039;5&#039;)
1444949079	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Deberes Formales del Contribuyente</strong>	insert into &quot;unidadCurricular&quot; values(&#039;DFC6012&#039;, &#039;Deberes Formales del Contribuyente&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444949127	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Planificación, Diseño, Desarrollo e Innovación de Sistemas Administrativos</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PRO570319&#039;, &#039;Planificación, Diseño, Desarrollo e Innovación de Sistemas Administrativos&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444949189	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Contabilidad I</strong>	insert into &quot;unidadCurricular&quot; values(&#039;CON12014&#039;, &#039;Contabilidad I&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444949197	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Presupuesto Público y Privado</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PRE9033&#039;, &#039;Presupuesto Público y Privado&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444949235	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Administración de Costos</strong>	insert into &quot;unidadCurricular&quot; values(&#039;ADC6022&#039;, &#039;Administración de Costos&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444949311	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Fundamentos de la Administración</strong>	insert into &quot;unidadCurricular&quot; values(&#039;FA12014&#039;, &#039;Fundamentos de la Administración&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444949325	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Contabilidad Gubernamental</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PCG3011&#039;, &#039;Contabilidad Gubernamental&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444949384	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Deberes Formales del Contribuyente</strong>	insert into &quot;unidadCurricular&quot; values(&#039;PDF3012&#039;, &#039;Deberes Formales del Contribuyente&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444949481	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Teoría y Práctica del Mercadeo</strong>	insert into &quot;unidadCurricular&quot; values(&#039;TPM6012&#039;, &#039;Teoría y Práctica del Mercadeo&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444949738	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Seminario Habilidades Directivas I</strong>	insert into &quot;unidadCurricular&quot; values(&#039;SHA9023&#039;, &#039;Seminario Habilidades Directivas I&#039;, false, &#039;04&#039;, &#039;2&#039;)
1444949813	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Electiva I</strong>	insert into &quot;unidadCurricular&quot; values(&#039;CGA9023&#039;, &#039;Electiva I&#039;, true, &#039;04&#039;, &#039;1&#039;)
1444949858	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Formación Socio Crítica II</strong>	insert into &quot;unidadCurricular&quot; values(&#039;FSC18026&#039;, &#039;Formación Socio Crítica II&#039;, false, &#039;04&#039;, &#039;5&#039;)
1444949911	Nombre Apellido (12345678)	Se agregó la unidad curricular <strong>Electiva II</strong>	insert into &quot;unidadCurricular&quot; values(&#039;ELEC29023&#039;, &#039;Electiva II&#039;, true, &#039;04&#039;, &#039;1&#039;)
1445015823	Nombre Apellido (12345678)	Se agregó la malla <strong>PNFA-2010</strong>	insert into malla values(&#039;PNFA-2010&#039;, &#039;2015-10-16&#039;) returning id
1445116917	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFA-2010</strong>	update malla set id=&#039;PNFA-2010&#039;, fecha=&#039;2015-10-16&#039; where id=&#039;PNFA-2010&#039;
1445116969	Nombre Apellido (12345678)	Se creó el respaldo <strong>2015-10-17_16-52-47.sql</strong>	No SQL
1445123446	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFA-2010</strong>	update malla set id=&#039;PNFA-2010&#039;, fecha=&#039;2015-10-16&#039; where id=&#039;PNFA-2010&#039;
1445123545	Nombre Apellido (12345678)	Se eliminó el respaldo <strong>2015-10-17_16-52-47.sql</strong>	No SQL
1445123549	Nombre Apellido (12345678)	Se creó el respaldo <strong>2015-10-17_18-42-29.sql</strong>	No SQL
1445124445	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFA-2010</strong>	update malla set id=&#039;PNFA-2010&#039;, fecha=&#039;2015-10-16&#039; where id=&#039;PNFA-2010&#039;
1445284277	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Gonzalez Silvia (15175795)</strong>	insert into carga values(default, false, null, &#039;15175795&#039;, &#039;4&#039;, null, &#039;PRO570119&#039;)
1445124471	Nombre Apellido (12345678)	Se modificó la unidad curricular <strong>Habilidades Directivas II</strong>	update &quot;unidadCurricular&quot; set id=&#039;SHDD9043&#039;, nombre=&#039;Seminario Habilidades Directivas II&#039;, renombrable=false, &quot;idCarrera&quot;=&#039;04&#039;, &quot;idEje&quot;=&#039;2&#039; where id=&#039;SHDD9043&#039;
1445141723	Nombre Apellido (12345678)	Se eliminó el respaldo <strong>2015-10-17_18-42-29.sql</strong>	No SQL
1445273779	Nombre Apellido (12345678)	Se eliminó la malla <strong>PNFA-2014-PRO</strong>	delete from malla where id=&#039;PNFA-2014-PRO&#039; returning id
1445274035	Nombre Apellido (12345678)	Se eliminó <strong>2015-B</strong> de <strong>PNF Administración - Ejido (Prosecucion)</strong>	delete from periodo where id=&#039;2015-B&#039; and &quot;idECS&quot;=&#039;3&#039;
1445274072	Nombre Apellido (12345678)	Se modificó la carrera <strong>PNF Administración</strong>	update carrera set id=&#039;04&#039;, nombre=&#039;PNF Administración&#039;, &quot;idArea&quot;=&#039;2&#039; where id=&#039;04&#039;
1445274348	Nombre Apellido (12345678)	Se modificó la estructura <strong>Prosecucion</strong>	update estructura set nombre=&#039;Prosecucion&#039;, estructura=&#039;\n\t\t{\n\t\t\t&quot;periodos&quot; : [\n\t\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Trayecto de Transicion&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;TT&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : &quot;3&quot;,\n\t\t\t\t\t&quot;subperiodos&quot; : false\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Trayecto 3&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;T3&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : false,\n\t\t\t\t\t&quot;subperiodos&quot; : [\n\t\t\t\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t&quot;nombre&quot; : &quot;Trimestre 1&quot;,\n\t\t\t\t\t\t\t&quot;id&quot; : &quot;t1&quot;,\n\t\t\t\t\t\t\t&quot;duracion&quot; : &quot;3&quot;\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t&quot;nombre&quot; : &quot;Trimestre 2&quot;,\n\t\t\t\t\t\t\t&quot;id&quot; : &quot;t2&quot;,\n\t\t\t\t\t\t\t&quot;duracion&quot; : &quot;3&quot;\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t&quot;nombre&quot; : &quot;Trimestre 3&quot;,\n\t\t\t\t\t\t\t&quot;id&quot; : &quot;t3&quot;,\n\t\t\t\t\t\t\t&quot;duracion&quot; : &quot;3&quot;\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\n\t\t\t\t},\n\t\t\t\t{\n\t\t\t\t\t&quot;nombre&quot; : &quot;Trayecto 4&quot;,\n\t\t\t\t\t&quot;id&quot; : &quot;T4&quot;,\n\t\t\n\t\t\t\t\t&quot;duracion&quot; : false,\n\t\t\t\t\t&quot;subperiodos&quot; : [\n\t\t\t\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t&quot;nombre&quot; : &quot;Trimestre 1&quot;,\n\t\t\t\t\t\t\t&quot;id&quot; : &quot;t1&quot;,\n\t\t\t\t\t\t\t&quot;duracion&quot; : &quot;3&quot;\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t&quot;nombre&quot; : &quot;Trimestre 2&quot;,\n\t\t\t\t\t\t\t&quot;id&quot; : &quot;t2&quot;,\n\t\t\t\t\t\t\t&quot;duracion&quot; : &quot;3&quot;\n\t\t\t\t\t\t},\n\t\t\t\t\t\t{\n\t\t\t\t\t\t\t&quot;nombre&quot; : &quot;Trimestre 3&quot;,\n\t\t\t\t\t\t\t&quot;id&quot; : &quot;t3&quot;,\n\t\t\t\t\t\t\t&quot;duracion&quot; : &quot;3&quot;\n\t\t\t\t\t\t}\n\t\t\t\t\t]\n\t\t\t\n\t\t\t\t}\n\t\t\t]\n\t\t}\n\t&#039; where nombre=&#039;Prosecucion&#039;
1445274398	Nombre Apellido (12345678)	Se modificó la carrera <strong>PNF Administración</strong>	update carrera set id=&#039;04&#039;, nombre=&#039;PNF Administración&#039;, &quot;idArea&quot;=&#039;2&#039; where id=&#039;04&#039;
1445275147	Nombre Apellido (12345678)	Se agregó la malla <strong>PNFA-2014-PRO</strong>	insert into malla values(&#039;PNFA-2014-PRO&#039;, &#039;2015-10-19&#039;) returning id
1445280959	Nombre Apellido (12345678)	Se modificó el periodo <strong>2015-B</strong> de <strong>PNF Administración - Ejido (PNF Trimestral)</strong>	update periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2015-10-12&#039;, &quot;fechaFin&quot;=&#039;2015-10-25&#039; where id=&#039;2015-B&#039; and tipo=&#039;p&#039; and &quot;idECS&quot;=&#039;2&#039;\n\nupdate periodo set id=&#039;2015-B&#039;, &quot;fechaInicio&quot;=&#039;2015-05-18&#039;, &quot;fechaFin&quot;=&#039;2015-10-03&#039; where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=&#039;2&#039;
1445281856	Nombre Apellido (12345678)	Se modificó al profesor <strong>Santo Coronel (5753564)</strong>	update persona set cedula=&#039;5753564&#039;, nombre=&#039;Santo&#039;, &quot;segundoNombre&quot;=&#039;Segundo&#039;, apellido=&#039;Coronel&#039;, &quot;segundoApellido&quot;=&#039;Romero&#039;, sexo=&#039;m&#039;, correo=&#039;ssrc513@gmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04164747101&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;5753564&#039;\n\nupdate profesor set cedula=&#039;5753564&#039;, categoria=&#039;Tit&#039;, condicion=&#039;3&#039;, dedicacion=&#039;EXC&#039;, profesion=&#039;49&#039; where cedula=&#039;5753564&#039;
1445281897	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Coronel Santo (5753564)</strong>	insert into carga values(default, false, null, &#039;5753564&#039;, &#039;2&#039;, null, &#039;FSC12014&#039;)
1445282028	Nombre Apellido (12345678)	Se agregó al profesor <strong>Carlos Hernandez (11955850)</strong>	insert into persona values(&#039;11955850&#039;, &#039;Carlos&#039;, null, &#039;Hernandez&#039;, null, &#039;m&#039;, &#039;carloshla2007@gmail.com&#039;, &#039;Asd&#039;, &#039;04263281790&#039;, null)\n\ninsert into profesor values(&#039;11955850&#039;, &#039;Tit&#039;, &#039;1&#039;, &#039;TC&#039;, &#039;10&#039;)
1445282087	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Hernandez Carlos (11955850)</strong>	insert into carga values(default, false, null, &#039;11955850&#039;, &#039;1&#039;, null, &#039;FAD15015&#039;)
1445282279	Nombre Apellido (12345678)	Se desasignó la sección <strong>A</strong> del <strong>T1-t1</strong> del profesor <strong>Hernandez Carlos (11955850)</strong>	delete from carga where id=&#039;8&#039;
1445282354	Nombre Apellido (12345678)	Se modificó al profesor <strong>Maria Marquez (7934845)</strong>	update persona set cedula=&#039;7934845&#039;, nombre=&#039;Maria&#039;, &quot;segundoNombre&quot;=&#039;Carolina&#039;, apellido=&#039;Marquez&#039;, &quot;segundoApellido&quot;=&#039;Uzcategui&#039;, sexo=&#039;f&#039;, correo=&#039;mcarolinamar@hotmail.com&#039;, direccion=&#039;Sin asignar&#039;, telefono=&#039;04247708690&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;7934845&#039;\n\nupdate profesor set cedula=&#039;7934845&#039;, categoria=&#039;Agre&#039;, condicion=&#039;3&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;10&#039; where cedula=&#039;7934845&#039;
1445282372	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Marquez Maria (7934845)</strong>. Suple <strong>Sifontes Omel (9906067)</strong>	insert into carga values(default, false, null, &#039;7934845&#039;, &#039;1&#039;, 9906067, &#039;FAD15015&#039;)
1445282395	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Hernandez Carlos (11955850)</strong>	insert into carga values(default, false, null, &#039;11955850&#039;, &#039;2&#039;, null, &#039;FAD15015&#039;)
1445282650	Nombre Apellido (12345678)	Se agregó al profesor <strong>Lenix Omana (1010633)</strong>	insert into persona values(&#039;1010633&#039;, &#039;Lenix&#039;, null, &#039;Omana&#039;, null, &#039;f&#039;, &#039;lenix@ula.ve&#039;, &#039;Asd&#039;, &#039;04147485841&#039;, null)\n\ninsert into profesor values(&#039;1010633&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;TC&#039;, &#039;10&#039;)
1445282673	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Omana Lenix (1010633)</strong>	insert into carga values(default, false, null, &#039;1010633&#039;, &#039;2&#039;, null, &#039;PRO27019&#039;)
1445282766	Nombre Apellido (12345678)	Se agregó al profesor <strong>Jesus Casique (14281324)</strong>	insert into persona values(&#039;14281324&#039;, &#039;Jesus&#039;, null, &#039;Casique&#039;, null, &#039;m&#039;, &#039;casiquemorenojesus@gmail.com&#039;, &#039;Asd&#039;, &#039;04247127978&#039;, null)\n\ninsert into profesor values(&#039;14281324&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;MT&#039;, &#039;50&#039;)
1445282784	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t1</strong> al profesor <strong>Casique Jesus (14281324)</strong>	insert into carga values(default, false, null, &#039;14281324&#039;, &#039;1&#039;, null, &#039;PRO27019&#039;)
1445282813	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t1</strong> al profesor <strong>Sarmiento Carlos (11705856)</strong>	insert into carga values(default, false, null, &#039;11705856&#039;, &#039;2&#039;, null, &#039;TIC6012&#039;)
1445283005	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T1-t3</strong> en <strong>PNF Administración</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;4&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;04&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-t3&#039;)
1445283043	Nombre Apellido (12345678)	Se agregó la sección <strong>B</strong> del <strong>T1-t3</strong> en <strong>PNF Administración</strong>	insert into seccion values(default, &#039;B&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;4&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;04&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-t3&#039;)
1445283082	Nombre Apellido (12345678)	Se agregó la sección <strong>C</strong> del <strong>T1-t3</strong> en <strong>PNF Administración</strong>	insert into seccion values(default, &#039;C&#039;, &#039;n&#039;, &#039;1.5&#039;, false, &#039;4&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;04&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T1-t3&#039;)
1445283345	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Carrera Maria (16317126)</strong>	insert into carga values(default, false, null, &#039;16317126&#039;, &#039;3&#039;, null, &#039;CON12014&#039;)
1445283379	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Contreras Olga (11108398)</strong>	insert into carga values(default, false, null, &#039;11108398&#039;, &#039;4&#039;, null, &#039;CON12014&#039;)
1445283783	Nombre Apellido (12345678)	Se agregó al profesor <strong>Gioconda Saez (11953052)</strong>	insert into persona values(&#039;11953052&#039;, &#039;Gioconda&#039;, &#039;Marlin&#039;, &#039;Saez&#039;, &#039;Torres&#039;, &#039;f&#039;, &#039;giocopaul@gmail.com&#039;, &#039;Asdasd&#039;, &#039;0416-5222543&#039;, null)\n\ninsert into profesor values(&#039;11953052&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;TC&#039;, &#039;2&#039;)
1445284113	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Saez Gioconda (11953052)</strong>	insert into carga values(default, false, null, &#039;11953052&#039;, &#039;5&#039;, null, &#039;CON12014&#039;)
1445284131	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Colina Judith (6547603)</strong>	insert into carga values(default, false, null, &#039;6547603&#039;, &#039;3&#039;, null, &#039;DFC6012&#039;)
1445284140	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Gutierrez Pedro (9234597)</strong>	insert into carga values(default, false, null, &#039;9234597&#039;, &#039;4&#039;, null, &#039;DFC6012&#039;)
1445284147	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Ochoa Alejandro (12048353)</strong>	insert into carga values(default, false, null, &#039;12048353&#039;, &#039;5&#039;, null, &#039;DFC6012&#039;)
1445284178	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Rojas Carlos (8958864)</strong>	insert into carga values(default, false, null, &#039;8958864&#039;, &#039;3&#039;, null, &#039;DAR9013&#039;)
1445284179	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Rojas Carlos (8958864)</strong>	insert into carga values(default, false, null, &#039;8958864&#039;, &#039;4&#039;, null, &#039;DAR9013&#039;)
1445284180	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Rojas Carlos (8958864)</strong>	insert into carga values(default, false, null, &#039;8958864&#039;, &#039;5&#039;, null, &#039;DAR9013&#039;)
1445284216	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Bustos Norkys (15565857)</strong>	insert into carga values(default, false, null, &#039;15565857&#039;, &#039;3&#039;, null, &#039;FSC18016&#039;)
1445284217	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Bustos Norkys (15565857)</strong>	insert into carga values(default, false, null, &#039;15565857&#039;, &#039;4&#039;, null, &#039;FSC18016&#039;)
1445284227	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Sifontes Omel (9906067)</strong>	insert into carga values(default, false, null, &#039;9906067&#039;, &#039;5&#039;, null, &#039;FSC18016&#039;)
1445284263	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Contreras Olga (11108398)</strong>	insert into carga values(default, false, null, &#039;11108398&#039;, &#039;3&#039;, null, &#039;PRO570119&#039;)
1445284389	Nombre Apellido (12345678)	Se agregó al profesor <strong>Vianney Canache (8223161)</strong>	insert into persona values(&#039;8223161&#039;, &#039;Vianney&#039;, null, &#039;Canache&#039;, null, &#039;m&#039;, &#039;fitosiciliano@hotmail.com&#039;, &#039;Asd&#039;, &#039;0424-7686768&#039;, null)\n\ninsert into profesor values(&#039;8223161&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;MT&#039;, &#039;10&#039;)
1445284408	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Canache Vianney (8223161)</strong>	insert into carga values(default, false, null, &#039;8223161&#039;, &#039;5&#039;, null, &#039;PRO570119&#039;)
1445284428	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Abarca Oswaldo (3966127)</strong>	insert into carga values(default, false, null, &#039;3966127&#039;, &#039;3&#039;, null, &#039;IDI9013&#039;)
1445284434	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Sosa Zoila (4489957)</strong>	insert into carga values(default, false, null, &#039;4489957&#039;, &#039;4&#039;, null, &#039;IDI9013&#039;)
1445284441	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Puentes Lilian (8683060)</strong>	insert into carga values(default, false, null, &#039;8683060&#039;, &#039;5&#039;, null, &#039;IDI9013&#039;)
1445284492	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Nava Emiro (8041510)</strong>	insert into carga values(default, false, null, &#039;8041510&#039;, &#039;3&#039;, null, &#039;OF6012&#039;)
1445284971	Nombre Apellido (12345678)	Se agregó al profesor <strong>Yasmin Carmona (9643447)</strong>	insert into persona values(&#039;9643447&#039;, &#039;Yasmin&#039;, null, &#039;Carmona&#039;, null, &#039;f&#039;, &#039;yasmincarmina310@gmail.com&#039;, &#039;Asd&#039;, &#039;0416-3700829&#039;, null)\n\ninsert into profesor values(&#039;9643447&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;TC&#039;, &#039;10&#039;)
1445284987	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Carmona Yasmin (9643447)</strong>	insert into carga values(default, false, null, &#039;9643447&#039;, &#039;4&#039;, null, &#039;OF6012&#039;)
1445285002	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Omana Lenix (1010633)</strong>	insert into carga values(default, false, null, &#039;1010633&#039;, &#039;5&#039;, null, &#039;OF6012&#039;)
1445285022	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T1-t3</strong> al profesor <strong>Ochoa Alejandro (12048353)</strong>	insert into carga values(default, false, null, &#039;12048353&#039;, &#039;3&#039;, null, &#039;TPM6012&#039;)
1445285037	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T1-t3</strong> al profesor <strong>Quintero Jose  (8022671)</strong>	insert into carga values(default, false, null, &#039;8022671&#039;, &#039;4&#039;, null, &#039;TPM6012&#039;)
1445285048	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T1-t3</strong> al profesor <strong>Quintero Jose  (8022671)</strong>	insert into carga values(default, false, null, &#039;8022671&#039;, &#039;5&#039;, null, &#039;TPM6012&#039;)
1445285096	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T2-t3</strong> en <strong>PNF Administración</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;4&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;04&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T2-t3&#039;)
1445285107	Nombre Apellido (12345678)	Se agregó la sección <strong>B</strong> del <strong>T2-t3</strong> en <strong>PNF Administración</strong>	insert into seccion values(default, &#039;B&#039;, &#039;n&#039;, &#039;1.5&#039;, false, &#039;4&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;04&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T2-t3&#039;)
1445285205	Nombre Apellido (12345678)	Se agregó al profesor <strong>Doris Villalba (5871766)</strong>	insert into persona values(&#039;5871766&#039;, &#039;Doris&#039;, null, &#039;Villalba&#039;, null, &#039;f&#039;, &#039;dvilla44@gmail.com&#039;, &#039;Asd&#039;, &#039;0416-6700862&#039;, null)\n\ninsert into profesor values(&#039;5871766&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;MT&#039;, &#039;50&#039;)
1445285220	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Villalba Doris (5871766)</strong>	insert into carga values(default, false, null, &#039;5871766&#039;, &#039;6&#039;, null, &#039;PCG3011&#039;)
1445285233	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T2-t3</strong> al profesor <strong>Curvelo Jose (12817844)</strong>	insert into carga values(default, false, null, &#039;12817844&#039;, &#039;7&#039;, null, &#039;PCG3011&#039;)
1445285245	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Pazos Denisse (10314511)</strong>	insert into carga values(default, false, null, &#039;10314511&#039;, &#039;6&#039;, null, &#039;CON12024&#039;)
1445285246	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T2-t3</strong> al profesor <strong>Pazos Denisse (10314511)</strong>	insert into carga values(default, false, null, &#039;10314511&#039;, &#039;7&#039;, null, &#039;CON12024&#039;)
1445285267	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Casique Jesus (14281324)</strong>	insert into carga values(default, false, null, &#039;14281324&#039;, &#039;6&#039;, null, &#039;PDF3012&#039;)
1445285268	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T2-t3</strong> al profesor <strong>Casique Jesus (14281324)</strong>	insert into carga values(default, false, null, &#039;14281324&#039;, &#039;7&#039;, null, &#039;PDF3012&#039;)
1445285306	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Peña Maritza (9028433)</strong>	insert into carga values(default, false, &#039;Calidad y Gestión Ambiental&#039;, &#039;9028433&#039;, &#039;6&#039;, null, &#039;ELEC29023&#039;)
1445285307	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T2-t3</strong> al profesor <strong>Peña Maritza (9028433)</strong>	insert into carga values(default, false, &#039;Calidad y Gestión Ambiental&#039;, &#039;9028433&#039;, &#039;7&#039;, null, &#039;ELEC29023&#039;)
1445285341	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Garay Migdalia  (3692342)</strong>	insert into carga values(default, false, null, &#039;3692342&#039;, &#039;6&#039;, null, &#039;FSC18026&#039;)
1445285357	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T2-t3</strong> al profesor <strong>Sifontes Omel (9906067)</strong>	insert into carga values(default, false, null, &#039;9906067&#039;, &#039;7&#039;, null, &#039;FSC18026&#039;)
1445286302	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Cardozo Dolly (5447146)</strong>	insert into carga values(default, false, null, &#039;5447146&#039;, &#039;6&#039;, null, &#039;SHA9023&#039;)
1445286311	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T2-t3</strong> al profesor <strong>Garay Migdalia  (3692342)</strong>	insert into carga values(default, false, null, &#039;3692342&#039;, &#039;7&#039;, null, &#039;SHA9023&#039;)
1445286329	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T2-t3</strong> al profesor <strong>Gutierrez Pedro (9234597)</strong>	insert into carga values(default, false, null, &#039;9234597&#039;, &#039;6&#039;, null, &#039;PRO57019&#039;)
1445286338	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T2-t3</strong> al profesor <strong>Hernandez Carlos (11955850)</strong>	insert into carga values(default, false, null, &#039;11955850&#039;, &#039;7&#039;, null, &#039;PRO57019&#039;)
1445286965	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T3-t2</strong> en <strong>PNF Administración</strong>	insert into seccion values(default, &#039;A&#039;, &#039;n&#039;, &#039;1.5&#039;, false, &#039;4&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;04&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T3-t2&#039;)
1445286980	Nombre Apellido (12345678)	Se agregó la sección <strong>B</strong> del <strong>T3-t2</strong> en <strong>PNF Administración</strong>	insert into seccion values(default, &#039;B&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;4&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;04&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T3-t2&#039;)
1445287002	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Carmona Yasmin (9643447)</strong>	insert into carga values(default, false, null, &#039;9643447&#039;, &#039;8&#039;, null, &#039;ADP9033&#039;)
1445287086	Nombre Apellido (12345678)	Se agregó al profesor <strong>Emilia Graterol (12722753)</strong>	insert into persona values(&#039;12722753&#039;, &#039;Emilia&#039;, null, &#039;Graterol&#039;, null, &#039;f&#039;, &#039;emiliagraterol@yahoo.com&#039;, &#039;Asd&#039;, &#039;0424-7139955&#039;, null)\n\ninsert into profesor values(&#039;12722753&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;MT&#039;, &#039;50&#039;)
1445287094	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t2</strong> al profesor <strong>Graterol Emilia (12722753)</strong>	insert into carga values(default, false, null, &#039;12722753&#039;, &#039;9&#039;, null, &#039;ADP9033&#039;)
1445287118	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Guillen Rodrigo (10104966)</strong>	insert into carga values(default, false, null, &#039;10104966&#039;, &#039;8&#039;, null, &#039;ADM6032&#039;)
1445287119	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t2</strong> al profesor <strong>Guillen Rodrigo (10104966)</strong>	insert into carga values(default, false, null, &#039;10104966&#039;, &#039;9&#039;, null, &#039;ADM6032&#039;)
1445287133	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Rojas Carlos (8958864)</strong>	insert into carga values(default, false, null, &#039;8958864&#039;, &#039;8&#039;, null, &#039;DAR9033&#039;)
1445287134	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t2</strong> al profesor <strong>Rojas Carlos (8958864)</strong>	insert into carga values(default, false, null, &#039;8958864&#039;, &#039;9&#039;, null, &#039;DAR9033&#039;)
1445287151	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Bustos Norkys (15565857)</strong>	insert into carga values(default, false, null, &#039;15565857&#039;, &#039;8&#039;, null, &#039;FSC18036&#039;)
1445287152	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t2</strong> al profesor <strong>Bustos Norkys (15565857)</strong>	insert into carga values(default, false, null, &#039;15565857&#039;, &#039;9&#039;, null, &#039;FSC18036&#039;)
1445287165	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Abarca Oswaldo (3966127)</strong>	insert into carga values(default, false, null, &#039;3966127&#039;, &#039;8&#039;, null, &#039;IDI9033&#039;)
1445287166	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t2</strong> al profesor <strong>Abarca Oswaldo (3966127)</strong>	insert into carga values(default, false, null, &#039;3966127&#039;, &#039;9&#039;, null, &#039;IDI9033&#039;)
1445287179	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Marquez Jose (9472514)</strong>	insert into carga values(default, false, null, &#039;9472514&#039;, &#039;8&#039;, null, &#039;PPL6032&#039;)
1445287186	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t2</strong> al profesor <strong>Cardozo Dolly (5447146)</strong>	insert into carga values(default, false, null, &#039;5447146&#039;, &#039;9&#039;, null, &#039;PPL6032&#039;)
1445287206	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Carmona Yasmin (9643447)</strong>	insert into carga values(default, false, null, &#039;9643447&#039;, &#039;8&#039;, null, &#039;PRO570319&#039;)
1445287212	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t2</strong> al profesor <strong>Colina Judith (6547603)</strong>	insert into carga values(default, false, null, &#039;6547603&#039;, &#039;9&#039;, null, &#039;PRO570319&#039;)
1445287224	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t2</strong> al profesor <strong>Pazos Denisse (10314511)</strong>	insert into carga values(default, false, null, &#039;10314511&#039;, &#039;8&#039;, null, &#039;PRE9033&#039;)
1445287232	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t2</strong> al profesor <strong>Oballos Marielba (13525905)</strong>	insert into carga values(default, false, null, &#039;13525905&#039;, &#039;9&#039;, null, &#039;PRE9033&#039;)
1445287454	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T3-t3</strong> en <strong>PNF Administración</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;4&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;04&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T3-t3&#039;)
1445287535	Nombre Apellido (12345678)	Se agregó la sección <strong>B</strong> del <strong>T3-t3</strong> en <strong>PNF Administración</strong>	insert into seccion values(default, &#039;B&#039;, &#039;n&#039;, &#039;1.5&#039;, false, &#039;4&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;04&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T3-t3&#039;)
1445287554	Nombre Apellido (12345678)	Se agregó la sección <strong>C</strong> del <strong>T3-t3</strong> en <strong>PNF Administración</strong>	insert into seccion values(default, &#039;C&#039;, &#039;n&#039;, &#039;1.5&#039;, false, &#039;4&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;04&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T3-t3&#039;)
1445287943	Nombre Apellido (12345678)	Se agregó al profesor <strong>Maria Parra (6729553)</strong>	insert into persona values(&#039;6729553&#039;, &#039;Maria&#039;, &#039;Gloria&#039;, &#039;Parra&#039;, null, &#039;f&#039;, &#039;mariagloria.parrar@gmail.com&#039;, &#039;Asd&#039;, &#039;0416-8743486&#039;, null)\n\ninsert into profesor values(&#039;6729553&#039;, &#039;Inst&#039;, &#039;1&#039;, &#039;TC&#039;, &#039;50&#039;)
1445287991	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Marquez Maria (7934845)</strong>. Suple <strong>Canache Vianney (8223161)</strong>	insert into carga values(default, false, null, &#039;7934845&#039;, &#039;10&#039;, 8223161, &#039;ADM6032&#039;)
1445287992	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Marquez Maria (7934845)</strong>. Suple <strong>Parra Maria (6729553)</strong>	insert into carga values(default, false, null, &#039;7934845&#039;, &#039;11&#039;, 6729553, &#039;ADM6032&#039;)
1445288004	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T3-t3</strong> al profesor <strong>Gonzalez Silvia (15175795)</strong>	insert into carga values(default, false, null, &#039;15175795&#039;, &#039;12&#039;, null, &#039;ADM6032&#039;)
1445288349	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Rojas Carlos (8958864)</strong>	insert into carga values(default, false, null, &#039;8958864&#039;, &#039;10&#039;, null, &#039;DAR9033&#039;)
1445288350	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Rojas Carlos (8958864)</strong>	insert into carga values(default, false, null, &#039;8958864&#039;, &#039;11&#039;, null, &#039;DAR9033&#039;)
1445288351	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T3-t3</strong> al profesor <strong>Rojas Carlos (8958864)</strong>	insert into carga values(default, false, null, &#039;8958864&#039;, &#039;12&#039;, null, &#039;DAR9033&#039;)
1445288658	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Garay Migdalia  (3692342)</strong>	insert into carga values(default, false, null, &#039;3692342&#039;, &#039;10&#039;, null, &#039;FSC18036&#039;)
1445288670	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Coronel Santo (5753564)</strong>	insert into carga values(default, false, null, &#039;5753564&#039;, &#039;11&#039;, null, &#039;FSC18036&#039;)
1445288671	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T3-t3</strong> al profesor <strong>Coronel Santo (5753564)</strong>	insert into carga values(default, false, null, &#039;5753564&#039;, &#039;12&#039;, null, &#039;FSC18036&#039;)
1445288690	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Monsalve Merilin (17523454)</strong>	insert into carga values(default, false, null, &#039;17523454&#039;, &#039;10&#039;, null, &#039;PRO570319&#039;)
1445288696	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Marquez Jose (9472514)</strong>	insert into carga values(default, false, null, &#039;9472514&#039;, &#039;11&#039;, null, &#039;PRO570319&#039;)
1445288704	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T3-t3</strong> al profesor <strong>Oballos Marielba (13525905)</strong>	insert into carga values(default, false, null, &#039;13525905&#039;, &#039;12&#039;, null, &#039;PRO570319&#039;)
1445288851	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFA-2010</strong>	update malla set id=&#039;PNFA-2010&#039;, fecha=&#039;2015-10-16&#039; where id=&#039;PNFA-2010&#039;
1445288920	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFA-2010</strong>	update malla set id=&#039;PNFA-2010&#039;, fecha=&#039;2015-10-16&#039; where id=&#039;PNFA-2010&#039;
1445289152	Nombre Apellido (12345678)	Se agregó al profesor <strong>Alejandro Rojas (8039160)</strong>	insert into persona values(&#039;8039160&#039;, &#039;Alejandro&#039;, null, &#039;Rojas&#039;, null, &#039;m&#039;, &#039;alejandrorojas23@yahoo.com&#039;, &#039;Asd&#039;, &#039;0426-7625391&#039;, null)\n\ninsert into profesor values(&#039;8039160&#039;, &#039;Asist&#039;, &#039;3&#039;, &#039;EXC&#039;, &#039;1&#039;)
1445289234	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T3-t3</strong> al profesor <strong>Rojas Alejandro (8039160)</strong>	insert into carga values(default, false, null, &#039;8039160&#039;, &#039;10&#039;, null, &#039;TIC6032&#039;)
1445289235	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T3-t3</strong> al profesor <strong>Rojas Alejandro (8039160)</strong>	insert into carga values(default, false, null, &#039;8039160&#039;, &#039;11&#039;, null, &#039;TIC6032&#039;)
1445289236	Nombre Apellido (12345678)	Se asignó la sección <strong>C</strong> del <strong>T3-t3</strong> al profesor <strong>Rojas Alejandro (8039160)</strong>	insert into carga values(default, false, null, &#039;8039160&#039;, &#039;12&#039;, null, &#039;TIC6032&#039;)
1445289469	Nombre Apellido (12345678)	Se agregó la sección <strong>A</strong> del <strong>T4-t2</strong> en <strong>PNF Administración</strong>	insert into seccion values(default, &#039;A&#039;, &#039;d&#039;, &#039;1&#039;, false, &#039;4&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;04&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T4-t2&#039;)
1445289487	Nombre Apellido (12345678)	Se agregó la sección <strong>B</strong> del <strong>T4-t2</strong> en <strong>PNF Administración</strong>	insert into seccion values(default, &#039;B&#039;, &#039;n&#039;, &#039;1.5&#039;, false, &#039;4&#039;, (select &quot;ID&quot; from periodo where id=&#039;2015-B&#039; and tipo=&#039;a&#039; and &quot;idECS&quot;=(select id from &quot;estructuraCS&quot; where &quot;idEstructura&quot;=&#039;1&#039; and &quot;idCS&quot;=(select id from &quot;carreraSede&quot; where &quot;idCarrera&quot;=&#039;04&#039; and &quot;idSede&quot;=&#039;3&#039;))), &#039;T4-t2&#039;)
1445289657	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Cardozo Dolly (5447146)</strong>	insert into carga values(default, false, null, &#039;5447146&#039;, &#039;13&#039;, null, &#039;ADF6042&#039;)
1445289668	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T4-t2</strong> al profesor <strong>Carrera Maria (16317126)</strong>	insert into carga values(default, false, null, &#039;16317126&#039;, &#039;14&#039;, null, &#039;ADF6042&#039;)
1445289683	Nombre Apellido (12345678)	Se modificó al profesor <strong>Maria Carrero (16317126)</strong>	update persona set cedula=&#039;16317126&#039;, nombre=&#039;Maria&#039;, &quot;segundoNombre&quot;=null, apellido=&#039;Carrero&#039;, &quot;segundoApellido&quot;=null, sexo=&#039;f&#039;, correo=&#039;marca1911@yahoo.es&#039;, direccion=&#039;Av. qwe&#039;, telefono=&#039;04247625391&#039;, &quot;telefonoFijo&quot;=null where cedula=&#039;16317126&#039;\n\nupdate profesor set cedula=&#039;16317126&#039;, categoria=&#039;Inst&#039;, condicion=&#039;1&#039;, dedicacion=&#039;TC&#039;, profesion=&#039;2&#039; where cedula=&#039;16317126&#039;
1445289706	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Oballos Marielba (13525905)</strong>	insert into carga values(default, false, null, &#039;13525905&#039;, &#039;13&#039;, null, &#039;PCG6042&#039;)
1445289719	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T4-t2</strong> al profesor <strong>Gonzalez Silvia (15175795)</strong>	insert into carga values(default, false, null, &#039;15175795&#039;, &#039;14&#039;, null, &#039;PCG6042&#039;)
1445289744	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Muñoz Miriam (8037619)</strong>	insert into carga values(default, false, null, &#039;8037619&#039;, &#039;13&#039;, null, &#039;PRO570419&#039;)
1445289753	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T4-t2</strong> al profesor <strong>Ochoa Alejandro (12048353)</strong>	insert into carga values(default, false, null, &#039;12048353&#039;, &#039;14&#039;, null, &#039;PRO570419&#039;)
1445289803	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Hernandez Carlos (11955850)</strong>	insert into carga values(default, false, &#039;Administración de Empresas de Producción Social&#039;, &#039;11955850&#039;, &#039;13&#039;, null, &#039;AFPS6033&#039;)
1445289828	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T4-t2</strong> al profesor <strong>Parra Maria (6729553)</strong>	insert into carga values(default, false, &#039;Administración de Empresas de Producción Social&#039;, &#039;6729553&#039;, &#039;14&#039;, null, &#039;AFPS6033&#039;)
1445289862	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Villamizar Mayuly (10718393)</strong>	insert into carga values(default, false, &#039;Administración de Empresas Turisticas&#039;, &#039;10718393&#039;, &#039;13&#039;, null, &#039;ELEC49043&#039;)
1445289874	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T4-t2</strong> al profesor <strong>Colina Judith (6547603)</strong>	insert into carga values(default, false, &#039;Administración de Empresas Turisticas&#039;, &#039;6547603&#039;, &#039;14&#039;, null, &#039;ELEC49043&#039;)
1445289894	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Bustos Norkys (15565857)</strong>	insert into carga values(default, false, null, &#039;15565857&#039;, &#039;13&#039;, null, &#039;FSC18046&#039;)
1445289911	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T4-t2</strong> al profesor <strong>Garay Migdalia  (3692342)</strong>	insert into carga values(default, false, null, &#039;3692342&#039;, &#039;14&#039;, null, &#039;FSC18046&#039;)
1445289923	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Marquez Jose (9472514)</strong>	insert into carga values(default, false, null, &#039;9472514&#039;, &#039;13&#039;, null, &#039;FEP9043&#039;)
1445289942	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T4-t2</strong> al profesor <strong>Monsalve Merilin (17523454)</strong>	insert into carga values(default, false, null, &#039;17523454&#039;, &#039;14&#039;, null, &#039;FEP9043&#039;)
1445289961	Nombre Apellido (12345678)	Se asignó la sección <strong>A</strong> del <strong>T4-t2</strong> al profesor <strong>Parra Maria (6729553)</strong>	insert into carga values(default, false, null, &#039;6729553&#039;, &#039;13&#039;, null, &#039;SHDD9043&#039;)
1445289969	Nombre Apellido (12345678)	Se asignó la sección <strong>B</strong> del <strong>T4-t2</strong> al profesor <strong>Villamizar Mayuly (10718393)</strong>	insert into carga values(default, false, null, &#039;10718393&#039;, &#039;14&#039;, null, &#039;SHDD9043&#039;)
1445290888	Nombre Apellido (12345678)	Se creó el respaldo <strong>2015-10-19_17-11-26.sql</strong>	No SQL
1445371538	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFA-2010</strong>	update malla set id=&#039;PNFA-2010&#039;, fecha=&#039;2015-10-16&#039; where id=&#039;PNFA-2010&#039;
1445371679	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFA-2010</strong>	update malla set id=&#039;PNFA-2010&#039;, fecha=&#039;2015-10-01&#039; where id=&#039;PNFA-2010&#039;
1445375830	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012</strong>	update malla set id=&#039;PNFI-2012&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012&#039;
1445376169	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012</strong>	update malla set id=&#039;PNFI-2012&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012&#039;
1445391099	Nombre Apellido (12345678)	Se modificó la carrera <strong>PNF Informática</strong>	update carrera set id=&#039;03&#039;, nombre=&#039;PNF Informática&#039;, &quot;idArea&quot;=&#039;1&#039; where id=&#039;03&#039;
1445391114	Nombre Apellido (12345678)	Se modificó la carrera <strong>PNF Informática</strong>	update carrera set id=&#039;03&#039;, nombre=&#039;PNF Informática&#039;, &quot;idArea&quot;=&#039;1&#039; where id=&#039;03&#039;
1445391131	Nombre Apellido (12345678)	Se modificó la carrera <strong>PNF Informática</strong>	update carrera set id=&#039;03&#039;, nombre=&#039;PNF Informática&#039;, &quot;idArea&quot;=&#039;1&#039; where id=&#039;03&#039;
1445391162	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012</strong>	update malla set id=&#039;PNFI-2012&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012&#039;
1445391178	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012</strong>	update malla set id=&#039;PNFI-2012&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012&#039;
1445391223	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012</strong>	update malla set id=&#039;PNFI-2012&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012&#039;
1445391268	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012</strong>	update malla set id=&#039;PNFI-2012&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012&#039;
1445391465	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012</strong>	update malla set id=&#039;PNFI-2012&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012&#039;
1445392882	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012</strong>	update malla set id=&#039;PNFI-2012&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012&#039;
1445432885	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012</strong>	update malla set id=&#039;PNFI-2012&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012&#039;
1445433015	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFI-2012</strong>	update malla set id=&#039;PNFI-2012&#039;, fecha=&#039;2011-04-27&#039; where id=&#039;PNFI-2012&#039;
1445433071	Nombre Apellido (12345678)	Se modificó la malla <strong>PNFA-2010-2</strong>	update malla set id=&#039;PNFA-2010-2&#039;, fecha=&#039;2015-10-01&#039; where id=&#039;PNFA-2010&#039;
\.


--
-- Data for Name: salones; Type: TABLE DATA; Schema: public; Owner: -
--

COPY salones (id, salon, cod_edi, tipo) FROM stdin;
\.


--
-- Data for Name: horario; Type: TABLE DATA; Schema: public; Owner: -
--

COPY horario (id_enlace, periodo, thora, chora, seccion, materia, profesor, carrera, salon, hora, id_bloque, id) FROM stdin;
\.


--
-- Name: mallaECS_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"mallaECS_id_seq"', 6, true);


--
-- Name: periodo_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"periodo_ID_seq"', 4, true);


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
\.


--
-- Name: profesion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('profesion_id_seq', 52, true);


--
-- Name: salones_edificio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('salones_edificio_id_seq', 1, false);


--
-- Name: salones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('salones_id_seq', 1, false);


--
-- Name: seccion_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"seccion_ID_seq"', 14, true);


--
-- Name: sede_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('sede_id_seq', 7, true);


--
-- Data for Name: ucMalla; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "ucMalla" (id, "horasTeoricas", "horasPracticas", tipo, periodo, "idUC", "idMalla") FROM stdin;
168	2	0	f	T0	GRPC3001	PNFA-2010-2
167	3	0	f	T0	PRO6002	PNFA-2010-2
169	3	0	f	T0	MAT6002	PNFA-2010-2
164	4	0	f	T0	PNNC9003	PNFA-2010-2
180	4	0	f	T1-t1	CON12014	PNFA-2010-2
202	3	0	f	T2-t1	FSC18026	PNFA-2010-2
212	2	0	f	T2-t1	MLO0602	PNFA-2010-2
206	6	0	f	T2-t1	PRO57019	PNFA-2010-2
198	4	0	f	T2-t1	THAT9023	PNFA-2010-2
211	2	2	t	T2-t1	PTI6022	PNFA-2010-2
214	4	0	f	T2-t2	ADC6022	PNFA-2010-2
194	4	0	f	T2-t2	CON12024	PNFA-2010-2
200	4	0	f	T2-t2	ELEC29023	PNFA-2010-2
203	3	0	f	T2-t2	FSC18026	PNFA-2010-2
196	3	0	f	T2-t2	OYS9023	PNFA-2010-2
207	6	0	f	T2-t2	PRO57019	PNFA-2010-2
34	2	3	t	T2-t1	PIRC2	PNFI-2012
4	2	3	t	T2-t2	PIBD2	PNFI-2012
37	2	0	f	T2-t2	PIFC2	PNFI-2012
33	5	0	f	T2-t2	PIMT2	PNFI-2012
40	2	4	t	T2-t2	PIPP2	PNFI-2012
199	4	0	f	T2-t2	THAT9023	PNFA-2010-2
210	3	0	f	T2-t3	PCG3011	PNFA-2010-2
195	4	0	f	T2-t3	CON12024	PNFA-2010-2
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
209	2	0	f	T2-t3	PDF3012	PNFA-2010-2
201	4	0	f	T2-t3	ELEC29023	PNFA-2010-2
204	3	0	f	T2-t3	FSC18026	PNFA-2010-2
58	5	0	f	T3-t2	PIIS3	PNFI-2012
197	3	0	f	T2-t3	OYS9023	PNFA-2010-2
192	4	0	f	T2-t3	SHA9023	PNFA-2010-2
208	6	0	f	T2-t3	PRO57019	PNFA-2010-2
229	4	0	f	T3-t1	ADP9033	PNFA-2010-2
233	4	0	f	T3-t1	AEF9032	PNFA-2010-2
228	2	0	f	T3-t1	TDR3031	PNFA-2010-2
222	3	0	f	T3-t1	FSC18036	PNFA-2010-2
220	3	0	f	T3-t1	IDI9033	PNFA-2010-2
226	4	0	f	T3-t1	PPL6032	PNFA-2010-2
217	6	0	f	T3-t1	PRO570319	PNFA-2010-2
215	4	0	f	T3-t1	PRE9033	PNFA-2010-2
230	4	0	f	T3-t2	ADP9033	PNFA-2010-2
231	4	0	f	T3-t2	ADM6032	PNFA-2010-2
91	2	0	f	T0	DI6001	PNFA-2014
92	4	0	f	T0	GRPC6002	PNFA-2014
77	4	0	f	T0	MAD9013	PNFA-2014
90	4	0	f	T0	PNNC6002	PNFA-2014
98	4	0	f	T1-t1	CON15015	PNFA-2014
103	3	0	f	T1-t1	ELC6012	PNFA-2014
101	3	0	f	T1-t1	EOE6012	PNFA-2014
104	3	0	f	T1-t1	FSC12014	PNFA-2014
95	4	0	f	T1-t1	FAD15015	PNFA-2014
78	4	0	f	T1-t1	PRO27019	PNFA-2014
102	2	2	t	T1-t1	TIC6012	PNFA-2014
99	4	0	f	T1-t2	CON15015	PNFA-2014
79	4	0	f	T1-t2	EST6012	PNFA-2014
105	3	0	f	T1-t2	FSC12014	PNFA-2014
96	4	0	f	T1-t2	FAD15015	PNFA-2014
106	4	0	f	T1-t2	MAJ6012	PNFA-2014
93	4	0	f	T1-t2	PRO27019	PNFA-2014
100	4	0	f	T1-t3	CON15015	PNFA-2014
108	4	0	f	T1-t3	DFC9013	PNFA-2014
97	4	0	f	T1-t3	FAD15015	PNFA-2014
80	4	0	f	T1-t3	OFI9013	PNFA-2014
94	4	0	f	T1-t3	PRO27019	PNFA-2014
107	4	0	f	T1-t3	TPM9013	PNFA-2014
111	4	0	f	T2-t1	CON150152	PNFA-2014
113	3	0	f	T2-t1	FSC12024	PNFA-2014
115	4	0	f	T2-t1	FDE9023	PNFA-2014
120	3	0	f	T2-t1	GEA6022	PNFA-2014
119	3	0	f	T2-t1	MAJ6022	PNFA-2014
117	4	0	f	T2-t1	OYS9023	PNFA-2014
81	4	0	f	T2-t1	PRYII27029	PNFA-2014
112	4	0	f	T2-t2	CON150152	PNFA-2014
124	3	0	f	T2-t2	DFC9023	PNFA-2014
114	3	0	f	T2-t2	FSC12024	PNFA-2014
116	4	0	f	T2-t2	FDE9023	PNFA-2014
82	4	0	f	T2-t2	GTH9023	PNFA-2014
118	4	0	f	T2-t2	OYS9023	PNFA-2014
122	3	0	f	T2-t2	PPP9023	PNFA-2014
109	4	0	f	T2-t2	PRYII27029	PNFA-2014
126	4	0	f	T2-t3	ADC9023	PNFA-2014
125	3	0	f	T2-t3	DFC9023	PNFA-2014
127	3	0	f	T2-t3	ELC6002	PNFA-2014
121	4	0	f	T2-t3	GTH9023	PNFA-2014
83	3	0	f	T2-t3	HDI9023	PNFA-2014
123	3	0	f	T2-t3	PPP9023	PNFA-2014
110	4	0	f	T2-t3	PRYII27029	PNFA-2014
136	4	0	f	T3-t1	AEF9033	PNFA-2014
135	3	0	f	T3-t1	COG6032	PNFA-2014
134	3	0	f	T3-t1	EST6032	PNFA-2014
234	2	0	f	T3-t2	DAR9033	PNFA-2010-2
223	3	0	f	T3-t2	FSC18036	PNFA-2010-2
221	3	0	f	T3-t2	IDI9033	PNFA-2010-2
227	4	0	f	T3-t2	PPL6032	PNFA-2010-2
218	6	0	f	T3-t2	PRO570319	PNFA-2010-2
216	4	0	f	T3-t2	PRE9033	PNFA-2010-2
232	4	0	f	T3-t3	ADM6032	PNFA-2010-2
235	2	0	f	T3-t3	DAR9033	PNFA-2010-2
14	5	0	f	T1-t3	PIMT1	PNFI-2012
26	6	0	f	T1-t3	PIPT1	PNFI-2012
36	2	0	f	T2-t1	PIFC2	PNFI-2012
45	5	0	f	T2-t1	PIS03	PNFI-2012
3	5	0	f	T2-t1	PIMT2	PNFI-2012
39	2	4	t	T2-t1	PIPP2	PNFI-2012
224	3	0	f	T3-t3	FSC18036	PNFA-2010-2
219	6	0	f	T3-t3	PRO570319	PNFA-2010-2
225	2	2	t	T3-t3	TIC6032	PNFA-2010-2
42	6	0	f	T2-t1	PIPT2	PNFI-2012
252	4	0	f	T4-t1	ADF6042	PNFA-2010-2
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
143	4	0	f	T4-t3	PRO2749	PNFA-2014
157	4	0	f	T0	AMS6002	PNFA-2014
49	5	0	f	T3-t2	PIMA3	PNFI-2012
6	5	0	t	T3-t2	PIMB3	PNFI-2012
55	6	0	f	T3-t2	PIPT3	PNFI-2012
53	2	0	f	T3-t3	PIFC3	PNFI-2012
59	5	0	f	T3-t3	PIIS3	PNFI-2012
7	2	3	f	T3-t3	PIIO3	PNFI-2012
56	6	0	f	T3-t3	PIPT3	PNFI-2012
69	2	3	t	T4-t1	PIAB4	PNFI-2012
170	2	0	f	T0	DIE6002	PNFA-2010-2
20	2	0	f	T1-t3	PIFC1	PNFI-2012
29	2	0	f	T1-t3	PIID1	PNFI-2012
12	5	0	f	T0	PITIP02	PNFI-2012
1	5	0	f	T0	PIMT004	PNFI-2012
11	5	0	f	T0	PIPNP03	PNFI-2012
21	2	4	t	T1-t1	PIAP1	PNFI-2012
15	2	3	t	T1-t1	PIAC1	PNFI-2012
256	4	0	f	TT	ANM60T2	PNFA-2014-PRO
257	4	0	f	T3-t1	AEF9033	PNFA-2014-PRO
258	3	0	f	T3-t2	ADP9033	PNFA-2014-PRO
259	4	0	f	T3-t3	ADC9033	PNFA-2014-PRO
260	4	0	f	T4-t1	ADF9043	PNFA-2014-PRO
261	1	2	t	T4-t2	PIA9043	PNFA-2014-PRO
262	4	0	f	T4-t3	ADD9043	PNFA-2014-PRO
263	4	0	f	TT	SEM160T2	PNFA-2014-PRO
264	4	0	f	TT	SEM260T2	PNFA-2014-PRO
265	4	0	f	TT	EEP60T2	PNFA-2014-PRO
266	4	0	f	TT	GEA60T2	PNFA-2014-PRO
267	4	0	f	TT	PNC60T2	PNFA-2014-PRO
268	3	0	f	T3-t1	COG6032	PNFA-2014-PRO
269	3	0	f	T3-t1	EST6032	PNFA-2014-PRO
270	4	0	f	T3-t1	FSC12034	PNFA-2014-PRO
271	4	0	f	T3-t2	FSC12034	PNFA-2014-PRO
272	4	0	f	T3-t1	PYG9033	PNFA-2014-PRO
273	4	0	f	T3-t2	PYG9033	PNFA-2014-PRO
274	4	0	f	T3-t1	PRO2739	PNFA-2014-PRO
275	4	0	f	T3-t2	PRO2739	PNFA-2014-PRO
276	4	0	f	T3-t3	PRO2739	PNFA-2014-PRO
277	3	0	f	T3-t3	ADP9033	PNFA-2014-PRO
278	4	0	f	T3-t2	HDI9033	PNFA-2014-PRO
279	3	0	f	T3-t2	SAD6032	PNFA-2014-PRO
280	3	0	f	T3-t3	ADM6032	PNFA-2014-PRO
281	3	0	f	T3-t3	ELC6032	PNFA-2014-PRO
282	3	0	f	T4-t1	FSC1244	PNFA-2014-PRO
283	3	0	f	T4-t2	FSC1244	PNFA-2014-PRO
284	3	0	f	T4-t1	FEP9043	PNFA-2014-PRO
285	3	0	f	T4-t2	FEP9043	PNFA-2014-PRO
286	4	0	f	T4-t1	GP9043	PNFA-2014-PRO
287	4	0	f	T4-t2	GP9043	PNFA-2014-PRO
288	3	0	f	T4-t1	IOP9043	PNFA-2014-PRO
289	3	0	f	T4-t2	IOP9043	PNFA-2014-PRO
290	4	0	f	T4-t1	PRO2749	PNFA-2014-PRO
291	4	0	f	T4-t2	PRO2749	PNFA-2014-PRO
292	4	0	f	T4-t3	PRO2749	PNFA-2014-PRO
293	1	2	t	T4-t3	PIA9043	PNFA-2014-PRO
294	4	0	f	T4-t2	SISF9043	PNFA-2014-PRO
295	3	0	f	T4-t3	CGA9043	PNFA-2014-PRO
296	3	0	f	T4-t3	ELEC49043	PNFA-2014-PRO
18	2	0	f	T1-t1	PIFC1	PNFI-2012
174	4	0	f	T1-t1	ES3011	PNFA-2010-2
175	3	0	f	T1-t1	FSC18016	PNFA-2010-2
184	3	0	f	T1-t1	FA12014	PNFA-2010-2
189	6	0	f	T1-t1	PRO570119	PNFA-2010-2
178	4	0	f	T1-t1	PTE3011	PNFA-2010-2
183	2	2	t	T1-t1	PTI6012	PNFA-2010-2
181	4	0	f	T1-t2	CON12014	PNFA-2010-2
172	2	0	f	T1-t2	DAR9013	PNFA-2010-2
176	3	0	f	T1-t2	FSC18016	PNFA-2010-2
185	3	0	f	T1-t2	FA12014	PNFA-2010-2
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
27	2	0	f	T1-t1	PIID1	PNFI-2012
2	5	0	f	T1-t1	PIMT1	PNFI-2012
24	6	0	f	T1-t1	PIPT1	PNFI-2012
22	2	4	t	T1-t2	PIAP1	PNFI-2012
16	2	3	t	T1-t2	PIAC1	PNFI-2012
19	2	0	f	T1-t2	PIFC1	PNFI-2012
28	2	0	f	T1-t2	PIID1	PNFI-2012
13	5	0	f	T1-t2	PIMT1	PNFI-2012
25	6	0	f	T1-t2	PIPT1	PNFI-2012
239	4	0	f	T4-t2	FEP9043	PNFA-2010-2
254	2	0	f	T4-t2	SHDD9043	PNFA-2010-2
23	2	4	t	T1-t3	PIAP1	PNFI-2012
17	2	3	t	T1-t3	PIAC1	PNFI-2012
242	4	0	f	T4-t3	APAA3041	PNFA-2010-2
245	6	0	f	T4-t3	PRO570419	PNFA-2010-2
241	4	0	f	T4-t3	ELEC49043	PNFA-2010-2
250	3	0	f	T4-t3	FSC18046	PNFA-2010-2
255	2	0	f	T4-t3	SHDD9043	PNFA-2010-2
251	3	0	f	T4-t3	SIF6042	PNFA-2010-2
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
72	2	0	f	T4-t3	PIID4	PNFI-2012
67	6	0	f	T4-t3	PIPT4	PNFI-2012
190	6	0	f	T1-t2	PRO570119	PNFA-2010-2
186	4	0	f	T1-t2	IDI9013	PNFA-2010-2
165	4	0	f	T1-t2	OF6012	PNFA-2010-2
179	4	0	f	T1-t2	PTE3011	PNFA-2010-2
182	4	0	f	T1-t3	CON12014	PNFA-2010-2
166	3	0	f	T1-t3	DFC6012	PNFA-2010-2
173	2	0	f	T1-t3	DAR9013	PNFA-2010-2
177	3	0	f	T1-t3	FSC18016	PNFA-2010-2
191	6	0	f	T1-t3	PRO570119	PNFA-2010-2
187	4	0	f	T1-t3	IDI9013	PNFA-2010-2
171	4	0	f	T1-t3	OF6012	PNFA-2010-2
188	2	0	f	T1-t3	TPM6012	PNFA-2010-2
213	4	0	f	T2-t1	ADC6022	PNFA-2010-2
193	4	0	f	T2-t1	CON12024	PNFA-2010-2
205	4	0	f	T2-t1	CGA9023	PNFA-2010-2
\.


--
-- Name: ucMalla_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"ucMalla_id_seq"', 297, true);


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: -
--

COPY usuario (cedula, contrasena, frase, ingreso, nivel) FROM stdin;
12345678	81dc9bdb52d04dc20036dbd8313ed055	81dc9bdb52d04dc20036dbd8313ed055	2015-10-20	1
\.


--
-- PostgreSQL database dump complete
--

