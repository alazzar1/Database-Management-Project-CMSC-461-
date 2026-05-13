-- # Populate Tables
-- # Employees (7)
INSERT INTO employee VALUES (1, 'James', 'Carter', '101 Oak St', 'Baltimore', 'MD', 21201, NULL, 4105550101, 'mobile', '2019-03-15', 'associate');
INSERT INTO employee VALUES (2, 'Sofia', 'Reyes', '202 Elm Ave', 'Towson', 'MD', 21204, 'Apt 3B', 4105550102, 'mobile', '2020-07-01', 'partner');
INSERT INTO employee VALUES (3, 'Marcus', 'Lee', '303 Pine Rd', 'Catonsville', 'MD', 21228, NULL, 4105550103, 'home', '2018-11-20', 'partner');
INSERT INTO employee VALUES (4, 'Dana', 'Brooks', '404 Maple Dr', 'Ellicott City', 'MD', 21043, 'Unit 5', 4105550104, 'mobile', '2021-01-10', 'associate');
INSERT INTO employee VALUES (5, 'Tyler', 'Nguyen', '505 Cedar Ln', 'Columbia', 'MD', 21044, NULL, 4105550105, 'work', '2022-05-18', 'partner');
INSERT INTO employee VALUES (6, 'Priya', 'Patel', '606 Birch Blvd', 'Annapolis', 'MD', 21401, 'Suite 2', 4105550106, 'mobile', '2017-09-30', 'associate');
INSERT INTO employee VALUES (7, 'Patrick', 'Brooks', '606 Birch Blvd', 'Annapolis', 'MD', 21401, 'Suite 2', 4105550107, 'mobile', '2016-10-31', 'associate');
-- # Employees (additional entries)
INSERT INTO employee VALUES (8, 'Olivia', 'Turner', '707 Walnut St', 'Frederick', 'MD', 21701, NULL, 4105550108, 'mobile', '2023-02-14', 'associate');
INSERT INTO employee VALUES (9, 'Ethan', 'Murphy', '808 Spruce Ct', 'Glen Burnie', 'MD', 21061, 'Apt 12', 4105550109, 'home', '2015-06-22', 'partner');
INSERT INTO employee VALUES (10, 'Chloe', 'Adams', '909 Willow Way', 'Silver Spring', 'MD', 20901, NULL, 4105550110, 'mobile', '2021-08-09', 'associate');
INSERT INTO employee VALUES (11, 'Noah', 'Hernandez', '111 Aspen Cir', 'Rockville', 'MD', 20850, 'Suite 4', 4105550111, 'work', '2019-12-03', 'partner');
INSERT INTO employee VALUES (12, 'Grace', 'Kim', '222 Dogwood Dr', 'Laurel', 'MD', 20707, NULL, 4105550112, 'mobile', '2020-04-17', 'associate');
INSERT INTO employee VALUES (13, 'Liam', 'Cooper', '333 Magnolia Ave', 'Dundalk', 'MD', 21222, NULL, 4105550113, 'home', '2018-07-11', 'associate');
INSERT INTO employee VALUES (14, 'Ava', 'Richardson', '444 Sycamore Ln', 'Bowie', 'MD', 20715, 'Unit 8', 4105550114, 'mobile', '2022-09-26', 'partner');
INSERT INTO employee VALUES (15, 'Benjamin', 'Flores', '555 Hickory Rd', 'Bel Air', 'MD', 21014, NULL, 4105550115, 'work', '2017-03-05', 'associate');
INSERT INTO employee VALUES (16, 'Mia', 'Sanders', '666 Poplar St', 'Westminster', 'MD', 21157, 'Apt 2A', 4105550116, 'mobile', '2024-01-08', 'associate');
INSERT INTO employee VALUES (17, 'Daniel', 'Price', '777 Chestnut Blvd', 'Owings Mills', 'MD', 21117, NULL, 4105550117, 'home', '2016-11-19', 'partner');

