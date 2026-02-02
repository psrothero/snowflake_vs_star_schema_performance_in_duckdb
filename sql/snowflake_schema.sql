-- Create schema
CREATE SCHEMA IF NOT EXISTS snow;

-- Companies (no location attributes here)
CREATE TABLE IF NOT EXISTS snow.companies (
    company_id INTEGER PRIMARY KEY,
    company_name VARCHAR,
    location_id INTEGER
);

-- Locations broken out (normalized)
CREATE TABLE IF NOT EXISTS snow.locations (
    location_id INTEGER PRIMARY KEY,
    zipcode VARCHAR,
    city VARCHAR,
    state VARCHAR
);

-- Fact table
CREATE TABLE IF NOT EXISTS snow.workstation_sales (
    sale_id INTEGER PRIMARY KEY,
    company_id INTEGER,
    sales DOUBLE
);
