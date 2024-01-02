SELECT
    sku,
    type_id
FROM
    catalog_product_entity
WHERE
    type_id = 'simple' OR 'configurable';
