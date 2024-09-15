# Introduction
**SQL** (Structured Query Language) is a fundamental tool for accessing, managing, and analyzing data stored in relational databases. **SQL** provides a structured approach to querying and manipulating data, which is crucial for drawing meaningful insights from complex datasets.

SQL queries ? [Project_MYSQL folder](/Project_MYSQL/)
# Background
This is one of my projects to showcase my progress in **SQL** and my improvement to solve complex queries 

### The questions I wanted to answer through my SQL queries were:

1. Print details of shipments (sales) where amounts are > 2,000 and boxes are <100?
2. How many shipments (sales) each of the sales persons had in the month of January 2022?
3. Which product sells more boxes? Milk Bars or Eclairs?
4. Which product sold more boxes in the first 7 days of February 2022? Milk Bars or Eclairs?
5. Which shipments had under 100 customers & under 100 boxes? Did any of them occur on Wednesday?
6. What are the names of salespersons who had at least one shipment (sale) in the first 7 days of January 2022?
7. Which salespersons did not make any shipments in the first 7 days of January 2022?
8. How many times we shipped more than 1,000 boxes in each month?
9. Did we ship at least one box of 'After Nines' to 'New Zealand' on all the months?
10. India or Australia? Who buys more chocolate boxes on a monthly basis?

# Tools I Used
- SQL

- MySQL

- Visual Studio Code

- Git & Github
# The Analysis
These queries collectively aim to help me enhance my SQL skills as they include a whole lot of complex CRUD, functions, logical operators and many more queries.

Here's how I approached one of the question:
### 5. Find the top 5 customers with the most number of transactions
```sql
SELECT 
    product,
    SUM(boxes) AS total_boxes
FROM sales
JOIN products
ON sales.pid = products.pid
WHERE product = 'eclairs' 
OR product = 'milk bars'
GROUP BY product
ORDER BY total_boxes DESC;
````
- Eclairs sold the most boxes

# Conclusion

Overall, this project underscores the importance of SQL in the data analytics field and provides valuable insights for navigating career development and opportunities within this dynamic industry. Not only did I enchance my SQL skills but I learned new skills along the way which will be detrimental for the career I am trying to pursuit .