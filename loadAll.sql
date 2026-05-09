-- # Populate Tables
-- # Employees (6)
INSERT INTO employee VALUES (1, 'James', 'Carter', '101 Oak St', 'Baltimore', 'MD', 21201, NULL, 4105550101, 'mobile', '2019-03-15', 'associate');
INSERT INTO employee VALUES (2, 'Sofia', 'Reyes', '202 Elm Ave', 'Towson', 'MD', 21204, 'Apt 3B', 4105550102, 'mobile', '2020-07-01', 'partner');
INSERT INTO employee VALUES (3, 'Marcus', 'Lee', '303 Pine Rd', 'Catonsville', 'MD', 21228, NULL, 4105550103, 'home', '2018-11-20', 'partner');
INSERT INTO employee VALUES (4, 'Dana', 'Brooks', '404 Maple Dr', 'Ellicott City', 'MD', 21043, 'Unit 5', 4105550104, 'mobile', '2021-01-10', 'associate');
INSERT INTO employee VALUES (5, 'Tyler', 'Nguyen', '505 Cedar Ln', 'Columbia', 'MD', 21044, NULL, 4105550105, 'work', '2022-05-18', 'partner');
INSERT INTO employee VALUES (6, 'Priya', 'Patel', '606 Birch Blvd', 'Annapolis', 'MD', 21401, 'Suite 2', 4105550106, 'mobile', '2017-09-30', 'associate');
INSERT INTO employee VALUES (7, 'Patrick', 'Brooks', '606 Birch Blvd', 'Annapolis', 'MD', 21401, 'Suite 2', 4105550107, 'mobile', '2016-10-31', 'associate');

-- # Owners (6, one per property group)
INSERT INTO owner (first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id) VALUES ('Robert', 'Walsh', '10 Harbor View', 'Baltimore', 'MD', 21202, NULL, 4435550201, 'mobile', 2);
INSERT INTO owner (first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id) VALUES ('Linda', 'Chen', '20 Sunset Blvd', 'Towson', 'MD', 21204, 'Apt 8', 4435550202, 'home', 3);
INSERT INTO owner (first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id) VALUES ('George', 'Okafor', '30 Ridgeline Rd', 'Catonsville', 'MD', 21228, NULL, 4435550203, 'mobile', 5);
INSERT INTO owner (first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id) VALUES ('Angela', 'Morris', '40 Commerce Way', 'Ellicott City', 'MD', 21043, 'Ste 100', 4435550204, 'work', 2);
INSERT INTO owner (first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id) VALUES ('Steven', 'Park', '50 Industrial Pkwy', 'Columbia', 'MD', 21044, NULL, 4435550205, 'mobile', 3);
INSERT INTO owner (first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id) VALUES ('Diane', 'Foster', '60 Lakeview Ct', 'Annapolis', 'MD', 21401, NULL, 4435550206, 'home', 5);

-- # Clients (12)
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Aaron', 'Hill', '1 Prospect St', 'Baltimore', 'MD', 21201, NULL, 4105560301, 'mobile', 'residential, 2bed, pet-friendly', 1800);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Brenda', 'Scott', '2 Willow Way', 'Towson', 'MD', 21204, 'Apt 1', 4105560302, 'mobile', 'residential, 1bed, in-unit laundry', 1400);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Carlos', 'Mendez', '3 Valley Rd', 'Catonsville', 'MD', 21228, NULL, 4105560303, 'home', 'commercial, open floor plan', 3500);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Diana', 'Kim', '4 Forest Ave', 'Ellicott City', 'MD', 21043, NULL, 4105560304, 'mobile', 'residential, 3bed, garage', 2400);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Evan', 'Turner', '5 Creekside Dr', 'Columbia', 'MD', 21044, 'Unit 2', 4105560305, 'work', 'industrial, loading dock', 5000);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Fiona', 'Adams', '6 Hilltop Ln', 'Annapolis', 'MD', 21401, NULL, 4105560306, 'mobile', 'residential, 2bed, near transit', 1600);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Greg', 'Barnes', '7 Shoreline Rd', 'Baltimore', 'MD', 21202, NULL, 4105560307, 'mobile', 'commercial, storefront, parking', 4200);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Hannah', 'Cole', '8 Meadow Ct', 'Towson', 'MD', 21286, 'Apt 5C', 4105560308, 'home', 'residential, 1bed, balcony', 1300);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Ivan', 'Diaz', '9 Broad St', 'Catonsville', 'MD', 21228, NULL, 4105560309, 'mobile', 'industrial, high ceiling, 3-phase power', 6000);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Julia', 'Evans', '10 Clover Ln', 'Columbia', 'MD', 21045, NULL, 4105560310, 'mobile', 'residential, 2bed, yard', 2000);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Kevin', 'Flynn', '11 Bridge St', 'Ellicott City', 'MD', 21043, 'Ste 3', 4105560311, 'work', 'commercial, office suite', 3800);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Laura', 'Grant', '12 Parkway Dr', 'Annapolis', 'MD', 21401, NULL, 4105560312, 'mobile', 'residential, 3bed, new construction', 2800);

