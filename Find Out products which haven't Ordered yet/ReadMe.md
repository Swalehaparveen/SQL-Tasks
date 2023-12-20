**Task 15 -** Find products created over 6 months ago but have not been ordered yet.

**Analysis**

1. **catalog_product_entity** table with columns *entity_id* and *creation_at*.
2. **sales_order_item** with columns *item_id*.
3. The query will fetch all products where the creation_date is older than 6 months ago **(DATE_SUB(NOW(), INTERVAL 6 MONTH))**, and those products are not present in the *sales_order_item* table.
4. The subquery inside the *NOT IN clause* checks for products not yet ordered.

**SQL Query**

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
