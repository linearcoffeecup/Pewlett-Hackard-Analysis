# Pewlett-Hackard-Analysis

## Overview

This project is an exercise in assessing the staffing needs of Pewlett-Hackard.  It is a large company with 300,024 employees (as counted in the employees database).  It was desired to see how many employees were retirement-ready, and, for future new employees, how many current employees were ready to serve as mentors.  The categories of ready-to-retire and mentor-eligible were based on age (birth_date in the databases).  Potential mentors were considered about 10 years younger than the retirement-ready employees.

Databases and input files (.csv format) were created and analyzed using pgAdmin4 version 5.5.  The database queries found (1) the count of retirement-ready employees, (2) the count of mentor-eligible employees, and other queries to help with the analysis.  In performing such counts it was necessary to ensure the accuracy of the count due to multiplicity of some data in certain columns.  Since the primary key column is in a one-to-one relation with the table rows, the focus is on other columns to avoid overcounting.  The code which was used for this purpose was the DISTINCT ON() and the ORDER BY commands.  Ensuring easy-to-read results is also important and this was addressed by using aliases for
column headers as needed.

The created .csv files and the queries for this project can be found in Analysis Project Folder/Pewlet-Hackard Analysis Folder under the Data and Queries folders. Analyses of results are given below.

## Results

Based on the results, the following observations are made:

- Senior staff will be retiring which should be addressed in terms of retaining corporate knowledge.

- The staff retirement-ready possess engineering knowledge.  There are only 24 managers counted in the dept_manager database so this is a potential large retirement of technical staff to be replaced.

- Plan on a phased-out retirement rate.

- Consider an entry-level internship program with paid training for replacement staff.

## Summary

1. How many roles needs to be filled as the "silver tsunami" begins to make an impact?

There are 90,398 retirement-age staff.  This was found by counting the number of employees in the unique_table database.

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett-Hackard employees?

There are 1,549 mentor-age staff.  This was found by counting the number of employees in the mentorship_elgibility database.  Due to a shortage of mentors other means to address the future retirements should be considered.
