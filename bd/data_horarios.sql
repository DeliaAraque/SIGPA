--
-- Data for Name: edificio; Type: TABLE DATA; Schema: public; Owner: postgres
--


INSERT INTO building VALUES (1, 'A', 1);
INSERT INTO building VALUES (2, 'B', 1);
INSERT INTO building VALUES (3, 'C', 1);
INSERT INTO building VALUES (4, 'D', 1);
INSERT INTO building VALUES (5, 'E', 1);
INSERT INTO building VALUES (6, 'A', 3);
INSERT INTO building VALUES (7, 'B', 3);
INSERT INTO building VALUES (8, 'C', 3);
INSERT INTO building VALUES (9, 'D', 3);
INSERT INTO building VALUES (10, 'E', 3);


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
-- Data for Name: schedule; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO schedule VALUES (1, '1', 1, 1);
INSERT INTO schedule VALUES (2, '2', 1, 2);
INSERT INTO schedule VALUES (3, '3', 1, 3);
INSERT INTO schedule VALUES (4, '4', 1, 4);
INSERT INTO schedule VALUES (5, '5', 1, 5);
INSERT INTO schedule VALUES (6, '6', 1, 6);
INSERT INTO schedule VALUES (7, '7', 1, 7);
INSERT INTO schedule VALUES (8, '8', 2, 1);
INSERT INTO schedule VALUES (9, '9', 2, 2);
INSERT INTO schedule VALUES (10, '10', 2, 3);
INSERT INTO schedule VALUES (11, '11', 2, 4);
INSERT INTO schedule VALUES (12, '12', 2, 5);
INSERT INTO schedule VALUES (13, '13', 2, 6);
INSERT INTO schedule VALUES (14, '14', 2, 7);
INSERT INTO schedule VALUES (15, '15', 3, 1);
INSERT INTO schedule VALUES (16, '16', 3, 2);
INSERT INTO schedule VALUES (17, '17', 3, 3);
INSERT INTO schedule VALUES (18, '18', 3, 4);
INSERT INTO schedule VALUES (19, '19', 3, 5);
INSERT INTO schedule VALUES (20, '20', 3, 6);
INSERT INTO schedule VALUES (21, '21', 3, 7);
INSERT INTO schedule VALUES (22, '22', 4, 1);
INSERT INTO schedule VALUES (23, '23', 4, 2);
INSERT INTO schedule VALUES (24, '24', 4, 3);
INSERT INTO schedule VALUES (25, '25', 4, 4);
INSERT INTO schedule VALUES (26, '26', 4, 5);
INSERT INTO schedule VALUES (27, '27', 4, 6);
INSERT INTO schedule VALUES (28, '28', 4, 7);
INSERT INTO schedule VALUES (29, '29', 5, 1);
INSERT INTO schedule VALUES (30, '30', 5, 2);
INSERT INTO schedule VALUES (31, '31', 5, 3);
INSERT INTO schedule VALUES (32, '32', 5, 4);
INSERT INTO schedule VALUES (33, '33', 5, 5);
INSERT INTO schedule VALUES (34, '34', 5, 6);
INSERT INTO schedule VALUES (35, '35', 5, 7);
INSERT INTO schedule VALUES (36, '36', 6, 1);
INSERT INTO schedule VALUES (37, '37', 6, 2);
INSERT INTO schedule VALUES (38, '38', 6, 3);
INSERT INTO schedule VALUES (39, '39', 6, 4);
INSERT INTO schedule VALUES (40, '40', 6, 5);
INSERT INTO schedule VALUES (41, '41', 6, 6);
INSERT INTO schedule VALUES (42, '42', 6, 7);
INSERT INTO schedule VALUES (43, '43', 7, 1);
INSERT INTO schedule VALUES (44, '44', 7, 2);
INSERT INTO schedule VALUES (45, '45', 7, 3);
INSERT INTO schedule VALUES (46, '46', 7, 4);
INSERT INTO schedule VALUES (47, '47', 7, 5);
INSERT INTO schedule VALUES (48, '48', 7, 6);
INSERT INTO schedule VALUES (49, '49', 7, 7);
INSERT INTO schedule VALUES (50, '50', 8, 1);
INSERT INTO schedule VALUES (51, '51', 8, 2);
INSERT INTO schedule VALUES (52, '52', 8, 3);
INSERT INTO schedule VALUES (53, '53', 8, 4);
INSERT INTO schedule VALUES (54, '54', 8, 5);
INSERT INTO schedule VALUES (55, '55', 8, 6);
INSERT INTO schedule VALUES (56, '56', 8, 7);
INSERT INTO schedule VALUES (57, '57', 9, 1);
INSERT INTO schedule VALUES (58, '58', 9, 2);
INSERT INTO schedule VALUES (59, '59', 9, 3);
INSERT INTO schedule VALUES (60, '60', 9, 4);
INSERT INTO schedule VALUES (61, '61', 9, 5);
INSERT INTO schedule VALUES (62, '62', 9, 6);
INSERT INTO schedule VALUES (63, '63', 9, 7);
INSERT INTO schedule VALUES (64, '64', 10, 1);
INSERT INTO schedule VALUES (65, '65', 10, 2);
INSERT INTO schedule VALUES (66, '66', 10, 3);
INSERT INTO schedule VALUES (67, '67', 10, 4);
INSERT INTO schedule VALUES (68, '68', 10, 5);
INSERT INTO schedule VALUES (69, '69', 10, 6);
INSERT INTO schedule VALUES (70, '70', 10, 7);
INSERT INTO schedule VALUES (71, '71', 11, 1);
INSERT INTO schedule VALUES (72, '72', 11, 2);
INSERT INTO schedule VALUES (73, '73', 11, 3);
INSERT INTO schedule VALUES (74, '74', 11, 4);
INSERT INTO schedule VALUES (75, '75', 11, 5);
INSERT INTO schedule VALUES (76, '76', 11, 6);
INSERT INTO schedule VALUES (77, '77', 11, 7);
INSERT INTO schedule VALUES (78, '78', 12, 1);
INSERT INTO schedule VALUES (79, '79', 12, 2);
INSERT INTO schedule VALUES (80, '80', 12, 3);
INSERT INTO schedule VALUES (81, '81', 12, 4);
INSERT INTO schedule VALUES (82, '82', 12, 5);
INSERT INTO schedule VALUES (83, '83', 12, 6);
INSERT INTO schedule VALUES (84, '84', 12, 7);
INSERT INTO schedule VALUES (85, '85', 13, 1);
INSERT INTO schedule VALUES (86, '86', 13, 2);
INSERT INTO schedule VALUES (87, '87', 13, 3);
INSERT INTO schedule VALUES (88, '88', 13, 4);
INSERT INTO schedule VALUES (89, '89', 13, 5);
INSERT INTO schedule VALUES (90, '90', 13, 6);
INSERT INTO schedule VALUES (91, '91', 13, 7);
INSERT INTO schedule VALUES (92, '92', 14, 1);
INSERT INTO schedule VALUES (93, '93', 14, 2);
INSERT INTO schedule VALUES (94, '94', 14, 3);
INSERT INTO schedule VALUES (95, '95', 14, 4);
INSERT INTO schedule VALUES (96, '96', 14, 5);
INSERT INTO schedule VALUES (97, '97', 14, 6);
INSERT INTO schedule VALUES (98, '98', 14, 7);
INSERT INTO schedule VALUES (99, '99', 15, 1);
INSERT INTO schedule VALUES (100, '100', 15, 2);
INSERT INTO schedule VALUES (101, '101', 15, 3);
INSERT INTO schedule VALUES (102, '102', 15, 4);
INSERT INTO schedule VALUES (103, '103', 15, 5);
INSERT INTO schedule VALUES (104, '104', 15, 6);
INSERT INTO schedule VALUES (105, '105', 15, 7);
INSERT INTO schedule VALUES (106, '106', 16, 1);
INSERT INTO schedule VALUES (107, '107', 16, 2);
INSERT INTO schedule VALUES (108, '108', 16, 3);
INSERT INTO schedule VALUES (109, '109', 16, 4);
INSERT INTO schedule VALUES (110, '110', 16, 5);
INSERT INTO schedule VALUES (111, '111', 16, 6);
INSERT INTO schedule VALUES (112, '112', 16, 7);
INSERT INTO schedule VALUES (113, '113', 17, 1);
INSERT INTO schedule VALUES (114, '114', 17, 2);
INSERT INTO schedule VALUES (115, '115', 17, 3);
INSERT INTO schedule VALUES (116, '116', 17, 4);
INSERT INTO schedule VALUES (117, '117', 17, 5);
INSERT INTO schedule VALUES (118, '118', 17, 6);
INSERT INTO schedule VALUES (119, '119', 17, 7);
INSERT INTO schedule VALUES (120, '120', 18, 1);
INSERT INTO schedule VALUES (121, '121', 18, 2);
INSERT INTO schedule VALUES (122, '122', 18, 3);
INSERT INTO schedule VALUES (123, '123', 18, 4);
INSERT INTO schedule VALUES (124, '124', 18, 5);
INSERT INTO schedule VALUES (125, '125', 18, 6);
INSERT INTO schedule VALUES (126, '126', 18, 7);
INSERT INTO schedule VALUES (127, '127', 19, 1);
INSERT INTO schedule VALUES (128, '128', 19, 2);
INSERT INTO schedule VALUES (129, '129', 19, 3);
INSERT INTO schedule VALUES (130, '130', 19, 4);
INSERT INTO schedule VALUES (131, '131', 19, 5);
INSERT INTO schedule VALUES (132, '132', 19, 6);
INSERT INTO schedule VALUES (133, '133', 19, 7);
INSERT INTO schedule VALUES (1, '1', 1, 1);


--
-- PostgreSQL database dump complete
--