-- # Owners (6, one per property group)
INSERT INTO owner (first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id) VALUES ('Robert', 'Walsh', '10 Harbor View', 'Baltimore', 'MD', 21202, NULL, 4435550201, 'mobile', 2);
INSERT INTO owner (first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id) VALUES ('Linda', 'Chen', '20 Sunset Blvd', 'Towson', 'MD', 21204, 'Apt 8', 4435550202, 'home', 3);
INSERT INTO owner (first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id) VALUES ('George', 'Okafor', '30 Ridgeline Rd', 'Catonsville', 'MD', 21228, NULL, 4435550203, 'mobile', 5);
INSERT INTO owner (first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id) VALUES ('Angela', 'Morris', '40 Commerce Way', 'Ellicott City', 'MD', 21043, 'Ste 100', 4435550204, 'work', 2);
INSERT INTO owner (first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id) VALUES ('Steven', 'Park', '50 Industrial Pkwy', 'Columbia', 'MD', 21044, NULL, 4435550205, 'mobile', 3);
INSERT INTO owner (first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id) VALUES ('Diane', 'Foster', '60 Lakeview Ct', 'Annapolis', 'MD', 21401, NULL, 4435550206, 'home', 5);
-- # Owners (additional entries)
INSERT INTO owner 
(first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id)
VALUES 
('Karen', 'Douglas', '70 Greenway Dr', 'Frederick', 'MD', 21701, NULL, 4435550207, 'mobile', 9);
INSERT INTO owner 
(first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id)
VALUES 
('Miguel', 'Santos', '80 Brookside Ave', 'Glen Burnie', 'MD', 21061, 'Unit 4C', 4435550208, 'home', 11);
INSERT INTO owner 
(first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id)
VALUES 
('Rachel', 'Bennett', '90 Highland Rd', 'Silver Spring', 'MD', 20901, NULL, 4435550209, 'mobile', 14);
INSERT INTO owner 
(first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id)
VALUES 
('Thomas', 'Greene', '100 River Park', 'Rockville', 'MD', 20850, 'Suite 12', 4435550210, 'work', 17);
INSERT INTO owner 
(first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id)
VALUES 
('Vanessa', 'Coleman', '110 Meadow Ln', 'Laurel', 'MD', 20707, NULL, 4435550211, 'mobile', 9);
INSERT INTO owner 
(first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id)
VALUES 
('Henry', 'Evans', '120 Forest Hill Rd', 'Dundalk', 'MD', 21222, NULL, 4435550212, 'home', 11);
INSERT INTO owner 
(first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id)
VALUES 
('Melissa', 'Ward', '130 Orchard Ct', 'Bowie', 'MD', 20715, 'Apt 9', 4435550213, 'mobile', 14);
INSERT INTO owner 
(first, last, street, city, state, zipcode, unit, pNumber, pType, partner_id)
VALUES 
('Andrew', 'Russell', '140 Valley View', 'Bel Air', 'MD', 21014, NULL, 4435550214, 'work', 17);

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
-- # Clients (13-24)
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Marcus', 'Hayes', '13 Ridgeline Ave', 'Baltimore', 'MD', 21211, NULL, 4105560313, 'mobile', 'residential, 2bed, pet-friendly', 1900);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Nina', 'Jacobs', '14 Sundown Rd', 'Towson', 'MD', 21204, 'Apt 2D', 4105560314, 'home', 'residential, 1bed, in-unit laundry', 1350);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Oscar', 'King', '15 Commerce Blvd', 'Columbia', 'MD', 21044, NULL, 4105560315, 'work', 'commercial, open floor plan, parking', 4000);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Petra', 'Lopez', '16 Fernwood Dr', 'Catonsville', 'MD', 21228, 'Unit 6', 4105560316, 'mobile', 'residential, 3bed, garage', 2500);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Quinn', 'Morris', '17 Industrial Pkwy', 'Baltimore', 'MD', 21224, NULL, 4105560317, 'work', 'industrial, loading dock, 3-phase power', 5500);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Rachel', 'Nguyen', '18 Lakeview Ct', 'Ellicott City', 'MD', 21042, NULL, 4105560318, 'mobile', 'residential, 2bed, near transit', 1750);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Samuel', 'Owens', '19 Harbor Rd', 'Annapolis', 'MD', 21403, NULL, 4105560319, 'mobile', 'commercial, storefront, parking', 4500);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Tara', 'Price', '20 Glenwood Way', 'Towson', 'MD', 21286, 'Apt 3A', 4105560320, 'home', 'residential, 1bed, balcony', 1250);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Ulysses', 'Reed', '21 Westport Ave', 'Baltimore', 'MD', 21230, NULL, 4105560321, 'mobile', 'industrial, high ceiling, loading dock', 6500);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Vanessa', 'Stone', '22 Orchard Ln', 'Columbia', 'MD', 21045, NULL, 4105560322, 'mobile', 'residential, 2bed, yard', 2100);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Walter', 'Tran', '23 Executive Ct', 'Ellicott City', 'MD', 21043, 'Ste 7', 4105560323, 'work', 'commercial, office suite', 3600);
INSERT INTO client (first, last, street, city, state, zipcode, unit, pNumber, pType, preference, rent) VALUES ('Xena', 'Underwood', '24 Bayside Dr', 'Annapolis', 'MD', 21401, NULL, 4105560324, 'mobile', 'residential, 3bed, new construction', 3000);

