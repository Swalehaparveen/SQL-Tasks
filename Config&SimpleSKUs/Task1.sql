SELECT
    parent.type_id AS parent_product_type,
    parent.sku AS parent_sk,
    child.type_id AS child_product_type,
    child.sku AS child_sku
FROM
    catalog_product_entity AS parent
JOIN catalog_product_relation AS link
ON
    link.parent_id = parent.entity_id
JOIN catalog_product_entity AS child
ON
    child.entity_id = link.child_id
WHERE
    ((child.type_id = 'simple' OR child.type_id = 'configurable') OR (parent.type_id = 'simple' OR parent.type_id = 'configurable'))
    AND (child.type_id != 'bundle' AND parent.type_id != 'bundle');
