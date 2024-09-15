/*
QUESTION 10 : India or Australia? Who buys more chocolate boxes on a monthly basis?
*/

SELECT 
  YEAR(saledate) AS YEAR , 
  MONTH(saledate) AS MONTH,
  SUM(CASE WHEN geo.Geo = 'India' = 1 THEN boxes ELSE 0 END) India_Boxes,
  SUM(CASE WHEN geo.Geo = 'Australia' = 1 THEN boxes ELSE 0 END) Australia_Boxes
FROM sales
JOIN geo on geo.GeoID = sales.GeoID
GROUP BY YEAR, MONTH WITH ROLLUP
ORDER BY YEAR, MONTH;


/*

- India sold more boxes

- RESULTS

[
  {
    "YEAR": null,
    "MONTH": null,
    "India_Boxes": "490374",
    "Australia_Boxes": "482536"
  },
  {
    "YEAR": 2021,
    "MONTH": null,
    "India_Boxes": "368831",
    "Australia_Boxes": "368051"
  },
  {
    "YEAR": 2021,
    "MONTH": 1,
    "India_Boxes": "23937",
    "Australia_Boxes": "25210"
  },
  {
    "YEAR": 2021,
    "MONTH": 2,
    "India_Boxes": "39717",
    "Australia_Boxes": "27961"
  },
  {
    "YEAR": 2021,
    "MONTH": 3,
    "India_Boxes": "39787",
    "Australia_Boxes": "28123"
  },
  {
    "YEAR": 2021,
    "MONTH": 4,
    "India_Boxes": "22514",
    "Australia_Boxes": "35261"
  },
  {
    "YEAR": 2021,
    "MONTH": 5,
    "India_Boxes": "27531",
    "Australia_Boxes": "32213"
  },
  {
    "YEAR": 2021,
    "MONTH": 6,
    "India_Boxes": "26518",
    "Australia_Boxes": "29585"
  },
  {
    "YEAR": 2021,
    "MONTH": 7,
    "India_Boxes": "18924",
    "Australia_Boxes": "29310"
  },
  {
    "YEAR": 2021,
    "MONTH": 8,
    "India_Boxes": "35982",
    "Australia_Boxes": "33296"
  },
  {
    "YEAR": 2021,
    "MONTH": 9,
    "India_Boxes": "27738",
    "Australia_Boxes": "24832"
  },
  {
    "YEAR": 2021,
    "MONTH": 10,
    "India_Boxes": "32084",
    "Australia_Boxes": "33218"
  },
  {
    "YEAR": 2021,
    "MONTH": 11,
    "India_Boxes": "40038",
    "Australia_Boxes": "36449"
  },
  {
    "YEAR": 2021,
    "MONTH": 12,
    "India_Boxes": "34061",
    "Australia_Boxes": "32593"
  },
  {
    "YEAR": 2022,
    "MONTH": null,
    "India_Boxes": "121543",
    "Australia_Boxes": "114485"
  },
  {
    "YEAR": 2022,
    "MONTH": 1,
    "India_Boxes": "67665",
    "Australia_Boxes": "66647"
  },
  {
    "YEAR": 2022,
    "MONTH": 2,
    "India_Boxes": "20995",
    "Australia_Boxes": "21467"
  },
  {
    "YEAR": 2022,
    "MONTH": 3,
    "India_Boxes": "32883",
    "Australia_Boxes": "26371"
  }
]

*/