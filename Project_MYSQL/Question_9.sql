/*
QUESTION 9 : Did we ship at least one box of 'After Nines' to 'New Zealand' on all the months?
*/

SELECT 
    YEAR(saledate) as year, 
    MONTH(saledate) as month, 
    COUNT(*) AS no_of_sales 
FROM products
JOIN sales
ON sales.pid = products.pid
JOIN geo
ON geo.geoid = sales.geoid
WHERE product = 'After Nines'
AND geo = 'New Zealand'
GROUP BY year, month
ORDER BY year, month;


/*

- Yes, at least one box of 'After Nines' has been shipped to New Zealand

- RESULTS

[
  {
    "year": 2021,
    "month": 1,
    "no_of_sales": "7"
  },
  {
    "year": 2021,
    "month": 2,
    "no_of_sales": "4"
  },
  {
    "year": 2021,
    "month": 3,
    "no_of_sales": "4"
  },
  {
    "year": 2021,
    "month": 4,
    "no_of_sales": "1"
  },
  {
    "year": 2021,
    "month": 5,
    "no_of_sales": "4"
  },
  {
    "year": 2021,
    "month": 6,
    "no_of_sales": "6"
  },
  {
    "year": 2021,
    "month": 7,
    "no_of_sales": "3"
  },
  {
    "year": 2021,
    "month": 8,
    "no_of_sales": "3"
  },
  {
    "year": 2021,
    "month": 9,
    "no_of_sales": "3"
  },
  {
    "year": 2021,
    "month": 10,
    "no_of_sales": "5"
  },
  {
    "year": 2021,
    "month": 11,
    "no_of_sales": "4"
  },
  {
    "year": 2021,
    "month": 12,
    "no_of_sales": "3"
  },
  {
    "year": 2022,
    "month": 1,
    "no_of_sales": "8"
  },
  {
    "year": 2022,
    "month": 2,
    "no_of_sales": "5"
  },
  {
    "year": 2022,
    "month": 3,
    "no_of_sales": "3"
  }
]

*/