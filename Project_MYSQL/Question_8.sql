/*
QUESTION 8 : How many times we shipped more than 1,000 boxes in each month?
*/

SELECT 
    YEAR(saledate) as year, 
    MONTH(saledate) as month, 
    COUNT(*) AS no_of_1k_sales
FROM sales
WHERE boxes > 1000
GROUP BY year, month
ORDER BY year, month;


/*

- RESULTS

[
  {
    "year": 2021,
    "month": 1,
    "no_of_1k_sales": "18"
  },
  {
    "year": 2021,
    "month": 2,
    "no_of_1k_sales": "23"
  },
  {
    "year": 2021,
    "month": 3,
    "no_of_1k_sales": "32"
  },
  {
    "year": 2021,
    "month": 4,
    "no_of_1k_sales": "27"
  },
  {
    "year": 2021,
    "month": 5,
    "no_of_1k_sales": "15"
  },
  {
    "year": 2021,
    "month": 6,
    "no_of_1k_sales": "26"
  },
  {
    "year": 2021,
    "month": 7,
    "no_of_1k_sales": "21"
  },
  {
    "year": 2021,
    "month": 8,
    "no_of_1k_sales": "27"
  },
  {
    "year": 2021,
    "month": 9,
    "no_of_1k_sales": "19"
  },
  {
    "year": 2021,
    "month": 10,
    "no_of_1k_sales": "31"
  },
  {
    "year": 2021,
    "month": 11,
    "no_of_1k_sales": "27"
  },
  {
    "year": 2021,
    "month": 12,
    "no_of_1k_sales": "22"
  },
  {
    "year": 2022,
    "month": 1,
    "no_of_1k_sales": "88"
  },
  {
    "year": 2022,
    "month": 2,
    "no_of_1k_sales": "38"
  },
  {
    "year": 2022,
    "month": 3,
    "no_of_1k_sales": "36"
  }
]

*/