-- # Properties — 6 Residential (owner 1 & 2)
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('11 Maple St', 'Baltimore', 'MD', 21201, NULL, 2, 1.0, 'residential', 900, 1800, 150, 1, 1, 1);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('12 Oak Ave', 'Towson', 'MD', 21204, 'Apt 2B', 1, 1.0, 'residential', 650, 1350, 100, 1, 1, 4);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('13 Elm Dr', 'Catonsville', 'MD', 21228, NULL, 3, 2.0, 'residential', 1400, 2400, 200, 1, 2, 1);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('14 Cedar Rd', 'Ellicott City', 'MD', 21043, NULL, 2, 1.5, 'residential', 1050, 1600, 125, 0, 2, 4);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('15 Birch Ln', 'Columbia', 'MD', 21044, 'Unit 1', 1, 1.0, 'residential', 700, 1300, 100, 1, 1, 6);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('16 Pine Ct', 'Annapolis', 'MD', 21401, NULL, 3, 2.0, 'residential', 1600, 2800, 225, 1, 2, 6);

-- # Properties — 6 Commercial (owner 3 & 4)
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('21 Commerce Blvd', 'Baltimore', 'MD', 21202, 'Ste A', NULL, 2.0, 'commercial', 2200, 4200, 350, 1, 3, 4);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('22 Market St', 'Towson', 'MD', 21204, NULL, NULL, 1.0, 'commercial', 1800, 3500, 300, 1, 4, 6);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('23 Retail Row', 'Ellicott City', 'MD', 21043, 'Unit B', NULL, 1.0, 'commercial', 1500, 3800, 275, 0, 3, 4);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('24 Business Park Dr', 'Columbia', 'MD', 21044, 'Ste 200', NULL, 2.0, 'commercial', 3000, 5500, 450, 1, 4, 6);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('25 Office Pkwy', 'Annapolis', 'MD', 21401, NULL, NULL, 1.0, 'commercial', 1200, 2800, 250, 1, 3, 4);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('26 Downtown Plaza', 'Baltimore', 'MD', 21201, 'Floor 2', NULL, 2.0, 'commercial', 2600, 4800, 400, 1, 4, 6);

-- # Properties — 6 Industrial (owner 5 & 6)
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('31 Warehouse Way', 'Baltimore', 'MD', 21224, NULL, NULL, 1.0, 'industrial', 8000, 6000, 500, 1, 5, 1);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('32 Freight Rd', 'Catonsville', 'MD', 21228, NULL, NULL, 2.0, 'industrial', 12000, 9000, 700, 0, 6, 7);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('33 Industrial Pkwy', 'Columbia', 'MD', 21044, 'Bay 1', NULL, 1.0, 'industrial', 6500, 5200, 450, 1, 5, 1);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('34 Logistics Blvd', 'Ellicott City', 'MD', 21043, NULL, NULL, 2.0, 'industrial', 15000, 11000, 900, 1, 6, 7);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('35 Distribution Dr', 'Annapolis', 'MD', 21401, 'Unit C', NULL, 1.0, 'industrial', 7200, 6800, 550, 0, 5, 1);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('36 Cargo Ct', 'Towson', 'MD', 21204, NULL, NULL, 1.0, 'industrial', 9500, 7500, 625, 1, 6, 7);

