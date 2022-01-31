INSERT INTO Customers (ID,Customer_ID,Name,Phone,Email,Adress,City,Province,Country,Postal)
VALUES ("0","10001","Pablo Picasso","+34636176382","-","Paseo de la Chopera, 14","Madrid","Madrid","Spain","28045");
INSERT INTO Customers (ID,Customer_ID,Name,Phone,Email,Adress,City,Province,Country,Postal)
VALUES ("1","20001","Hedy Lamarr","+431514442250","-","Weiglgasse 10","Madrid","Viena","Austria","1150");
INSERT INTO Customers (ID,Customer_ID,Name,Phone,Email,Adress,City,Province,Country,Postal)
VALUES ("2","30001","Katherine Johnson","+12023580000","-","300 E St SW","Madrid","Washington","United States","20546");

INSERT INTO Salespersons (ID,Staff_ID,Name,Store)
VALUES ("0","00001","Petey Cruiser","Madrid");
INSERT INTO Salespersons (ID,Staff_ID,Name,Store)
VALUES ("1","00002","Anna Sthesia","Barcelona");
INSERT INTO Salespersons (ID,Staff_ID,Name,Store)
VALUES ("2","00003","Paul Moliver","Berlin");
INSERT INTO Salespersons (ID,Staff_ID,Name,Store)
VALUES ("3","00003","Gail Forcewind","Paris");
INSERT INTO Salespersons (ID,Staff_ID,Name,Store)
VALUES ("4","00004","Paige Turner","Mimia");
INSERT INTO Salespersons (ID,Staff_ID,Name,Store)
VALUES ("5","00005","Bob Frapples","Mexico City");
INSERT INTO Salespersons (ID,Staff_ID,Name,Store)
VALUES ("6","00006","Walter Melon","Amsterdam");
INSERT INTO Salespersons (ID,Staff_ID,Name,Store)
VALUES ("7","00007","Shonda Leer","Sao Paulo");

INSERT INTO Invoices (ID,Invoice_Number,Date,Customers_ID,Salespersons_ID,Salespersons_ID1)
VALUES ("0","852399038",'2018-08-18',1,3,1);
INSERT INTO Invoices (ID,Invoice_Number,Date,Customers_ID,Salespersons_ID,Salespersons_ID1)
VALUES ("1","731166526",'2018-12-31',0,5,0);
INSERT INTO Invoices (ID,Invoice_Number,Date,Customers_ID,Salespersons_ID,Salespersons_ID1)
VALUES ("2","271135104",'2019-31-01',2,7,2);

INSERT INTO Cars (ID,VIN,Manufacturer,Model,Year,Color,Invoices_ID,Invoices_Customers_ID,Invoices_Salespersons_ID)
VALUES ("0","3K096I98581DHSNUP","Volkswagen","Tiguan","2019","Blue");
INSERT INTO Cars (ID,VIN,Manufacturer,Model,Year,Color,Invoices_ID,Invoices_Customers_ID,Invoices_Salespersons_ID)
VALUES ("1","ZM8G7BEUQZ97IH46V","Peugeot","Rifter","2019","Red");
INSERT INTO Cars (ID,VIN,Manufacturer,Model,Year,Color,Invoices_ID,Invoices_Customers_ID,Invoices_Salespersons_ID)
VALUES ("2","RKXVNNIHLVVZOUB4M","Ford","Fusion","2018","White","0","2","0");
INSERT INTO Cars (ID,VIN,Manufacturer,Model,Year,Color,Invoices_ID,Invoices_Customers_ID,Invoices_Salespersons_ID)
VALUES ("3","HKNDGS7CU31E9Z7JW","Toyota","RAV4","2018","Silver","0","2","1");
INSERT INTO Cars (ID,VIN,Manufacturer,Model,Year,Color,Invoices_ID,Invoices_Customers_ID,Invoices_Salespersons_ID)
VALUES ("4","DAM41UDN3CHU2WVF6","Volvo","V60","2019","Gray","0","2","0");
INSERT INTO Cars (ID,VIN,Manufacturer,Model,Year,Color,Invoices_ID,Invoices_Customers_ID,Invoices_Salespersons_ID)
VALUES ("5","DAM41UDN3CHU2WVF6","Volvo","V60 Cross Country","2019","Gray","0","2","1");