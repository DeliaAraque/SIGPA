--
-- Data for Name: edificio; Type: TABLE DATA; Schema: public; Owner: postgres
--


INSERT INTO edificio VALUES (1, 'A', 1);
INSERT INTO edificio VALUES (2, 'B', 1);
INSERT INTO edificio VALUES (3, 'C', 1);
INSERT INTO edificio VALUES (4, 'D', 1);
INSERT INTO edificio VALUES (5, 'E', 1);
INSERT INTO edificio VALUES (6, 'A', 3);
INSERT INTO edificio VALUES (7, 'B', 3);
INSERT INTO edificio VALUES (8, 'C', 3);
INSERT INTO edificio VALUES (9, 'D', 3);
INSERT INTO edificio VALUES (10, 'E', 3);


--
-- Name: edificio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('edificio_id_seq', 2, true);

--
-- Data for Name: classroom_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO classroom_type VALUES (1, 'Aula');
INSERT INTO classroom_type VALUES (2, 'Laboratorio');
INSERT INTO classroom_type VALUES (3, 'Hospital');

--
-- Data for Name: salones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO salones VALUES (4, '1', 2, '1');
INSERT INTO salones VALUES (5, '2', 2, '1');
INSERT INTO salones VALUES (6, '3', 2, '1');


--
-- Name: salones_edificio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('salones_edificio_id_seq', 1, false);


