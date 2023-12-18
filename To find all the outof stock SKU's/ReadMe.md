**Task 11 -** Write a Query to find all the outof stock SKU's.

**Analysis**

1. This query fetches the SKU and quantity from the catalog_product_entity and cataloginventory_stock_item tables respectively, joining them on the entity_id and product_id.
2. It filters the results to show only those SKUs where the quantity is less than or equal to zero, indicating they are out of stock.



**Solution**

SELECT
    c.sku AS SKU,
    st.qty
FROM
    catalog_product_entity AS c
JOIN cataloginventory_stock_item st ON
    c.entity_id = st.product_id
WHERE
    st.qty <= 0;
