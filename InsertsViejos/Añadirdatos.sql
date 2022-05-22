Use Bares

INSERT INTO Proveedor
Values (1,'PROVX','RICARDO HERRERA ROMERO','8183795143','AGUSTIN MELGAR 2328, REFORMA , MONTERREY , NL','64550'),
	   (2,'AMSUMEX','ANDREA LILIANA CRUZ GARCIA','8183821147','PROLONGACION MADERO 3811 OTE, FIERRO , MONTERREY , NL','64590'),
	   (3,'GOVI','CARLOS ANDRÉS POLO CASTELLANOS','8183502226','CALLE OSCAR F CASTILLON 111 A, CHEPEVERA , MONTERREY , NL','64030'),
	   (4,'GROGA','DIANA CAROLINA LOPEZ RODRIGUEZ','8180570255','CLLE MORENITA MIA 331, SAN BARTOLO , MONTERREY , NL','66413'),
	   (5,'XMAX','JUAN CAMILO ORTEGA PEÑA','8183557821','CALLE MORENITA MIA 331, SAN BARTOLO , MONTERREY , NL','66413')

INSERT INTO TipoProducto
Values (1,'VINOS',''),
	   (2,'LICORES',''),
	   (3,'MEZCAL',''),
	   (4,'WHISKY',''),
	   (5,'TEQUILA','')


INSERT INTO Productos
Values (1,'Casillero del Diablo','si',37,69.99,1),
	   (2,'Concha y Toro','si',16,79.99,1),
	   (3,'Malbec Ricardo Santos','si',56,69.99,1),
	   (4,'Malbec Ricardo Santos','si',56,69.99,1),
	   (5,'Jagermeister ','si',44,79.99,2),
	   (6,'Hypnotic ','si',20,79.99,2),
	   (7,'Alipus San Andres','si',25,79.99,3),
	   (8,'Alacran ','si',19,94.99,3),
	   (9,'Gusano Rojo','si',27,49.99,3),
	   (10,'Jack Daniels','si',27,69.99,4),
	   (11,'JW Etiqueta Roja','si',27,69.99,4),
	   (12,'Buchanans 12','si',57,89.99,4),
	   (13,'J & B','si',37,59.99,4),
	   (14,'Cuervo Tradicional','si',67,49.99,5),
	   (15,'Jimador','si',77,49.99,5),
	   (16,'Herradura Reposado','si',69,69.99,5),
	   (17,'Don Julio Reposado','si',69,69.99,5)

INSERT INTO DetalleProveedor
VALUES (1,1),
	   (1,2),
	   (1,3),
	   (1,4),
	   (2,5),
	   (2,6),
	   (3,7),
	   (3,8),
	   (3,9),
	   (4,10),
	   (4,11),
	   (4,12),
	   (4,13),
	   (5,14),
	   (5,15),
	   (5,16),
	   (5,17)

INSERT INTO Mesas
VALUES (1,4,20,20),
	   (2,5,16,29),
	   (3,2,10,15),
	   (4,3,15,15),
	   (5,6,20,30),
	   (6,8,40,40),
	   (7,4,10,20),
	   (8,6,20,30),
	   (9,3,15,15),
	   (10,4,10,20),
	   (11,6,20,30),
	   (12,3,15,15),
	   (13,5,16,29),
	   (14,6,20,30),
	   (15,4,10,20),
	   (16,3,15,15),
	   (17,4,10,20),
	   (18,6,20,30),
	   (19,4,10,20),
	   (20,3,15,15)

INSERT INTO Puesto
VALUES (1,'Gerente','Supervisa',12000),
	   (2,'Admin','Administra la base de datos',9000),
	   (3,'Mesero','Atiende a los clientes',5000),
	   (4,'Cajero','Cobra el ticket de los clientes',6000)

INSERT INTO Usuarios
VALUES (1,'ElAdmin','HakunaMatata',2),
	   (2,'MiniRick','WubbalubbaDubDub',1),
	   (3,'Alfred','AmoBruce',3),
	   (4,'Robtop','12345',4)

INSERT INTO Estado
Values (1,'NL')

INSERT INTO Municipio
Values (1,1,'Apodaca'),
	   (2,1,'Monterrey'),
	   (3,1,'Juarez'),
	   (4,1,'Guadalupe'),
	   (5,1,'Escobedo'),
	   (6,1,'San Pedro')

