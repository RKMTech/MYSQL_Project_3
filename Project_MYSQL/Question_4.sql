/*
QUESTION 4 : Which product sold more boxes in the first 7 days of February 2022? Milk Bars or Eclairs?
*/

SELECT
    product,
    SUM(boxes) AS total_boxes
FROM products  
JOIN sales
ON sales.pid = products.pid
WHERE Product IN ('Milk bars', 'eclairs')
AND saledate BETWEEN '2022-2-1' AND '2022-2-7'
GROUP BY product
ORDER BY total_boxes DESC;


/*

- Eclairs sold the most boxes in the first 7 days of February 2022

- RESULTS

[
  {
    "product": "Eclairs",
    "total_boxes": "1019"
  },
  {
    "product": "Milk Bars",
    "total_boxes": "818"
  }
]

*/