-- # Create entity tables
CREATE TABLE IF NOT EXISTS employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first VARCHAR(50),
    last VARCHAR(50),
    street VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    zipcode INT,
    unit VARCHAR(50),
    pNumber BIGINT,
    pType VARCHAR(10),
    hired DATETIME,
    role VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS owner (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first VARCHAR(50),
    last VARCHAR(50),
    street VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    zipcode INT,
    unit VARCHAR(50),
    pNumber BIGINT,
    pType VARCHAR(10),
    partner_id INT NOT NULL,
    FOREIGN KEY (partner_id) REFERENCES employee(id)
);

CREATE TABLE IF NOT EXISTS client (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first VARCHAR(50),
    last VARCHAR(50),
    street VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    zipcode INT,
    unit VARCHAR(50),
    pNumber BIGINT,
    pType VARCHAR(10),
    preference VARCHAR(200),
    rent INT
);

CREATE TABLE IF NOT EXISTS property (
    id INT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    zipcode INT,
    unit VARCHAR(50),
    bed INT,
    bath FLOAT,
    type VARCHAR(50),
    footage INT,
    rent INT,
    fee INT,
    ADV TINYINT(1),
    owner_id INT NOT NULL,
    manager_id INT NOT NULL,
    FOREIGN KEY (owner_id) REFERENCES owner(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id)
);

CREATE TABLE IF NOT EXISTS viewing (
    id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    client_id INT NOT NULL,
    employee_id INT NOT NULL,
    date DATETIME,
    FOREIGN KEY (property_id) REFERENCES property(id),
    FOREIGN KEY (client_id) REFERENCES client(id),
    FOREIGN KEY (employee_id) REFERENCES employee(id)
);

CREATE TABLE IF NOT EXISTS lease (
    id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT NOT NULL,
    property_id INT NOT NULL,
    partner_id INT NOT NULL,
    owner_id INT NOT NULL,
    sign_date DATETIME NOT NULL,
    start_date DATETIME NOT NULL,
    end_date DATETIME,
    rent INT,
    FOREIGN KEY (client_id) REFERENCES client(id),
    FOREIGN KEY (property_id) REFERENCES property(id),
    FOREIGN KEY (partner_id) REFERENCES employee(id),
    FOREIGN KEY (owner_id) REFERENCES owner(id)
);

CREATE TABLE IF NOT EXISTS emp_emails(
    email VARCHAR(50) PRIMARY KEY,
    person INT,
    FOREIGN KEY (person) REFERENCES employee(id)
);

CREATE TABLE IF NOT EXISTS own_emails(
    email VARCHAR(50) PRIMARY KEY,
    person INT,
    FOREIGN KEY (person) REFERENCES owner(id)
);

CREATE TABLE IF NOT EXISTS cli_emails(
    email VARCHAR(50) PRIMARY KEY,
    person INT,
    FOREIGN KEY (person) REFERENCES client(id)
);

-- Create tables first (assuming the earlier table definitions are already created)

-- Create triggers without DELIMITER (not needed in Jupyter SQL cells)

-- Trigger function to enforce max references to associates
CREATE TRIGGER IF NOT EXISTS trg_limit_associate_properties
BEFORE INSERT ON property
FOR EACH ROW
BEGIN
    IF (SELECT COUNT(*) FROM property WHERE manager_id = NEW.manager_id) >= 5 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Associate already has maximum allowed properties';
    END IF;
END;

-- Create a separate trigger for UPDATE if needed
CREATE TRIGGER IF NOT EXISTS trg_limit_associate_properties_update
BEFORE UPDATE ON property
FOR EACH ROW
BEGIN
    IF NEW.manager_id <> OLD.manager_id THEN
        IF (SELECT COUNT(*) FROM property WHERE manager_id = NEW.manager_id) >= 5 THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Associate already has maximum allowed properties';
        END IF;
    END IF;
END;

-- Trigger to update ADV status based on lease creation
CREATE TRIGGER IF NOT EXISTS trg_update_adv_status
AFTER INSERT ON lease
FOR EACH ROW
BEGIN
    UPDATE property
    SET ADV = 0
    WHERE id = NEW.property_id;
END;