**Task 2 -** Write a query to output all the configurable products which are disabled.

**Analysis**

1. As Magento products folow the EAV structure that -
2. We need to write a Query between **eav_attribute** and **catalog_product_entity_int** table
3. Magento save product status on table catalog_product_entity_int table. Save it as 1 and 2.
4. 1 for enable
   2 for disable.
5. We need to get the **status** attribute id using **attribute_code_status**, basically it is **96**.

**SQL Query**

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


