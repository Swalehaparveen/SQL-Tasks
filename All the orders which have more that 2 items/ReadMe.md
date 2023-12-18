**Task 9 -** Write down a query to find all the orders with more than 2 items. Output should contain the number of items and order increment id

**Analysis**

1. We must join two tables named *sales_order* and *sales_order_item*.
2. where *sales_order* contains order information like OrderID, OrderIncrementID, and OrderDate,
3. and *sales_order_item* contains OrderID and SKU, we can use SQL to join these tables and group the results by OrderIncrementID.
4. Put condition in the WHERE Clause ordered qty more than 2.



**Solution**

SELECT 
   o.increment_id AS IncrementID,
    GROUP_CONCAT(od.sku) AS OrderedSKUs,
    o.total_qty_ordered
FROM 
    sales_order o
JOIN 
    sales_order_item od ON o.entity_id = od.order_id
WHERE o.total_qty_ordered > 2
GROUP BY 
   o.increment_id;
