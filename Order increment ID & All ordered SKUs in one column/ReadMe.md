**Task 3 -** Write a query to print the Order increment ID and which SKUs were ordered in the order. There should be only one row per order.


1. We must join two tables named *sales_order* and *sales_order_item*.
2. where *sales_order* contains order information like OrderID, OrderIncrementID, and OrderDate,
3. and *sales_order_item* contains OrderID and SKU, we can use SQL to join these tables and group the results by OrderIncrementID.

**Solution:**

SELECT 
    o.entity_id,
    GROUP_CONCAT(od.sku) AS OrderedSKUs
FROM 
    sales_order o
JOIN 
    sales_order_item od ON o.entity_id = od.order_id
GROUP BY 
   o.increment_id;
