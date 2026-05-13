-- # Delete Triggers
DROP TRIGGER IF EXISTS trg_limit_associate_properties;
DROP TRIGGER IF EXISTS trg_limit_associate_properties_update;
DROP TRIGGER IF EXISTS trg_update_adv_status;
DROP TRIGGER IF EXISTS enforce_min_lease_length;
DROP TRIGGER IF EXISTS trg_max_lease_length;
DROP TRIGGER IF EXISTS set_lease_owner;

-- # Delete Tables
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS emp_emails;
DROP TABLE IF EXISTS own_emails;
DROP TABLE IF EXISTS cli_emails;
DROP TABLE IF EXISTS lease;
DROP TABLE IF EXISTS viewing;
DROP TABLE IF EXISTS property;
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS owner;
DROP TABLE IF EXISTS employee;
SET FOREIGN_KEY_CHECKS = 1;