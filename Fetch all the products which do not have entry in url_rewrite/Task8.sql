SELECT
    e.sku AS SKU,
    u.request_path AS URL
FROM
    catalog_product_entity AS e
LEFT JOIN url_rewrite AS u
ON
    u.entity_id = e.entity_id AND u.entity_type = 'product' 
WHERE
    u.request_path IS NULL;