-- # Viewings (12)
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (1, 1, 2, '2024-08-05 10:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (2, 2, 3, '2024-08-06 11:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (3, 4, 5, '2024-08-07 13:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (4, 6, 2, '2024-08-08 14:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (7, 3, 3, '2024-08-09 09:30:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (8, 7, 5, '2024-08-10 15:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (9, 11, 2, '2024-08-12 10:30:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (13, 5, 3, '2024-08-13 11:30:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (14, 9, 5, '2024-08-14 13:30:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (15, 5, 2, '2024-08-15 09:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (5, 8, 3, '2024-08-16 14:30:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (10, 12, 5, '2024-08-17 16:00:00');

-- # Leases (6)
INSERT INTO lease (client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, rent) VALUES (1, 1, 2, 1, '2024-08-20', '2024-09-01', '2025-08-31', 1800);
INSERT INTO lease (client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, rent) VALUES (2, 2, 3, 1, '2024-08-21', '2024-09-01', '2025-08-31', 1350);
INSERT INTO lease (client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, rent) VALUES (3, 8, 5, 4, '2024-08-22', '2024-09-15', '2025-09-14', 3500);
INSERT INTO lease (client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, rent) VALUES (5, 13, 3, 5, '2024-08-23', '2024-10-01', '2025-09-30', 6000);
INSERT INTO lease (client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, rent) VALUES (7, 9, 2, 3, '2024-08-25', '2024-09-01', '2025-08-31', 3800);
INSERT INTO lease (client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, rent) VALUES (4, 3, 5, 2, '2024-08-26', '2024-09-15', NULL, 2400);

-- # Employee Emails
INSERT INTO emp_emails VALUES ('jcarter@pluto.com', 1);
INSERT INTO emp_emails VALUES ('jcarter011@gmail.com', 1);
INSERT INTO emp_emails VALUES ('sreyes@pluto.com', 2);
INSERT INTO emp_emails VALUES ('mlee@pluto.com', 3);
INSERT INTO emp_emails VALUES ('dbrooks@pluto.com', 4);
INSERT INTO emp_emails VALUES ('dbrooks2@icloud.com', 4);
INSERT INTO emp_emails VALUES ('tnguyen@pluto.com', 5);
INSERT INTO emp_emails VALUES ('ppatel@pluto.com', 6);

-- # Owner Emails
INSERT INTO own_emails VALUES ('rwalsh@gmail.com', 1);
INSERT INTO own_emails VALUES ('lchen@gmail.com', 2);
INSERT INTO own_emails VALUES ('gokafor@gmail.com', 3);
INSERT INTO own_emails VALUES ('amorris@gmail.com', 4);
INSERT INTO own_emails VALUES ('spark@gmail.com', 5);
INSERT INTO own_emails VALUES ('dfoster@gmail.com', 6);

-- # Client Emails
INSERT INTO cli_emails VALUES ('ahill@gmail.com', 1);
INSERT INTO cli_emails VALUES ('bscott@gmail.com', 2);
INSERT INTO cli_emails VALUES ('cmendez@gmail.com', 3);
INSERT INTO cli_emails VALUES ('dkim@gmail.com', 4);
INSERT INTO cli_emails VALUES ('eturner@gmail.com', 5);
INSERT INTO cli_emails VALUES ('fadams@gmail.com', 6);
INSERT INTO cli_emails VALUES ('gbarnes@gmail.com', 7);
INSERT INTO cli_emails VALUES ('hcole@gmail.com', 8);
INSERT INTO cli_emails VALUES ('idiaz@gmail.com', 9);
INSERT INTO cli_emails VALUES ('jevans@gmail.com', 10);
INSERT INTO cli_emails VALUES ('kflynn@gmail.com', 11);
INSERT INTO cli_emails VALUES ('lgrant@gmail.com', 12);