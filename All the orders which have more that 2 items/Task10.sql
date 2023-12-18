SELECT 
   o.increment_id AS IncrementID,
    GROUP_CONCAT(od.sku) AS OrderedSKUs,
    o.total_qty_ordered
FROM 
    sales_order o
JOIN 
    sales_order_item od ON o.entity_id = od.order_id
WHERE o.total_qty_ordered >= 2
GROUP BY 
   o.increment_id;
