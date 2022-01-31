insert into cars (ID, VIN, Manufacturer, Model, Year, Color)
values (1, '3K096I98581DHSNUP',  'Volkswagen', 'Tiguan', 2019, 'Blue');

insert into cars (ID, VIN, Manufacturer, Model, Year, Color)
values (2, 'ZM8G7BEUQZ97IH46V',  'Peugeot', 'Rifter', 2019, 'Red');

insert into cars (ID, VIN, Manufacturer, Model, Year, Color)
values (3, 'RKXVNNIHLVVZOUB4M',  'Ford', 'Fusion', 2018, 'White');

insert into cars (ID, VIN, Manufacturer, Model, Year, Color)
values (4, 'HKNDGS7CU31E9Z7JW',  'Toyota', 'RAV4', 2018, 'Silver');

insert into cars (ID, VIN, Manufacturer, Model, Year, Color)
values (5, 'DAM41UDN3CHU2WVF6',  'Volvo', 'V60', 2019, 'Gray');


insert into salesperson (ID, id_staff, name, store)
values (1, 00001, 'Petey Cruiser', 'Madrid');

insert into salesperson (ID, id_staff, name, store)
values (2, 00002, 'Anna Sthesia', 'Barcelona');

insert into salesperson (ID, id_staff, name, store)
values (3, 00003, 'Paul Molive', 'Berlin');

insert into salesperson (ID, id_staff, name, store)
values (4, 00004, 'PGail Forcewind', 'Paris');

insert into salesperson (ID, id_staff, name, store)
values (5, 00005, 'Paige Turner', 'Mimia');

insert into salesperson (ID, id_staff, name, store)
values (6, 00006, 'Bob Frapples', 'Mexico City');



insert into customers (ID, idCustomers, name, phone, email, address, city, state_province, Country, zip_postalcode)
values (1, 10001, 'Pablo Picasso', '+34 636 17 63 82', 'None', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Sp', '28045');

insert into customers (ID, idCustomers, name, phone, email, address, city, state_province, Country, zip_postalcode)
values (2, 20001, 'Hedy Lamarr', '++43 1 514442250', 'None', 'Weiglgasse 10', 'Vienna', 'Vienna', 'Au', '1150');

insert into customers (ID, idCustomers, name, phone, email, address, city, state_province, Country, zip_postalcode)
values (3, 30001, 'Katherine Johnson', '++1 202 358 0000', 'None', '300 E St SW', 'Washington, DC', 'Washington', 'US', '20546');



insert into invoices (ID, idInvoices, date, cars_ID, customers_ID, salesperson_ID)
values (1, '852399038', '2018-08-22', 0, 1, 3);

insert into invoices (ID, idInvoices, date, cars_ID, customers_ID, salesperson_ID)
values (1, '731166526', '2018-12-31', 3, 0, 5);

insert into invoices (ID, idInvoices, date, cars_ID, customers_ID, salesperson_ID)
values (3, '271135104', '2019-01-22', 2, 2, 4);