--
-- Name: salones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('salones_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

--
-- Data for Name: horario_prueba; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO horario_prueba VALUES (1, '1', 1, 1);
INSERT INTO horario_prueba VALUES (2, '2', 1, 2);
INSERT INTO horario_prueba VALUES (3, '3', 1, 3);
INSERT INTO horario_prueba VALUES (4, '4', 1, 4);
INSERT INTO horario_prueba VALUES (5, '5', 1, 5);
INSERT INTO horario_prueba VALUES (6, '6', 1, 6);
INSERT INTO horario_prueba VALUES (7, '7', 1, 7);
INSERT INTO horario_prueba VALUES (8, '8', 2, 1);
INSERT INTO horario_prueba VALUES (9, '9', 2, 2);
INSERT INTO horario_prueba VALUES (10, '10', 2, 3);
INSERT INTO horario_prueba VALUES (11, '11', 2, 4);
INSERT INTO horario_prueba VALUES (12, '12', 2, 5);
INSERT INTO horario_prueba VALUES (13, '13', 2, 6);
INSERT INTO horario_prueba VALUES (14, '14', 2, 7);
INSERT INTO horario_prueba VALUES (15, '15', 3, 1);
INSERT INTO horario_prueba VALUES (16, '16', 3, 2);
INSERT INTO horario_prueba VALUES (17, '17', 3, 3);
INSERT INTO horario_prueba VALUES (18, '18', 3, 4);
INSERT INTO horario_prueba VALUES (19, '19', 3, 5);
INSERT INTO horario_prueba VALUES (20, '20', 3, 6);
INSERT INTO horario_prueba VALUES (21, '21', 3, 7);
INSERT INTO horario_prueba VALUES (22, '22', 4, 1);
INSERT INTO horario_prueba VALUES (23, '23', 4, 2);
INSERT INTO horario_prueba VALUES (24, '24', 4, 3);
INSERT INTO horario_prueba VALUES (25, '25', 4, 4);
INSERT INTO horario_prueba VALUES (26, '26', 4, 5);
INSERT INTO horario_prueba VALUES (27, '27', 4, 6);
INSERT INTO horario_prueba VALUES (28, '28', 4, 7);
INSERT INTO horario_prueba VALUES (29, '29', 5, 1);
INSERT INTO horario_prueba VALUES (30, '30', 5, 2);
INSERT INTO horario_prueba VALUES (31, '31', 5, 3);
INSERT INTO horario_prueba VALUES (32, '32', 5, 4);
INSERT INTO horario_prueba VALUES (33, '33', 5, 5);
INSERT INTO horario_prueba VALUES (34, '34', 5, 6);
INSERT INTO horario_prueba VALUES (35, '35', 5, 7);
INSERT INTO horario_prueba VALUES (36, '36', 6, 1);
INSERT INTO horario_prueba VALUES (37, '37', 6, 2);
INSERT INTO horario_prueba VALUES (38, '38', 6, 3);
INSERT INTO horario_prueba VALUES (39, '39', 6, 4);
INSERT INTO horario_prueba VALUES (40, '40', 6, 5);
INSERT INTO horario_prueba VALUES (41, '41', 6, 6);
INSERT INTO horario_prueba VALUES (42, '42', 6, 7);
INSERT INTO horario_prueba VALUES (43, '43', 7, 1);
INSERT INTO horario_prueba VALUES (44, '44', 7, 2);
INSERT INTO horario_prueba VALUES (45, '45', 7, 3);
INSERT INTO horario_prueba VALUES (46, '46', 7, 4);
INSERT INTO horario_prueba VALUES (47, '47', 7, 5);
INSERT INTO horario_prueba VALUES (48, '48', 7, 6);
INSERT INTO horario_prueba VALUES (49, '49', 7, 7);
INSERT INTO horario_prueba VALUES (50, '50', 8, 1);
INSERT INTO horario_prueba VALUES (51, '51', 8, 2);
INSERT INTO horario_prueba VALUES (52, '52', 8, 3);
INSERT INTO horario_prueba VALUES (53, '53', 8, 4);
INSERT INTO horario_prueba VALUES (54, '54', 8, 5);
INSERT INTO horario_prueba VALUES (55, '55', 8, 6);
INSERT INTO horario_prueba VALUES (56, '56', 8, 7);
INSERT INTO horario_prueba VALUES (57, '57', 9, 1);
INSERT INTO horario_prueba VALUES (58, '58', 9, 2);
INSERT INTO horario_prueba VALUES (59, '59', 9, 3);
INSERT INTO horario_prueba VALUES (60, '60', 9, 4);
INSERT INTO horario_prueba VALUES (61, '61', 9, 5);
INSERT INTO horario_prueba VALUES (62, '62', 9, 6);
INSERT INTO horario_prueba VALUES (63, '63', 9, 7);
INSERT INTO horario_prueba VALUES (64, '64', 10, 1);
INSERT INTO horario_prueba VALUES (65, '65', 10, 2);
INSERT INTO horario_prueba VALUES (66, '66', 10, 3);
INSERT INTO horario_prueba VALUES (67, '67', 10, 4);
INSERT INTO horario_prueba VALUES (68, '68', 10, 5);
INSERT INTO horario_prueba VALUES (69, '69', 10, 6);
INSERT INTO horario_prueba VALUES (70, '70', 10, 7);
INSERT INTO horario_prueba VALUES (71, '71', 11, 1);
INSERT INTO horario_prueba VALUES (72, '72', 11, 2);
INSERT INTO horario_prueba VALUES (73, '73', 11, 3);
INSERT INTO horario_prueba VALUES (74, '74', 11, 4);
INSERT INTO horario_prueba VALUES (75, '75', 11, 5);
INSERT INTO horario_prueba VALUES (76, '76', 11, 6);
INSERT INTO horario_prueba VALUES (77, '77', 11, 7);
INSERT INTO horario_prueba VALUES (78, '78', 12, 1);
INSERT INTO horario_prueba VALUES (79, '79', 12, 2);
INSERT INTO horario_prueba VALUES (80, '80', 12, 3);
INSERT INTO horario_prueba VALUES (81, '81', 12, 4);
INSERT INTO horario_prueba VALUES (82, '82', 12, 5);
INSERT INTO horario_prueba VALUES (83, '83', 12, 6);
INSERT INTO horario_prueba VALUES (84, '84', 12, 7);
INSERT INTO horario_prueba VALUES (85, '85', 13, 1);
INSERT INTO horario_prueba VALUES (86, '86', 13, 2);
INSERT INTO horario_prueba VALUES (87, '87', 13, 3);
INSERT INTO horario_prueba VALUES (88, '88', 13, 4);
INSERT INTO horario_prueba VALUES (89, '89', 13, 5);
INSERT INTO horario_prueba VALUES (90, '90', 13, 6);
INSERT INTO horario_prueba VALUES (91, '91', 13, 7);
INSERT INTO horario_prueba VALUES (92, '92', 14, 1);
INSERT INTO horario_prueba VALUES (93, '93', 14, 2);
INSERT INTO horario_prueba VALUES (94, '94', 14, 3);
INSERT INTO horario_prueba VALUES (95, '95', 14, 4);
INSERT INTO horario_prueba VALUES (96, '96', 14, 5);
INSERT INTO horario_prueba VALUES (97, '97', 14, 6);
INSERT INTO horario_prueba VALUES (98, '98', 14, 7);
INSERT INTO horario_prueba VALUES (99, '99', 15, 1);
INSERT INTO horario_prueba VALUES (100, '100', 15, 2);
INSERT INTO horario_prueba VALUES (101, '101', 15, 3);
INSERT INTO horario_prueba VALUES (102, '102', 15, 4);
INSERT INTO horario_prueba VALUES (103, '103', 15, 5);
INSERT INTO horario_prueba VALUES (104, '104', 15, 6);
INSERT INTO horario_prueba VALUES (105, '105', 15, 7);
INSERT INTO horario_prueba VALUES (106, '106', 16, 1);
INSERT INTO horario_prueba VALUES (107, '107', 16, 2);
INSERT INTO horario_prueba VALUES (108, '108', 16, 3);
INSERT INTO horario_prueba VALUES (109, '109', 16, 4);
INSERT INTO horario_prueba VALUES (110, '110', 16, 5);
INSERT INTO horario_prueba VALUES (111, '111', 16, 6);
INSERT INTO horario_prueba VALUES (112, '112', 16, 7);
INSERT INTO horario_prueba VALUES (113, '113', 17, 1);
INSERT INTO horario_prueba VALUES (114, '114', 17, 2);
INSERT INTO horario_prueba VALUES (115, '115', 17, 3);
INSERT INTO horario_prueba VALUES (116, '116', 17, 4);
INSERT INTO horario_prueba VALUES (117, '117', 17, 5);
INSERT INTO horario_prueba VALUES (118, '118', 17, 6);
INSERT INTO horario_prueba VALUES (119, '119', 17, 7);
INSERT INTO horario_prueba VALUES (120, '120', 18, 1);
INSERT INTO horario_prueba VALUES (121, '121', 18, 2);
INSERT INTO horario_prueba VALUES (122, '122', 18, 3);
INSERT INTO horario_prueba VALUES (123, '123', 18, 4);
INSERT INTO horario_prueba VALUES (124, '124', 18, 5);
INSERT INTO horario_prueba VALUES (125, '125', 18, 6);
INSERT INTO horario_prueba VALUES (126, '126', 18, 7);
INSERT INTO horario_prueba VALUES (127, '127', 19, 1);
INSERT INTO horario_prueba VALUES (128, '128', 19, 2);
INSERT INTO horario_prueba VALUES (129, '129', 19, 3);
INSERT INTO horario_prueba VALUES (130, '130', 19, 4);
INSERT INTO horario_prueba VALUES (131, '131', 19, 5);
INSERT INTO horario_prueba VALUES (132, '132', 19, 6);
INSERT INTO horario_prueba VALUES (133, '133', 19, 7);
INSERT INTO horario_prueba VALUES (1, '1', 1, 1);


--
-- PostgreSQL database dump complete
--