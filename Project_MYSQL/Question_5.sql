/*
QUESTION 5 : Which shipments had under 100 customers & under 100 boxes? Did any of them occur on Wednesday?
- Only show 20 results
*/

SELECT 
    *,
  CASE WHEN WEEKDAY(saledate) = 2 THEN 'Wednesday Shipment'
  ELSE 'nope' 
  END AS Wednesday_Shipment
FROM sales
WHERE customers < 100 
AND boxes < 100
LIMIT 20;


/*

- RESULTS

[
  {
    "SPID": "SP01",
    "GeoID": "G4",
    "PID": "P15",
    "SaleDate": "2021-01-01 00:00:00",
    "Amount": 259,
    "Customers": 32,
    "Boxes": 22,
    "Wednesday_Shipment": "nope"
  },
  {
    "SPID": "SP12",
    "GeoID": "G6",
    "PID": "P09",
    "SaleDate": "2021-01-04 00:00:00",
    "Amount": 147,
    "Customers": 9,
    "Boxes": 11,
    "Wednesday_Shipment": "nope"
  },
  {
    "SPID": "SP09",
    "GeoID": "G5",
    "PID": "P09",
    "SaleDate": "2021-01-06 00:00:00",
    "Amount": 539,
    "Customers": 10,
    "Boxes": 77,
    "Wednesday_Shipment": "Wednesday Shipment"
  },
  {
    "SPID": "SP20",
    "GeoID": "G6",
    "PID": "P19",
    "SaleDate": "2021-01-06 00:00:00",
    "Amount": 637,
    "Customers": 79,
    "Boxes": 91,
    "Wednesday_Shipment": "Wednesday Shipment"
  },
  {
    "SPID": "SP05",
    "GeoID": "G5",
    "PID": "P04",
    "SaleDate": "2021-01-08 00:00:00",
    "Amount": 364,
    "Customers": 14,
    "Boxes": 21,
    "Wednesday_Shipment": "nope"
  },
  {
    "SPID": "SP08",
    "GeoID": "G4",
    "PID": "P16",
    "SaleDate": "2021-01-12 00:00:00",
    "Amount": 721,
    "Customers": 45,
    "Boxes": 24,
    "Wednesday_Shipment": "nope"
  },
  {
    "SPID": "SP09",
    "GeoID": "G1",
    "PID": "P19",
    "SaleDate": "2021-01-13 00:00:00",
    "Amount": 1078,
    "Customers": 76,
    "Boxes": 77,
    "Wednesday_Shipment": "Wednesday Shipment"
  },
  {
    "SPID": "SP24",
    "GeoID": "G4",
    "PID": "P07",
    "SaleDate": "2021-01-14 00:00:00",
    "Amount": 1239,
    "Customers": 97,
    "Boxes": 50,
    "Wednesday_Shipment": "nope"
  },
  {
    "SPID": "SP08",
    "GeoID": "G6",
    "PID": "P10",
    "SaleDate": "2021-01-14 00:00:00",
    "Amount": 1127,
    "Customers": 97,
    "Boxes": 54,
    "Wednesday_Shipment": "nope"
  },
  {
    "SPID": "SP04",
    "GeoID": "G4",
    "PID": "P06",
    "SaleDate": "2021-01-14 00:00:00",
    "Amount": 1211,
    "Customers": 37,
    "Boxes": 61,
    "Wednesday_Shipment": "nope"
  },
  {
    "SPID": "SP06",
    "GeoID": "G4",
    "PID": "P08",
    "SaleDate": "2021-01-15 00:00:00",
    "Amount": 308,
    "Customers": 91,
    "Boxes": 19,
    "Wednesday_Shipment": "nope"
  },
  {
    "SPID": "SP04",
    "GeoID": "G5",
    "PID": "P04",
    "SaleDate": "2021-01-18 00:00:00",
    "Amount": 1428,
    "Customers": 55,
    "Boxes": 76,
    "Wednesday_Shipment": "nope"
  },
  {
    "SPID": "SP08",
    "GeoID": "G6",
    "PID": "P06",
    "SaleDate": "2021-01-19 00:00:00",
    "Amount": 161,
    "Customers": 95,
    "Boxes": 10,
    "Wednesday_Shipment": "nope"
  },
  {
    "SPID": "SP06",
    "GeoID": "G5",
    "PID": "P15",
    "SaleDate": "2021-01-19 00:00:00",
    "Amount": 742,
    "Customers": 80,
    "Boxes": 53,
    "Wednesday_Shipment": "nope"
  },
  {
    "SPID": "SP04",
    "GeoID": "G4",
    "PID": "P22",
    "SaleDate": "2021-01-20 00:00:00",
    "Amount": 1155,
    "Customers": 34,
    "Boxes": 45,
    "Wednesday_Shipment": "Wednesday Shipment"
  },
  {
    "SPID": "SP25",
    "GeoID": "G4",
    "PID": "P13",
    "SaleDate": "2021-01-22 00:00:00",
    "Amount": 1358,
    "Customers": 68,
    "Boxes": 68,
    "Wednesday_Shipment": "nope"
  },
  {
    "SPID": "SP20",
    "GeoID": "G2",
    "PID": "P03",
    "SaleDate": "2021-01-22 00:00:00",
    "Amount": 168,
    "Customers": 94,
    "Boxes": 10,
    "Wednesday_Shipment": "nope"
  },
  {
    "SPID": "SP08",
    "GeoID": "G4",
    "PID": "P22",
    "SaleDate": "2021-01-25 00:00:00",
    "Amount": 42,
    "Customers": 35,
    "Boxes": 2,
    "Wednesday_Shipment": "nope"
  },
  {
    "SPID": "SP12",
    "GeoID": "G3",
    "PID": "P21",
    "SaleDate": "2021-01-25 00:00:00",
    "Amount": 1659,
    "Customers": 82,
    "Boxes": 83,
    "Wednesday_Shipment": "nope"
  },
  {
    "SPID": "SP24",
    "GeoID": "G4",
    "PID": "P11",
    "SaleDate": "2021-01-27 00:00:00",
    "Amount": 1309,
    "Customers": 97,
    "Boxes": 51,
    "Wednesday_Shipment": "Wednesday Shipment"
  }
]

*/