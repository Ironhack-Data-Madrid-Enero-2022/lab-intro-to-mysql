INSERT INTO cars (
    VehicleID,
    Manufacturer,
    Model,
    year,
    Color
)
VALUES
(
        '3K096I98581DHSNUP',
        'Volkswagen',
        'Tiguan',
         2019,
        'Blue'
    ),
    (
        'ZM8G7BEUQZ97IH46V',
        'peugeot',
        'Rifter',
         2019,
        'rojo'
    ),
    (
        'RKXVNNIHLVVZOUB4M',
        'Vado',
        'Fusión',
         2018,
        'blanco'
    ),
    (
        'HKNDGS7CU31E9Z7JW',
		'Toyota',
        'RAV4',
         2018,
        'Plata'
    ),
	(
        4,
        'DAM41UDN3CHU2WVF6',
		'volvo',
        'V60',
         2019,
        'gris'
    ),
	(
        'DAM41UDN3CHU2WVF6',
		'volvo',
        'V60 a campo traviesa',
         2019,
        'gris'
    );
SELECT * FROM Cars;

INSERT INTO customer(
	idcustomer,
    name,
    phone,
    email,
    address,
    city,
    state,
    country,
    postalcode
)
VALUES
(
		10001,
        'Pablo Picasso',
        346361763,
        '-',
        'Paseo de la Chopera, 14',
        'Madrid',
        'Madrid',
        'Spain',
        28045
	),
	(
		20001,
        'Hedy Lamarr',
        431514442,
        '-',
        'Weiglgasse 10',
        'Viena',
        'Vienna',
        'Austria',
        1150
	),
    (
		30001,
        'Katherine Johnson',
        10235800,
        '-',
        '300 E St SW',
        'Washington, DC',
        'Washington',
        'United States',
        20546
	);
    SELECT * FROM customer;
    
INSERT INTO salesperson (
	idSalesPerson,
    name,
    store
    )
VALUES
(
	00001,
    'Petey Cruiser',
    'Madrid'
    ),
(
	00002,
    'Anna Sthesia',
    'Barcelona'
    ),
(
	00003,
    'Paul Molive',
    'Berlin'
    ),
(
	00004,
    'Gail Forcewind',
    'Paris'
    ),
(
	00005,
    'Paige Turner',
    'Mimia'
    ),
(
	00006,
    'Bob Frapples',
    'Mexico City'
    ),
(
	00007,
    'Walter Melon',
    'Amsterdam'
    ),
(
	00008,
    'Shonda Leer',
    'São Paulo'
    );

SELECT * FROM salesperson;

INSERT INTO invoices (
	idinvoices,
    customer_idcustomer,
    salesperson_idsalesperson,
    cars_idcars
    )
VALUES
(
	852399038,
    0,
    1,
    3
    ),
(
	731166526,
    3,
    0,
    5
    ),
(
	271135104,
    2,
    2,
    7
    )