-- # Properties — 6 Residential (owner 1 & 2)
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('11 Maple St', 'Baltimore', 'MD', 21201, NULL, 2, 1.0, 'residential', 900, 1800, .05, 1, 1, 1);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('12 Oak Ave', 'Towson', 'MD', 21204, 'Apt 2B', 1, 1.0, 'residential', 650, 1350, .06, 1, 1, 4);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('13 Elm Dr', 'Catonsville', 'MD', 21228, NULL, 3, 2.0, 'residential', 1400, 2400, .06, 1, 2, 1);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('14 Cedar Rd', 'Ellicott City', 'MD', 21043, NULL, 2, 1.5, 'residential', 1050, 1600, .05, 0, 2, 4);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('15 Birch Ln', 'Columbia', 'MD', 21044, 'Unit 1', 1, 1.0, 'residential', 700, 1300, .04, 1, 1, 6);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('16 Pine Ct', 'Annapolis', 'MD', 21401, NULL, 3, 2.0, 'residential', 1600, 2800, .05, 1, 2, 6);

-- # Properties — 6 Commercial (owner 3 & 4)
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('21 Commerce Blvd', 'Baltimore', 'MD', 21202, 'Ste A', NULL, 2.0, 'commercial', 2200, 4200, .08, 1, 3, 4);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('22 Market St', 'Towson', 'MD', 21204, NULL, NULL, 1.0, 'commercial', 1800, 3500, .11, 1, 4, 6);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('23 Retail Row', 'Ellicott City', 'MD', 21043, 'Unit B', NULL, 1.0, 'commercial', 1500, 3800, .09, 0, 3, 4);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('24 Business Park Dr', 'Columbia', 'MD', 21044, 'Ste 200', NULL, 2.0, 'commercial', 3000, 5500, .15, 1, 4, 6);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('25 Office Pkwy', 'Annapolis', 'MD', 21401, NULL, NULL, 1.0, 'commercial', 1200, 2800, .12, 1, 3, 4);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('26 Downtown Plaza', 'Baltimore', 'MD', 21201, 'Floor 2', NULL, 2.0, 'commercial', 2600, 4800, .08, 1, 4, 6);

-- # Properties — 6 Industrial (owner 5 & 6)
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('31 Warehouse Way', 'Baltimore', 'MD', 21224, NULL, NULL, 1.0, 'industrial', 8000, 6000, .1, 1, 5, 1);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('32 Freight Rd', 'Catonsville', 'MD', 21228, NULL, NULL, 2.0, 'industrial', 12000, 9000, .09, 0, 6, 7);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('33 Industrial Pkwy', 'Columbia', 'MD', 21044, 'Bay 1', NULL, 1.0, 'industrial', 6500, 5200, .11, 1, 5, 1);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('34 Logistics Blvd', 'Ellicott City', 'MD', 21043, NULL, NULL, 2.0, 'industrial', 15000, 11000, .08, 1, 6, 7);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('35 Distribution Dr', 'Annapolis', 'MD', 21401, 'Unit C', NULL, 1.0, 'industrial', 7200, 6800, .09, 0, 5, 1);
INSERT INTO property (street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id) VALUES ('36 Cargo Ct', 'Towson', 'MD', 21204, NULL, NULL, 1.0, 'industrial', 9500, 7500, .12, 1, 6, 7);

-- # Properties — Additional Properties
-- Managers are ONLY associates added in the new employee insertions:
-- 8, 10, 12, 13, 15, 16
INSERT INTO property
(street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id)
VALUES
('17 Walnut St', 'Frederick', 'MD', 21701, NULL, 2, 1.0, 'industrial', 950, 1850, .05, 1, 7, 8);
INSERT INTO property
(street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id)
VALUES
('18 Spruce Ave', 'Glen Burnie', 'MD', 21061, 'Apt 5A', 1, 1.0, 'commercial', 720, 1400, .04, 1, 8, 10);
INSERT INTO property
(street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id)
VALUES
('19 Willow Rd', 'Silver Spring', 'MD', 20901, NULL, 4, 2.5, 'residential', 1800, 3200, .06, 0, 9, 12);
INSERT INTO property
(street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id)
VALUES
('20 Aspen Ct', 'Rockville', 'MD', 20850, NULL, 3, 2.0, 'residential', 1450, 2550, .05, 1, 10, 13);
INSERT INTO property
(street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id)
VALUES
('21 Dogwood Ln', 'Laurel', 'MD', 20707, 'Unit 3', 2, 1.5, 'residential', 1025, 1750, .05, 1, 11, 15);
INSERT INTO property
(street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id)
VALUES
('22 Magnolia Blvd', 'Dundalk', 'MD', 21222, NULL, 1, 1.0, 'commercial', 680, 1250, .04, 0, 12, 16);
INSERT INTO property
(street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id)
VALUES
('23 Hickory Way', 'Bowie', 'MD', 20715, NULL, 3, 2.0, 'residential', 1500, 2700, .06, 1, 13, 8);
INSERT INTO property
(street, city, state, zipcode, unit, bed, bath, type, footage, rent, fee, ADV, owner_id, manager_id)
VALUES
('24 Chestnut Dr', 'Bel Air', 'MD', 21014, 'Apt 7C', 2, 1.0, 'residential', 980, 1900, .05, 1, 14, 10);

