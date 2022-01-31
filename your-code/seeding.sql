
insert into Cars (ID, VIN, Manufacturer, Model, Year, Color)
values (0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue');
insert into Cars (ID, VIN, Manufacturer, Model, Year, Color)
values (1, 'ZM8G7BEUQZ97IH46V', 'Ford', 'Rifter', 2019, 'Red');
insert into Cars (ID, VIN, Manufacturer, Model, Year, Color)
values (2, 'RKXVNNIHLVVZOUB4M', 'Peugeot', 'Fusion', 2018, 'White');
insert into Cars (ID, VIN, Manufacturer, Model, Year, Color)
values (3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver');
insert into Cars (ID, VIN, Manufacturer, Model, Year, Color)
values (4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray');
insert into Cars (ID, VIN, Manufacturer, Model, Year, Color)
values (5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross country', 2019, 'Gray');

insert into Customers (ID, Cust_ID, Name, Phone_num, Email, Address, City, StateProv, Country, ZIP_code)
values (0, 10001, 'Pablo Picasso', '+34636176382', 'unknown','Paseo de la Chopera 14','Madrid','Madrid','Spain',28045);
insert into Customers (ID, Cust_ID, Name, Phone_num, Email, Address, City, StateProv, Country, ZIP_code)
values (1, 20001, 'Hedy Lamarr', '+431514442250', 'unknown','Weiglgasse 10','Viena','Vienna','Austria',1150);
insert into Customers (ID, Cust_ID, Name, Phone_num, Email, Address, City, StateProv, Country, ZIP_code)
values (2, 30001, 'Katherine Johnson', '+12023580000', 'unknown','300 E St SW','Washington DC','Washington','United States',20546);



insert into Salesperson (ID, Staff_ID ,Name ,Store)
values (0, 1, 'Petey Cruiser', 'Madrid');
insert into Salesperson (ID, Staff_ID ,Name ,Store)
values (1, 2, 'Anna Sthesia', 'Barcelona');
insert into Salesperson (ID, Staff_ID ,Name ,Store)
values (2, 3, 'Paul Molive', 'Berlin');
insert into Salesperson (ID, Staff_ID ,Name ,Store)
values (3, 4, 'Gail Forcewind', 'Paris');
insert into Salesperson (ID, Staff_ID ,Name ,Store)
values (4, 5, 'Paige Turner', 'Miami');
insert into Salesperson (ID, Staff_ID ,Name ,Store)
values (5, 6, 'Bob Frapples', 'Mexico City');
insert into Salesperson (ID, Staff_ID ,Name ,Store)
values (6, 7, 'Walter Melon', 'Amsterdam');
insert into Salesperson (ID, Staff_ID ,Name ,Store)
values (7, 8, 'Shonda Leer', 'São Paulo')


insert into Invoice (ID, Inv_Number, date, Cars_ID, Customers_ID, Salesperson_ID)
values (0, 852399038, '2018-08-22', 0, 1, 3);
insert into Invoice (ID, Inv_Number, date, Cars_ID, Customers_ID, Salesperson_ID)
values (1, 731166526, '2018-12-31', 3, 0, 5);
insert into Invoice (ID, Inv_Number, date, Cars_ID, Customers_ID, Salesperson_ID)
values (2, 271135104, '2019-01-22', 2, 2, 7);

