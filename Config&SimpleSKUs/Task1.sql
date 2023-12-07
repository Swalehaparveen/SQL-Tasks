SELECT
    parent.type_id AS parent_product_type,
    parent.sku AS parent_sk,
    child.type_id AS child_product_type,
    child.sku child_sku
FROM
    catalog_product_entity AS parent
JOIN catalog_product_relation AS link
ON
    link.parent_id = parent.entity_id
JOIN catalog_product_entity AS child
ON
    child.entity_id = link.child_id
