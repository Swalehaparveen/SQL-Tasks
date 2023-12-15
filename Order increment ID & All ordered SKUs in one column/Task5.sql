SELECT 
    o.entity_id,
    GROUP_CONCAT(od.sku) AS OrderedSKUs
FROM 
    sales_order o
JOIN 
    sales_order_item od ON o.entity_id = od.order_id
GROUP BY 
   o.increment_id;
