/*
QUESTION : Which salespersons did not make any shipments in the first 7 days of January 2022?
*/

SELECT 
    Salesperson
FROM people
WHERE people.spid NOT IN (
SELECT 
    DISTINCT spid 
FROM sales 
WHERE saledate BETWEEN '2022-01-01' AND '2022-01-07' );


/*

- RESULTS

[
  {
    "Salesperson": "Janene Hairsine"
  },
  {
    "Salesperson": "Niall Selesnick"
  },
  {
    "Salesperson": "Ebonee Roxburgh"
  },
  {
    "Salesperson": "Zach Polon"
  },
  {
    "Salesperson": "Orton Livick"
  },
  {
    "Salesperson": "Gray Seamon"
  },
  {
    "Salesperson": "Benny Karolovsky"
  },
  {
    "Salesperson": "Dyna Doucette"
  }
]

*/