/*
QUESTION 6 : What are the names of salespersons who had at least one shipment (sale) in the first 7 days of January 2022?
*/

SELECT 
    Salesperson, 
    count(*) as no_of_sales
FROM people
JOIN sales
ON sales.spid = people.spid
WHERE SaleDate BETWEEN '2022-01-01' AND '2022-01-07'
GROUP BY Salesperson;


/*

- RESULTS

[
  {
    "Salesperson": "Kelci Walkden",
    "no_of_sales": "11"
  },
  {
    "Salesperson": "Van Tuxwell",
    "no_of_sales": "14"
  },
  {
    "Salesperson": "Beverie Moffet",
    "no_of_sales": "7"
  },
  {
    "Salesperson": "Dotty Strutley",
    "no_of_sales": "9"
  },
  {
    "Salesperson": "Gigi Bohling",
    "no_of_sales": "5"
  },
  {
    "Salesperson": "Roddy Speechley",
    "no_of_sales": "15"
  },
  {
    "Salesperson": "Marney O'Breen",
    "no_of_sales": "8"
  },
  {
    "Salesperson": "Karlen McCaffrey",
    "no_of_sales": "14"
  },
  {
    "Salesperson": "Dennison Crosswaite",
    "no_of_sales": "6"
  },
  {
    "Salesperson": "Mallorie Waber",
    "no_of_sales": "8"
  },
  {
    "Salesperson": "Madelene Upcott",
    "no_of_sales": "8"
  },
  {
    "Salesperson": "Andria Kimpton",
    "no_of_sales": "9"
  },
  {
    "Salesperson": "Jehu Rudeforth",
    "no_of_sales": "12"
  },
  {
    "Salesperson": "Oby Sorrel",
    "no_of_sales": "8"
  },
  {
    "Salesperson": "Husein Augar",
    "no_of_sales": "7"
  },
  {
    "Salesperson": "Ches Bonnell",
    "no_of_sales": "8"
  },
  {
    "Salesperson": "Wilone O'Kielt",
    "no_of_sales": "5"
  },
  {
    "Salesperson": "Barr Faughny",
    "no_of_sales": "9"
  },
  {
    "Salesperson": "Jan Morforth",
    "no_of_sales": "8"
  },
  {
    "Salesperson": "Brien Boise",
    "no_of_sales": "7"
  },
  {
    "Salesperson": "Gunar Cockshoot",
    "no_of_sales": "9"
  },
  {
    "Salesperson": "Rafaelita Blaksland",
    "no_of_sales": "2"
  },
  {
    "Salesperson": "Curtice Advani",
    "no_of_sales": "8"
  },
  {
    "Salesperson": "Camilla Castle",
    "no_of_sales": "7"
  },
  {
    "Salesperson": "Kaine Padly",
    "no_of_sales": "3"
  }
]

*/