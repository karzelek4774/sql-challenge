# sql-challenge

Introduction: 

This assignment utilizes Pandas, MatPlotLib, Jupyter Notebook,  SQL, and SQL Alchemy. Initially the data is imported into into PostgreSQL with aid of a schema. A series of queries help shape the data. Then the data is extracted to Jupyter Notebook for analysis of the data.



Observations/Problems:

I attempted to use a config.py for my password for the SQL Alchemy portion of Jupyter Notebook. Unfortunately, my password failed to authenticate. I believe that this failure may be due to a special character used in the password that python otherwise failed to produce properly. I may test this by changing my password to PostgreSQL at a later date.



Table of Contents:

-EmployeeSQL

​		-Resources

​				-departments.csv: Raw Data

​				-dept_emp.csv: Raw Data

​				-dept_manager.csv: Raw Data

​				-employees.csv: Raw Data

​				-salaries.csv: Raw Data

​				-titles.csv: Raw Data

​		-EmployeeSQL.ipynb: All coding in Jupyter Notebook to complete analysis.

​		-ERD.png: An image of the ERD

​		-ERD.txt: A text layout of the ERD

​		-queries.sql: The queries for PostgreSQL

​		-schema.sql: The schema for PostgreSQL

-README