-- # Viewings (12)
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (1, 1, 1, '2024-08-05 10:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (2, 2, 4, '2024-08-06 11:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (3, 4, 1, '2024-08-07 13:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (4, 6, 4, '2024-08-08 14:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (7, 3, 4, '2024-08-09 09:30:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (8, 7, 6, '2024-08-10 15:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (9, 11, 4, '2024-08-12 10:30:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (13, 5, 1, '2024-08-13 11:30:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (14, 9, 7, '2024-08-14 13:30:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (15, 5, 1, '2024-08-15 09:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (5, 8, 6, '2024-08-16 14:30:00');
INSERT INTO viewing (property_id, client_id, employee_id, date) VALUES (10, 12, 6, '2024-08-17 16:00:00');
-- # Additional Viewings (12 new entries)
INSERT INTO viewing (property_id, client_id, employee_id, date)
VALUES (6, 2, 6, '2024-09-01 10:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date)
VALUES (7, 4, 8, '2024-09-01 13:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date)
VALUES (8, 1, 10, '2024-09-02 11:30:00');
INSERT INTO viewing (property_id, client_id, employee_id, date)
VALUES (9, 6, 12, '2024-09-02 15:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date)
VALUES (10, 3, 13, '2024-09-03 09:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date)
VALUES (11, 5, 15, '2024-09-03 14:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date)
VALUES (12, 7, 16, '2024-09-04 10:30:00');
INSERT INTO viewing (property_id, client_id, employee_id, date)
VALUES (13, 8, 8, '2024-09-04 16:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date)
VALUES (14, 9, 10, '2024-09-05 12:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date)
VALUES (15, 10, 15, '2024-09-05 15:30:00');
INSERT INTO viewing (property_id, client_id, employee_id, date)
VALUES (16, 11, 16, '2024-09-06 11:00:00');
INSERT INTO viewing (property_id, client_id, employee_id, date)
VALUES (17, 12, 8, '2024-09-06 14:30:00');

-- # Leases (6)
INSERT INTO lease (client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, deposit) VALUES (1, 1, 2, 1, '2024-08-20', '2024-09-01', '2025-08-31', 565);
INSERT INTO lease (client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, deposit) VALUES (2, 2, 3, 1, '2024-08-21', '2024-09-01', '2025-08-31', 400);
INSERT INTO lease (client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, deposit) VALUES (3, 8, 5, 4, '2024-08-22', '2024-09-15', '2025-09-14', 600);
INSERT INTO lease (client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, deposit) VALUES (5, 13, 3, 5, '2024-08-23', '2024-10-01', '2025-09-30', 550);
INSERT INTO lease (client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, deposit) VALUES (7, 9, 2, 3, '2024-08-25', '2024-09-01', '2025-08-31', 600);
INSERT INTO lease (client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, deposit) VALUES (4, 3, 5, 2, '2024-08-26', '2024-09-15', '2024-12-15', 500);
-- # Leases (additional entries)
INSERT INTO lease
(client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, deposit)
VALUES
(6, 7, 2, 7, '2024-09-02', '2024-10-01', '2025-09-30', 700);
INSERT INTO lease
(client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, deposit)
VALUES
(8, 10, 3, 10, '2024-09-03', '2024-10-15', '2025-10-14', 800);
INSERT INTO lease
(client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, deposit)
VALUES
(9, 11, 5, 11, '2024-09-05', '2024-11-01', '2025-10-31', 650);
INSERT INTO lease
(client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, deposit)
VALUES
(10, 12, 2, 12, '2024-09-06', '2024-10-01', '2025-09-30', 500);
INSERT INTO lease
(client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, deposit)
VALUES
(11, 14, 3, 14, '2024-09-08', '2024-11-15', '2025-11-14', 750);
INSERT INTO lease
(client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, deposit)
VALUES
(12, 15, 5, 1, '2024-09-10', '2024-10-15', '2025-10-14', 675);
INSERT INTO lease
(client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, deposit)
VALUES
(1, 16, 2, 2, '2024-09-12', '2024-11-01', '2025-10-31', 450);
INSERT INTO lease
(client_id, property_id, partner_id, owner_id, sign_date, start_date, end_date, deposit)
VALUES
(2, 17, 3, 3, '2024-09-15', '2024-12-01', '2025-11-30', 700);

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