INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (1,'3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'); 
INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (2,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red');
INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (3,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White');
INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (4,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'); 
INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (5,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray');
INSERT INTO cars (ID, VIN, manufacturer, model, year, color)
VALUES (6,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');

INSERT INTO customer (customer_id,name,phone_number,email,address,city,state,country,zipcode)
VALUES (10001,'Pablo Picasso', '+34 636 17 63 82','-','Paseo Chopera,14','Madrid','Madrid','Spain',28045);
INSERT INTO customer (customer_id,name,phone_number,email,address,city,state,country,zipcode)
VALUES (20001,'Hedy Lamarr', '+43 1 514442250','-','Weiglgasse 10','Viena','Vienna','Austria',1150);
INSERT INTO customer (customer_id,name,phone_number,email,address,city,state,country,zipcode)
VALUES (30001,'Katherine Johnson', '+1 202 358 0000','-','300 E St SW','Washington, DC','Washington','United States',20546);

INSERT INTO Salesmen (staff_id,	name,store)
VALUES (1,'Petey Cruiser','Madrid');
INSERT INTO Salesmen (staff_id,	name,store)
VALUES (2,'Anna Sthesia','Barcelona');
INSERT INTO Salesmen (staff_id,	name,store)
VALUES (3,'Paul Molive','Berlin');
INSERT INTO Salesmen (staff_id,	name,store)
VALUES (4,'Gail Forcewind','Paris'); 
INSERT INTO Salesmen (staff_id,	name,store)
VALUES (5,'Paige Turner','Mimia'); 
INSERT INTO Salesmen (staff_id,	name,store)
VALUES (6,'Bob Frapples','Mexico City'); 
INSERT INTO Salesmen (staff_id,	name,store)
VALUES (7,'Walter Melon','Amsterdam'); 
INSERT INTO Salesmen (staff_id,	name,store)
VALUES (8,'Shonda Leer','São Paulo'); 

INSERT INTO invoice (invoice_number,date,cars_id,customer_customer_id,Salesmen_staff_id)
VALUES (852399038,'2018-08-22',3,10001,1);
INSERT INTO invoice (invoice_number,date,cars_id,customer_customer_id,Salesmen_staff_id)
VALUES (731166526,'2018-12-31',1,20001,2);
INSERT INTO invoice (invoice_number,date,cars_id,customer_customer_id,Salesmen_staff_id)
VALUES (271135104,'2019-01-22',2,30001,3);