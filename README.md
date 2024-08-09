# Building-Sales-Data-Mart-Using-SSIS


## Introduction

This project focuses on building a Sales Data Mart for an AdventureWorks2019 (OLTP data) database. The process involves creating a star schema, transforming the data, and loading it into dimension and fact tables. The project also implements full, incremental, and slow-changing dimension (SCD) loading techniques.

## Data Mart Overview

A Data Mart is a subject-oriented database, often a partitioned segment of an enterprise data warehouse. It is designed to support business decision-making by providing a simplified view of a specific business process or department.

## Data Source

The data is extracted from the AdventureWorks2019 database, a Microsoft sample database used for demonstrating the capabilities of SQL Server.

## ETL Process

### 1. Extract

Data is extracted from the source AdventureWorks2019 database, focusing on new and updated records.

### 2. Transform

The extracted data is cleaned and transformed to fit the star schema structure, including handling null values, formatting, and applying business rules.

### 3. Load

The transformed data is loaded into the dimension and fact tables in the star schema. The process includes:

- **Full Load:** Refreshing entire tables with the latest data.
- **Incremental Load:** Inserting or updating only new or changed records.
- **Slowly Changing Dimensions (SCD):** Handling changes in dimension data over time.

## Star Schema

The star schema consists of dimension tables (e.g., Product, Customer, Time) and a fact table (e.g., Sales Fact). The dimension tables are linked to the fact table via foreign keys, allowing for efficient querying and reporting.

## Loading Techniques

### Full Load
A full load completely refreshes the target tables with the latest data from the source.

### Incremental Load
An incremental load updates only the records that have changed since the last load.

### SCD (Slowly Changing Dimension)
SCD handles historical changes in dimension data. The project implements SCD Type 2, which keeps a full history of changes.

## Conclusion

This project demonstrates the creation of a Sales Data Mart using data from the AdventureWorks2019 database. The ETL process ensures that the data is accurately and efficiently transformed and loaded into a star schema, supporting business decision-making and reporting.

## Requirements

- SQL Server or any compatible RDBMS
- Access to the AdventureWorks2019 database
- SSIS
