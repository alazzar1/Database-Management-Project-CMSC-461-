-- # Create entity tables
CREATE TABLE IF NOT EXISTS employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first VARCHAR(50),
    last VARCHAR(50),
    street VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    zipcode INTEGER,
    unit VARCHAR(50),
    pNumber INTEGER,
    pType VARCHAR(10),
    hired DATETIME,
    role VARCHAR(10) NOT NULL
);
CREATE TABLE IF NOT EXISTS owner (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first VARCHAR(50),
    last VARCHAR(50),
    street VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    zipcode INTEGER,
    unit VARCHAR(50),
    pNumber INTEGER,
    pType VARCHAR(10),
    partner_id INTEGER NOT NULL,
    FOREIGN KEY (partner_id) REFERENCES employee(id)
);
CREATE TABLE IF NOT EXISTS client (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first VARCHAR(50),
    last VARCHAR(50),
    street VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    zipcode INTEGER,
    unit VARCHAR(50),
    pNumber INTEGER,
    pType VARCHAR(10),
    preference VARCHAR(200),
    rent INTEGER
);
CREATE TABLE IF NOT EXISTS property (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    street VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    zipcode INTEGER,
    unit VARCHAR(50),
    bed INTEGER,
    bath FLOAT,
    type VARCHAR(50),
    footage INTEGER,
    rent INTEGER,
    fee INTEGER,
    ADV TINYINT(1),
    owner_id INTEGER NOT NULL,
    manager_id INTEGER NOT NULL,
    FOREIGN KEY (owner_id) REFERENCES owner(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id)
);
CREATE TABLE IF NOT EXISTS viewing (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    property_id INTEGER NOT NULL,
    client_id INTEGER NOT NULL,
    employee_id INTEGER NOT NULL,
    date DATETIME,
    FOREIGN KEY (property_id) REFERENCES property(id),
    FOREIGN KEY (client_id) REFERENCES client(id),
    FOREIGN KEY (employee_id) REFERENCES employee(id)
);
CREATE TABLE IF NOT EXISTS lease (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    client_id INTEGER NOT NULL,
    property_id INTEGER NOT NULL,
    partner_id INTEGER NOT NULL,
    owner_id INTEGER NOT NULL,
    sign_date DATETIME NOT NULL,
    start_date DATETIME NOT NULL,
    end_date DATETIME,
    rent INTEGER,
    FOREIGN KEY (client_id) REFERENCES client(id),
    FOREIGN KEY (property_id) REFERENCES property(id),
    FOREIGN KEY (partner_id) REFERENCES employee(id),
    FOREIGN KEY (owner_id) REFERENCES owner(id)
);
CREATE TABLE IF NOT EXISTS emp_emails(
    email VARCHAR(50) PRIMARY KEY,
    person INTEGER,
    FOREIGN KEY (person) REFERENCES employee(id)
);
CREATE TABLE IF NOT EXISTS own_emails(
    email VARCHAR(50) PRIMARY KEY,
    person INTEGER,
    FOREIGN KEY (person) REFERENCES owner(id)
);
CREATE TABLE IF NOT EXISTS cli_emails(
    email VARCHAR(50) PRIMARY KEY,
    person INTEGER,
    FOREIGN KEY (person) REFERENCES client(id)
);

-- # Trigger function to enforce max references to associates
CREATE TRIGGER trg_limit_associate_properties
BEFORE INSERT ON property
BEGIN
    IF (SELECT COUNT(*) FROM property WHERE manager_id = NEW.manager_id) >= 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Associate already has maximum allowed properties';
    END IF;
END;

-- # Create a separate trigger for UPDATE if needed
CREATE TRIGGER trg_limit_associate_properties_update
BEFORE UPDATE ON property
BEGIN
    IF (SELECT COUNT(*) FROM property WHERE manager_id = NEW.manager_id) >= 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Associate already has maximum allowed properties';
    END IF;
END;

-- # Trigger to update ADV status based on lease creation
CREATE TRIGGER trg_update_adv_status
AFTER INSERT ON lease
BEGIN
    UPDATE property
    SET ADV = 0
    WHERE id = NEW.property_id;
END;