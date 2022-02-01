INSERT INTO Cars (vehicle_id,manufacturer,model,year,color) 
	VALUES ROW('3K096I98581DHSNUP',	'Volkswagen',	'Tiguan',	'2019',	'Blue'), 
    ROW('ZM8G7BEUQZ97IH46V',	'Peugeot',	'Rifter',	'2019',	'Red'),
    ROW('RKXVNNIHLVVZOUB4M',	'Ford',	'Fusion',	'2018',	'White'), 
    ROW('HKNDGS7CU31E9Z7JW',	'Toyota',	'RAV4',	'2018',	'Silver'), 
    ROW('DAM41UDN3CHU2WVF6',	'Volvo',	'V60',	'2019',	'Gray');

INSERT INTO Customers (customer_id, customer_name, phone, email, address, city, state_province, country,zip_postal) 
	VALUES ROW ('10001',	'Pablo Picasso',	'+34 636 17 63 82',	'-',	'Paseo de la Chopera, 14',	'Madrid',	'Madrid',	'Spain',	'28045'), 
    ROW ('20001',	'Hedy Lamarr',	'+43 1 514442250',	'-',	'Weiglgasse 10',	'Viena',	'Vienna',	'Austria',	'1150'),
    ROW('30001',	'Katherine Johnson',	'+1 202 358 0000',	'-',	'300 E St SW',	'Washington, DC',	'Washington',	'United States',	'20546');

INSERT INTO Invoices (invoice_number, date, car, customer, sales_person) 
	VALUES ROW (