
-- --------------------------------------------------------------
-- DATOS COCHES
-- --------------------------------------------------------------
INSERT INTO Cars (IdCars,Identificacion, Fabricante, Modelo, Año, Color)
VALUES
    (1,'ZM8G7BEUQZ97IH46V','peugeot','Rifter',2019,'rojo'),
    (2,'RKXVNNIHLVVZOUB4M','Vado','Fusión',2018,'blanco'),
    (3,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Plata'),
	(4,'DAM41UDN3CHU2WVF6','volvo','V60',2019,'gris'),
	(5,'DAM41UDN3CHU2WVF6','volvo','V60 a campo traviesa',2019,'gris');

SELECT * FROM Cars;



-- --------------------------------------------------------------
-- DATOS CLIENTES
-- Modifico el nombre de la columna por que no reconoce el caracter 
-- ALTER TABLE Clientes CHANGE `Estado/Provincia` `Estado` varchar(45);
-- --------------------------------------------------------------
INSERT INTO Clientes (IdClientes,Nombre,Telefono,CorreoElectronico,Direccion,Ciudad,Estado,Pais,CodigoPostal)
VALUES
    (0,'Pablo Picasso',636176382,'-','Paseo de la Chopera, 14','Madrid','Madrid','España',28045),
    (1,'hedy lamarr',514442250,'-','Weiglgasse 10','Viena','Viena','Austria',1150),
    (2,'katherine johnson',023580000,'-','300 E St SO','Washington DC','Washington','Estados Unidos',20546);
    
SELECT * FROM Clientes;

-- --------------------------------------------------------------
-- DATOS VENDEDORES
-- --------------------------------------------------------------
INSERT INTO Vendedores (IdVendedores,Nombre,Tienda)
VALUES
    (0,'crucero petey','Madrid'),
    (1,'ana estesia','Barcelona'),
    (2,'Pablo Molive','Berlina'),
	(3,'Gail Fuerzaviento','París'),
	(4,'paige turner','mimia'),
	(5,'Bob Frapples','Ciudad de México'),
	(6,'walter melón','Ámsterdam'),
	(7,'shonda leer','Sao Paulo');
    
SELECT * FROM Vendedores; 

-- --------------------------------------------------------------
-- DATOS FACTURAS
-- Modifico el nombre de una columna y añado otra que faltaba
-- ALTER TABLE Facturas CHANGE `Facturascol` `NumFactura` int;
-- ALTER TABLE Facturas add `Fecha` date after `NumFactura`;
-- --------------------------------------------------------------
ALTER TABLE Facturas CHANGE `Facturascol` `NumFactura` int;
ALTER TABLE Facturas add `Fecha` date after `NumFactura`;


ALTER TABLE Facturas add foreign key(Cars_idCars) references  Cars(IdCars);
insert into Facturas Values (0, 852399038, '2018-08-22',1,3,0);

insert into Facturas Values (1, 731166526, '2018-12-31',0,5,3);
insert into Facturas Values (2, 271135104, '2019-01-22',2,7,2);
-- La primera fila está mal y no deja borrarla porque tiene claves foráneas

SELECT * FROM Facturas;











