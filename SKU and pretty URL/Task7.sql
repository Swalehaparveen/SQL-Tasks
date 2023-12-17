SELECT
    p.entity_id,
    cpev.value AS URL
FROM
    catalog_product_entity p
JOIN catalog_product_entity_varchar cpev ON
    (
        p.entity_id = cpev.entity_id AND cpev.attribute_id = 119
    )
JOIN catalog_product_entity_int cpei ON
    (
        p.entity_id = cpei.entity_id AND cpei.attribute_id = 99
    )
WHERE
    cpei.attribute_id = 99 AND cpei.value = 4;
