SELECT
    p.sku,
    p.created_at,
    soi.item_id
FROM
    catalog_product_entity AS p
JOIN sales_order_item AS soi
ON
    soi.item_id = p.entity_id
WHERE
    p.created_at < DATE_SUB(NOW(), INTERVAL 6 MONTH) AND soi.item_id NOT IN(
    SELECT
        soi.item_id
    FROM
        sales_order_item
);
