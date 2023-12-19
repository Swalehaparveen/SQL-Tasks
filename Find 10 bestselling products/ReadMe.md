**Task 14 -** Find bestselling products.

**Analysis-** 

1. *sales_order_item* is used to get order item information.
2. *catalog_product_entity* is joined to fetch product details like SKU.
3. The *WHERE* clause filters out child items (simple products) to focus on main products.
4. SUM(oi.qty_ordered) totals the quantity ordered for each product.
5. *GROUP BY oi.product_id* groups the results by product ID.
6. *ORDER BY total_quantity_ordered DESC orders the results by total quantity ordered in descending order.
LIMIT 10 limits the output to the top 10 bestselling products. Adjust this number as needed.

**Solution**

SELECT
    oi.product_id,
    SUM(oi.qty_ordered) AS total_quantity_ordered,
    pr.sku
    
FROM
    sales_order_item AS oi
JOIN catalog_product_entity AS pr
ON
    oi.product_id = pr.entity_id
WHERE
    oi.parent_item_id IS NULL
GROUP BY
    oi.product_id
ORDER BY
    total_quantity_ordered
DESC
LIMIT 10;
