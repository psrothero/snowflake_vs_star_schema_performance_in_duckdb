-- Create schema
CREATE SCHEMA IF NOT EXISTS star;

-- Companies dimension (denormalized location attributes)
CREATE TABLE IF NOT EXISTS star.companies (
    company_id INTEGER PRIMARY KEY,
    company_name VARCHAR,
    zipcode VARCHAR,
    city VARCHAR,
    state VARCHAR
);

-- Fact table
CREATE TABLE IF NOT EXISTS star.workstation_sales (
    sale_id INTEGER PRIMARY KEY,
    company_id INTEGER,
    sales DOUBLE
);
