SELECT
    *
FROM
    catalog_product_entity
WHERE
    sku REGEXP '[0-9]';
