insert into persona values
	('0000000', 'Nombre', null, 'Apellido', null, 'm', 'correo@servidor.com', 'Calle #123, Ciudad edo. Estado', '04XX-1234567', '02XX-1234567');
insert into usuario values
	('0000000', '81dc9bdb52d04dc20036dbd8313ed055', '81dc9bdb52d04dc20036dbd8313ed055', null, 1);

insert into area values
	(default, 'Tecnología'),
	(default, 'Ciencias Sociales'),
	(default, 'Ciencias Agricolas y Ambientales');
insert into carrera values
	('01', 'PNF Agroalimentación', 3), 
	('04', 'PNF Administración', 2), 
	('05', 'PNF Geociencias', 1), 
	('06', 'PNF Turismo', 2), 
	('07', 'PNF Contaduria', 2), 
	('08', 'PNF Fonoaudiología', 2), 
	('10', 'PNF Psicología Social', 2), 
	('09', 'PNF Seguridad Alimentaria Y Cultura Nutricional', 3), 
	('11', 'PNF Historia', 2), 
	('02', 'PNF Construcción Civil', 1), 
	('03', 'PNF Informática', 1);
insert into sede values
	(default, 'Bailadores', '2009-03-03', '0000-0000000', 'Bailadores'),
	(default, 'Barinas', '2009-11-12', '0000-0000000', 'Barinas'),
	(default, 'Ejido', '2009-03-03', '0274-2210746', 'Av. Monseñor Duque, Ejido'),
	(default, 'El Vigía', '2013-01-01', '0000-0000000', 'El Vigía'),
	(default, 'Santa Juana', '2009-03-03', '0000-0000000', 'Sector Santa Juana, Mérida'),
	(default, 'Santa Lucía', '2010-09-25', '0000-0000000', 'Santa Lucía'),
	(default, 'Tucaní', '2009-03-03', '0000-0000000', 'Tucaní');
insert into estructura values
	(default, 'PNF Trimestral', ' { "periodos" : [ { "nombre" : "Trayecto inicial", "id" : "T0", "duracion" : "3", "subperiodos" : false }, { "nombre" : "Trayecto 1", "id" : "T1", "duracion" : false, "subperiodos" : [ { "nombre" : "Trimestre 1", "id" : "t1", "duracion" : "3" }, { "nombre" : "Trimestre 2", "id" : "t2", "duracion" : "3" }, { "nombre" : "Trimestre 3", "id" : "t3", "duracion" : "3" } ] }, { "nombre" : "Trayecto 2", "id" : "T2", "duracion" : false, "subperiodos" : [ { "nombre" : "Trimestre 1", "id" : "t1", "duracion" : "3" }, { "nombre" : "Trimestre 2", "id" : "t2", "duracion" : "3" }, { "nombre" : "Trimestre 3", "id" : "t3", "duracion" : "3" } ] }, { "nombre" : "Trayecto 3", "id" : "T3", "duracion" : false, "subperiodos" : [ { "nombre" : "Trimestre 1", "id" : "t1", "duracion" : "3" }, { "nombre" : "Trimestre 2", "id" : "t2", "duracion" : "3" }, { "nombre" : "Trimestre 3", "id" : "t3", "duracion" : "3" } ] }, { "nombre" : "Trayecto 4", "id" : "T4", "duracion" : false, "subperiodos" : [ { "nombre" : "Trimestre 1", "id" : "t1", "duracion" : "3" }, { "nombre" : "Trimestre 2", "id" : "t2", "duracion" : "3" }, { "nombre" : "Trimestre 3", "id" : "t3", "duracion" : "3" } ] } ] } ');
insert into eje values
	(default, 'Acreditable'), 
	(default, 'Profesional'), 
	(default, 'Proyecto'), 
	(default, 'Socio Ambiental'), 
	(default, 'Socio Crítico');

insert into categoria values
	('Agre', 'Agregado'),
	('Asist', 'Asistente'),
	('Asoc', 'Asociado'),
	('Aux', 'Auxiliar Docente'),
	('Inst', 'Instructor'),
	('No', 'Sin Asignar'),
	('Tit', 'Titular');
insert into condicion values
	(default, 'Contratado'),
	(default, 'Jubilado'),
	(default, 'Ordinario'),
	(default, 'Suplente'),
	(default, 'Sin Asignar');
insert into dedicacion values
	('EXC', 'Exclusiva', 16),
	('MT', 'Medio Tiempo', 12),
	('No', 'Sin Asignar', 0),
	('TC', 'Tiempo Completo', 16),
	('TCv', 'Tiempo Convencional', 7);
insert into profesion values
	(0, 'Sin asignar'),
	(default, 'Ing. en Sistemas'),
	(default, 'Lic. Contaduría'),
	(default, 'Ing. Civil'),
	(default, 'TSU en Contaduría'),
	(default, 'TSU en Informática'),
	(default, 'TSU en Agrotecnia'),
	(default, 'TSU en Construcción Civil'),
	(default, 'Ing. Química'),
	(default, 'TSU en Manejo de Emergencias A.C.D.'),
	(default, 'Lic. en Administración'),
	(default, 'Matemática'),
	(default, 'Ing. Industrial'),
	(default, 'Psicogía'),
	(default, 'Socilogía'),
	(default, 'Ing. en Informática'),
	(default, 'Ing. Eléctrica'),
	(default, 'Ing. Mecánica'),
	(default, 'Tecnología Pecuaria'),
	(default, 'Tecnología Agrícola'),
	(default, 'Lic. en Matemática'),
	(default, 'Ing. Forestal'),
	(default, 'Lic. en Comunicación Social'),
	(default, 'Lic. en Educación'),
	(default, 'Lic. en Administración de Empresas'),
	(default, 'Lic. en Letras'),
	(default, 'Lic. en Educación Física'),
	(default, 'Arquitectura'),
	(default, 'Ing. de Minas'),
	(default, 'Lic. en Nutrición'),
	(default, 'Médicina Veterinaria'),
	(default, 'Lic. en Derechos'),
	(default, 'Politología'),
	(default, 'Criminología'),
	(default, 'Lic. en Historia'),
	(default, 'Lic. en Idiomas Modernos'),
	(default, 'Lic. en Medios Audiovisuales'),
	(default, 'Lic. en Biología'),
	(default, 'Lic. en Física'),
	(default, 'Lic. en Química'),
	(default, 'Geografía'),
	(default, 'Farmacia'),
	(default, 'Lic. en Bioanálisis'),
	(default, 'Mádicina'),
	(default, 'Lic. en Enfermería'),
	(default, 'TSU en Radiología'),
	(default, 'Odontología'),
	(default, 'Ing. Agrícola'),
	(default, 'Lic. en Diseño Industrial'),
	(default, 'Lic. en Estadística'),
	(default, 'Lic. en Economía'),
	(default, 'Lic. Filosofía'),
	(default, 'Ing. en Geología');