/*
QUESTION 3 : Which product sells more boxes? Milk Bars or Eclairs?
*/

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


/*

- Eclairs sold the most boxes

- RESULTS

[
  {
    "product": "Eclairs",
    "total_boxes": "144651"
  },
  {
    "product": "Milk Bars",
    "total_boxes": "130995"
  }
]

*/