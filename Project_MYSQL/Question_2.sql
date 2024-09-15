/*
QUESTION 2 : How many shipments (sales) each of the sales persons had in the month of January 2022?
*/

SELECT 
    spid, count(*) as no_of_sales
FROM sales
WHERE saledate BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY spid
ORDER BY spid;


/*

- RESULTS

[
  {
    "spid": "SP01",
    "no_of_sales": "31"
  },
  {
    "spid": "SP02",
    "no_of_sales": "35"
  },
  {
    "spid": "SP03",
    "no_of_sales": "44"
  },
  {
    "spid": "SP04",
    "no_of_sales": "38"
  },
  {
    "spid": "SP05",
    "no_of_sales": "36"
  },
  {
    "spid": "SP06",
    "no_of_sales": "30"
  },
  {
    "spid": "SP07",
    "no_of_sales": "24"
  },
  {
    "spid": "SP08",
    "no_of_sales": "38"
  },
  {
    "spid": "SP09",
    "no_of_sales": "40"
  },
  {
    "spid": "SP10",
    "no_of_sales": "39"
  },
  {
    "spid": "SP11",
    "no_of_sales": "23"
  },
  {
    "spid": "SP12",
    "no_of_sales": "44"
  },
  {
    "spid": "SP13",
    "no_of_sales": "28"
  },
  {
    "spid": "SP14",
    "no_of_sales": "35"
  },
  {
    "spid": "SP15",
    "no_of_sales": "44"
  },
  {
    "spid": "SP16",
    "no_of_sales": "32"
  },
  {
    "spid": "SP17",
    "no_of_sales": "34"
  },
  {
    "spid": "SP18",
    "no_of_sales": "38"
  },
  {
    "spid": "SP19",
    "no_of_sales": "36"
  },
  {
    "spid": "SP20",
    "no_of_sales": "27"
  },
  {
    "spid": "SP21",
    "no_of_sales": "35"
  },
  {
    "spid": "SP22",
    "no_of_sales": "36"
  },
  {
    "spid": "SP23",
    "no_of_sales": "43"
  },
  {
    "spid": "SP24",
    "no_of_sales": "47"
  },
  {
    "spid": "SP25",
    "no_of_sales": "31"
  }
]

*/