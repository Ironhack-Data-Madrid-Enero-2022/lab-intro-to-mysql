INSERT INTO cars(VIM, Manufacturer, Model, Year, Color, Invoices_Invoice_number)
VALUES( "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue", "852399038" );
INSERT INTO cars(VIM, Manufacturer, Model, Year, Color, Invoices_Invoice_number)
VALUES( "ZM8G7BEUQZ97IH46V", "Ford", "Fusion", 2018, "White", "731166526" );
INSERT INTO cars(VIM, Manufacturer, Model, Year, Color, Invoices_Invoice_number)
VALUES( "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver", "271135104" );
INSERT INTO cars(VIM, Manufacturer, Model, Year, Color, Invoices_Invoice_number)
VALUES( "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray", NULL );
INSERT INTO cars(VIM, Manufacturer, Model, Year, Color, Invoices_Invoice_number)
VALUES( "DAM41UDN3CHU2WVF7", "Volvo", "V60 Cross Country", 2019, "Gray", NULL );


INSERT INTO customers(Customer_ID , Name , Phone , Email , Address , City , State , Country , Postal, Invoices_Invoice_number)
VALUES("10001", "Pablo Picasso" , "+34 636176382" , NULL , "Paseo de la Chopera, 14" , "Madrid" , "Madrid" , "Spain" , "28045", "852399038");
INSERT INTO customers(Customer_ID , Name , Phone , Email , Address , City , State , Country , Postal, Invoices_Invoice_number)
VALUES("20001" , "Hedy Lamarr" , "+43 1 514442250" , NULL , "Weiglgasse 10" , "Viena" , "Vienna" , "Austria" , "1150", "731166526");
INSERT INTO customers(Customer_ID , Name , Phone , Email , Address , City , State , Country , Postal, Invoices_Invoice_number)
VALUES("30001" , "Katherine Johnson" , "+1 202 358 0000" , NULL , "300 E St SW" , "Washington", "DC" , "Washington" , "United States" , "20546", "271135104");


INSERT INTO sales_person(Staff_ID , Name , Store)
VALUES("00001" , "Petey Cruiser" , "Madrid");
INSERT INTO sales_person(Staff_ID , Name , Store)
VALUES("00002" , "Anna Sthesia" , "Barcelona");
INSERT INTO sales_person(Staff_ID , Name , Store)
VALUES("00003" , "Paul Molive" , "Berlin");
INSERT INTO sales_person(Staff_ID , Name , Store)
VALUES("00004" , "Gail Forcewind" , "Paris");
INSERT INTO sales_person(Staff_ID , Name , Store)
VALUES("00006" , "Bob Frapples" , "Mexico City");
INSERT INTO sales_person(Staff_ID , Name , Store)
VALUES("00008" , "Shonda Leer" , "São Paulo");


INSERT INTO invoices(Invoice_number , Date , Car , Customer , Sales_person, Sales_person_Staff_ID)
VALUES("852399038" , "2018-22-08" , "0" , "1" , "3", "00001");
INSERT INTO invoices(Invoice_number , Date , Car , Customer , Sales_person, Sales_person_Staff_ID)
VALUES("731166526" , "2018-12-31" , "3" , "0" , "5", "00004");
INSERT INTO invoices(Invoice_number , Date , Car , Customer , Sales_person, Sales_person_Staff_ID)
VALUES("271135104" , "2019-01-22" , "2" , "2" , "7", "00005");