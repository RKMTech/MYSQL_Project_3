/*
QUESTION 1 : Print details of shipments (sales) where amounts are > 2,000 and boxes are <100?
- Only show 20 results
*/

SELECT 
    * 
FROM sales
WHERE amount > 2000
AND boxes < 100 
LIMIT 20;


/*

- RESULTS

[
  {
    "SPID": "SP19",
    "GeoID": "G3",
    "PID": "P10",
    "SaleDate": "2021-01-01 00:00:00",
    "Amount": 2387,
    "Customers": 134,
    "Boxes": 89
  },
  {
    "SPID": "SP11",
    "GeoID": "G2",
    "PID": "P17",
    "SaleDate": "2021-01-04 00:00:00",
    "Amount": 2814,
    "Customers": 296,
    "Boxes": 94
  },
  {
    "SPID": "SP07",
    "GeoID": "G4",
    "PID": "P13",
    "SaleDate": "2021-01-13 00:00:00",
    "Amount": 2121,
    "Customers": 130,
    "Boxes": 89
  },
  {
    "SPID": "SP25",
    "GeoID": "G2",
    "PID": "P08",
    "SaleDate": "2021-01-14 00:00:00",
    "Amount": 2135,
    "Customers": 183,
    "Boxes": 98
  },
  {
    "SPID": "SP17",
    "GeoID": "G5",
    "PID": "P01",
    "SaleDate": "2021-01-21 00:00:00",
    "Amount": 2408,
    "Customers": 106,
    "Boxes": 90
  },
  {
    "SPID": "SP10",
    "GeoID": "G3",
    "PID": "P17",
    "SaleDate": "2021-01-22 00:00:00",
    "Amount": 2366,
    "Customers": 470,
    "Boxes": 79
  },
  {
    "SPID": "SP13",
    "GeoID": "G3",
    "PID": "P16",
    "SaleDate": "2021-01-26 00:00:00",
    "Amount": 2296,
    "Customers": 113,
    "Boxes": 96
  },
  {
    "SPID": "SP07",
    "GeoID": "G2",
    "PID": "P07",
    "SaleDate": "2021-01-29 00:00:00",
    "Amount": 2394,
    "Customers": 323,
    "Boxes": 93
  },
  {
    "SPID": "SP01",
    "GeoID": "G1",
    "PID": "P22",
    "SaleDate": "2021-02-02 00:00:00",
    "Amount": 2436,
    "Customers": 203,
    "Boxes": 94
  },
  {
    "SPID": "SP22",
    "GeoID": "G2",
    "PID": "P17",
    "SaleDate": "2021-02-08 00:00:00",
    "Amount": 2660,
    "Customers": 113,
    "Boxes": 89
  },
  {
    "SPID": "SP02",
    "GeoID": "G4",
    "PID": "P10",
    "SaleDate": "2021-02-19 00:00:00",
    "Amount": 2100,
    "Customers": 62,
    "Boxes": 81
  },
  {
    "SPID": "SP24",
    "GeoID": "G1",
    "PID": "P16",
    "SaleDate": "2021-02-22 00:00:00",
    "Amount": 2443,
    "Customers": 337,
    "Boxes": 82
  },
  {
    "SPID": "SP23",
    "GeoID": "G6",
    "PID": "P01",
    "SaleDate": "2021-03-08 00:00:00",
    "Amount": 2849,
    "Customers": 128,
    "Boxes": 95
  },
  {
    "SPID": "SP06",
    "GeoID": "G3",
    "PID": "P18",
    "SaleDate": "2021-03-08 00:00:00",
    "Amount": 2730,
    "Customers": 120,
    "Boxes": 95
  },
  {
    "SPID": "SP07",
    "GeoID": "G6",
    "PID": "P16",
    "SaleDate": "2021-03-12 00:00:00",
    "Amount": 2275,
    "Customers": 359,
    "Boxes": 99
  },
  {
    "SPID": "SP11",
    "GeoID": "G1",
    "PID": "P10",
    "SaleDate": "2021-03-15 00:00:00",
    "Amount": 2534,
    "Customers": 119,
    "Boxes": 91
  },
  {
    "SPID": "SP19",
    "GeoID": "G2",
    "PID": "P16",
    "SaleDate": "2021-03-22 00:00:00",
    "Amount": 2954,
    "Customers": 143,
    "Boxes": 96
  },
  {
    "SPID": "SP16",
    "GeoID": "G1",
    "PID": "P17",
    "SaleDate": "2021-03-24 00:00:00",
    "Amount": 2590,
    "Customers": 209,
    "Boxes": 87
  },
  {
    "SPID": "SP22",
    "GeoID": "G4",
    "PID": "P16",
    "SaleDate": "2021-03-29 00:00:00",
    "Amount": 2576,
    "Customers": 332,
    "Boxes": 96
  },
  {
    "SPID": "SP15",
    "GeoID": "G3",
    "PID": "P11",
    "SaleDate": "2021-04-02 00:00:00",
    "Amount": 2100,
    "Customers": 242,
    "Boxes": 70
  }
]

*/