# EmployeeSQL Database Analysis

## Overview

This project involves designing and analyzing a relational database for employee data. It focuses on **data modeling**, **data engineering**, and **data analysis**. The goal is to create a robust SQL database that supports complex queries, allowing for detailed analysis of employee-related information.

---
## Project Structure

1. **Repository Setup**:
   - A new repository named `sql-challenge` was created to host the project.
   - All project files are organized under the directory `EmployeeSQL` within the repository.

2. **Files Included**:
   - Database schema SQL script. (In the EmployeeSQL folder)
   - Queries for analysis tasks. (In the EmployeeSQL folder)
   - Entity Relationship Diagram (ERD) sketch. (In the Data Modeling folder)
   - CSV files containing employee data. (In the Data folder)

---

## Instructions

### 1. **Data Modeling**
   - Inspect the provided CSV files to identify tables, columns, and relationships.
   - Create an **Entity Relationship Diagram (ERD)** to visualize the structure of the database, including:
     - Tables and their attributes.
     - Primary and foreign key relationships.

### 2. **Data Engineering**
   - Define the schema for the database by creating SQL tables for the six provided datasets.
   - Ensure:
     - Data types are appropriately assigned.
     - Primary and foreign keys are clearly defined.
     - Composite keys are used where necessary for unique identification.
   - Import the CSV data into the respective SQL tables after creating the schema.

### 3. **Data Analysis**
   - Execute SQL queries to answer the following questions:
     1. **Employee Details**: List employee number, last name, first name, sex, and salary for all employees.
     2. **Hired in 1986**: List first name, last name, and hire date of employees hired in 1986.
     3. **Department Managers**: List manager details for each department (department number, department name, employee number, last name, and first name).
     4. **Employee Departments**: List department number, employee number, last name, first name, and department name for all employees.
     5. **Hercules B**: List first name, last name, and sex of employees whose first name is "Hercules" and whose last name starts with "B."
     6. **Sales Employees**: List employee number, last name, and first name of all employees in the Sales department.
     7. **Sales and Development Employees**: List employee details (number, name, and department) for those in the Sales and Development departments.
     8. **Last Name Frequency**: Count and sort employee last names by frequency in descending order.

---
