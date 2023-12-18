SELECT
    c.sku AS SKU,
    st.qty
FROM
    catalog_product_entity AS c
JOIN cataloginventory_stock_item st ON
    c.entity_id = st.product_id
WHERE
    st.qty <= 0;
