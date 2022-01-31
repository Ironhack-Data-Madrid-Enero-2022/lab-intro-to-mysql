insert into mydbb.Customers (customerID, name, phone, email, address, city, state_province, country, postal_code)
values ("10001", "Pablo Picasso" , "+34 636176382" , NULL , "Paseo de la Chopera, 14" , "Madrid" , "Madrid" , "Spain" , "28045", "852399038")

insert into mydbb.Customers (customerID, name, phone, email, address, city, state_province, country, postal_code)
values ("20001" , "Hedy Lamarr" , "+43 1 514442250" , NULL , "Weiglgasse 10" , "Viena" , "Vienna" , Austria , "1150", "731166526")

insert into mydbb.Customers (customerID, name, phone, email, address, city, state_province, country, postal_code)
values ("30001" , "Katherine Johnson" , "+1 202 358 0000" , NULL , "300 E St SW" , "Washington", "DC" , "Washington" , "United States" , "20546", "271135104")




insert into Salespersons (staffID, name, store)
values ("00001" , "Petey Cruiser" , "Madrid")

insert into Salespersons (staffID, name, store)
values ("00002" , "Anna Sthesia" , "Barcelona")

insert into Salespersons (staffID, name, store)
values ("00003" , "Paul Molive" , "Berlin")

insert into Salespersons (staffID, name, store)
values ("00004" , "Gail Forcewind" , "Paris")

insert into Salespersons (staffID, name, store)
values ("00006" , "Bob Frapples" , "Mexico City")

insert into Salespersons (staffID, name, store)
values ("00008" , "Shonda Leer" , "São Paulo")



insert into Invoices (invoice_number, date, Customers_customerID)
values ('852399038', '2018-08-22', '20001')

insert into Invoices (invoice_number, date, Customers_customerID)
values ('731166526', '2018-12-31', '10001')

insert into Invoices (invoice_number, date, Customers_customerID)
values ('271135104', '2019-01-22', '30001')



insert into mydbb.Cars (VIN, manufacturer, model, year, color, Invoices_invoice_number)
values ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue', 852399038)

insert into mydbb.Cars (VIN, manufacturer, model, year, color, Invoices_invoice_number)
values ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red', 852399038)

insert into mydbb.Cars (VIN, manufacturer, model, year, color, Invoices_invoice_number)
values ('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White', 271135104)

insert into mydbb.Cars (VIN, manufacturer, model, year, color, Invoices_invoice_number)
values ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver', 731166526)

insert into mydbb.Cars (VIN, manufacturer, model, year, color, Invoices_invoice_number)
values ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray', 271135104)

insert into mydbb.Cars (VIN, manufacturer, model, year, color, Invoices_invoice_number)
values ('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gray', 271135104)