INSERT INTO Horario
Values (1,'09:00:00','17:00:00'),
	   (2,'17:00:00','01:00:00')

INSERT INTO Empleado
VALUES (1,'María Mireya','Acevedo Manríquez','acevedo@gmail.com','Mexico','Cerro Escondido, Villas La Rioja, Monterrey, N.L.',1,2,1,1,1),
       (2,'Adolfo',' Aldrete Vargas','AdolfoAldrete@gmail.com','Mexico','Calle Albatro 513Privada Calandria Monterrey N.L.',1,2,1,1,2),
	   (3,'Natalia Andrea',' Gutierres Velasco','AndreaGuVe@gmail.com','Mexico','Colonia. Sierra Alta 10 Sector Monterrey, NL',2,2,1,3,2),
	   (4,'Jes1s David',' Alvarado Barbosa','JesisBarb@gmail.com','Mexico','Jardines de Valle AltoValle Alto, Apodaca N.L',1,1,1,1,3),
	   (5,'Oscar','Alvarado Mendoza','OscarAlva@gmail.com','Mexico',' .Carolco 1er Sector, Juarez N.L',1,3,1,1,3),
	   (6,'Javier Leonardo','Arredondo Valle','JavierLeA@gmail.com','Mexico','Privada de Florencia #235, Fracc. Urbi Villa del Rey 1er Sector, Guadalupe N.L',1,4,1,1,3),
	   (7,'Javier ','Arnaud Viñetas','JavVi@gmail.com','Mexico','Calle: Los Sauces 218 Colonia. Castaños del Vergel Escobedo, NL',1,5,1,1,3),
	   (8,'Sebastian  ','Iregui Galeano','SebIre@gmail.com','Mexico','Calle: Álvaro Carrillo # 2Fracc. Loma Bonita Monterrey, NL',1,2,1,1,3),
	   (9,'Jose Horacio','Garcia Estrada','JoseHora124@gmail.com','Mexico','Fracc. Cumbres Elite Sector Hacienda Apodaca, NL',2,1,1,3,3),
	   (10,'Andres Alexis ','Bravo Mesta','AndresGignac1@gmail.com','Mexico','Casa en Priv. Catujanes #210, Catujanes, Carretera nacional MTY.',2,2,1,3,3),
	   (11,'Elian Jesus ','Garcia Sanchez','EliJ421G@gmail.com','Mexico','Calle: Eucaliptos 1 Colonia. Castaños del Vergel Monterrey, NL',2,2,1,3,3),
	   (12,'Cesar Yael ','Perez Hernandez','CesarPerezXD23@gmail.com','Mexico','Paseo del Seminario #166, Valle del Seminario 2o Sector, San Pedro Garza García, N.L.',2,6,1,3,3)

INSERT INTO MesaAtentiendeHorario
VALUES (1,4,1),
       (1,9,2),
	   (2,4,1),
	   (2,9,2),
	   (3,4,1),
	   (3,9,2),
	   (4,4,1),
	   (4,9,2),
	   (5,4,1),
	   (5,9,2),
	   (6,5,1),
       (6,10,2),
	   (7,5,1),
	   (7,10,2),
	   (8,5,1),
	   (8,10,2),
	   (9,5,1),
	   (9,10,2),
	   (10,5,1),
	   (10,10,2),
	   (11,6,1),
       (11,11,2),
	   (12,6,1),
	   (12,11,2),
	   (13,6,1),
	   (13,11,2),
	   (14,6,1),
	   (14,11,2),
	   (15,6,1),
	   (15,11,2),
	   (16,7,1),
       (16,12,2),
	   (17,7,1),
	   (17,12,2),
	   (18,7,1),
	   (18,12,2),
	   (19,7,1),
	   (19,12,2),
	   (20,7,1),
	   (20,12,2)

/*
INSERT INTO Cliente
Values  (1,'Miguel Giovanny', 'Vargas Cantu',1321424,0491570156),
		(2,'ALDO MARTINEZ', 'SANTELL',1322424,0491574632),
		(3,'EDGAR MAXIMILIANO','LEAL',4152525,1800160401),
		(4,'SAUL DAVILA','GONZALEZ',123244,0491579760),
		(5,'ALEJANDRO','BELTRAN ALVARADO',12323,0491579212)
		*/