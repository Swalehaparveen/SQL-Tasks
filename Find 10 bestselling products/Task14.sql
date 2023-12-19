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
