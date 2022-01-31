insert into Cars (idCars, VIM, Manufacturer, Model, Year, Color) values (0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue");
insert into Cars (idCars, VIM, Manufacturer, Model, Year, Color) values (1, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red");
insert into Cars (idCars, VIM, Manufacturer, Model, Year, Color) values (2, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White");
insert into Cars (idCars, VIM, Manufacturer, Model, Year, Color) values (3, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver");
insert into Cars (idCars, VIM, Manufacturer, Model, Year, Color) values (4, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray");
insert into Cars (idCars, VIM, Manufacturer, Model, Year, Color) values (5, "DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");


insert into Customers (idCustomers, CustomerId, Name, Phone, Email, Adress, City, `State/Province`, Country, Postal) values (0, 10001, "Pablo Picasso", 636176382, "nope", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045);


insert into Salesperson (idSalesperson, `Staff ID`, Name, Store)
values (0, 00001, "Petey Cruiser", "Madrid");
insert into Salesperson (idSalesperson, `Staff ID`, Name, Store)
values (2, 00003, "Paul Molive", "Paul Molive");
insert into Salesperson (idSalesperson, `Staff ID`, Name, Store)
values (1, 00002, "Anna Sthesia", "Barcelona");
insert into Salesperson (idSalesperson, `Staff ID`, Name, Store)
values (3, 00004, "Gail Forcewind", "Paris");
insert into Salesperson (idSalesperson, `Staff ID`, Name, Store)
values (4, 00005, "Paige Turner", "Mimia");
insert into Salesperson (idSalesperson, `Staff ID`, Name, Store)
values (5, 00006, "Bob Frapples", "Mexico City");
insert into Salesperson (idSalesperson, `Staff ID`, Name, Store)
values (6, 00007, "Walter Melon", "Amsterdam");
insert into Salesperson (idSalesperson, `Staff ID`, Name, Store)
values (7, 00008, "Shonda Leer", "São Paulo");


insert into Invoices (idInvoices,`Invoice Number`,Date,Car,Customer,`Sales Person`)
values (0, 852399038, "2018-08-22 00:00:00", 0, 1, 3)
insert into Invoices (idInvoices,`Invoice Number`,Date,Car,Customer,`Sales Person`)
values (1, 731166526, "2018-12-31 00:00:00", 3, 0, 5);
insert into Invoices (idInvoices,`Invoice Number`,Date,Car,Customer,`Sales Person`)
values (2, 271135104, "2019-01-22 00:00:00", 2, 2, 7);