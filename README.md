# Snowflake vs Star Schema in DuckDB

## Overview
This project compares snowflake and star schema designs using DuckDB.
The same sales data is modeled in both schemas and queried to evaluate
query complexity, readability, and analytical performance.

## Tech Stack
- DuckDB
- SQL
- Python
- Jupyter Notebook

## Schemas Compared

### Snowflake Schema
- Normalized dimensions
- Multiple joins required for analysis
- Reduced data redundancy

### Star Schema
- Denormalized dimensions
- Fewer joins
- Optimized for analytical queries

Both schemas represent identical business concepts and data. Based on a guided DataCamp project, with additional restructuring and implementation.
