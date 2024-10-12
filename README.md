# USDA SQL Queries

This repository contains SQL queries and their corresponding results using datasets sourced from the United States Department of Agriculture's (USDA) open data portal. The datasets are about the production of goods in each state over the years, specifically: cheese, coffee, eggs, honey, milk, and yogurt.

The full dataframes are located in the **Dataframes** folder, the SQL queries I did are located in the **SQL Queries** folder, and the corresponding results are in the **SQL Results** folder. Furthermore, a screenshot of the ER diagrams can be found in the main branch.

I've included a comment at the beginning of each .sql file outlining the question I aimed to answer. For convenience, here are the questions:

1) Find states where both honey and milk were produced in 2022. Did State_ANSI "35" produce both honey and milk in 2022?

2) Find the total yogurt production for states that also produced cheese in 2022.

3) Which states had cheese production greater than 100 million in April 2023?

4) List all states with their cheese production values, even if they didn't produce any, in April 2023.

5) List all states from state_lookup that are missing from milk_production in 2023.

I got the ideas for the queries from a Coursera course titled **SQL for Data Science**, which can be found using the following URL: 

https://www.coursera.org/learn/sql-for-data-science?specialization=learn-sql-basics-data-science

(I decided to take the free version of the course, so, unfortunately, I do not have a certificate of completion.)
