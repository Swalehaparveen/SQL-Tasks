SELECT
    `catalog_product_entity`.`sku` AS `sku`,
    `catalog_product_entity`.`type_id` AS `Product Type`,
    `catalog_product_entity_int`.`value` AS `Status`
FROM `eav_attribute` 
JOIN `catalog_product_entity_int`
ON`eav_attribute`.`attribute_id` = `catalog_product_entity_int`.`attribute_id`
         
JOIN `catalog_product_entity`
ON `catalog_product_entity_int`.`entity_id` = `catalog_product_entity`.`entity_id`

WHERE
    (
	`eav_attribute`.`attribute_code` = 'status' AND
    `catalog_product_entity_int`.`value` = 2 AND
    `catalog_product_entity`.`type_id` = 'configurable'
    );
