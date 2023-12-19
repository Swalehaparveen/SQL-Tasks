-- Create a backup table with the same structure as catalog_product_entity
CREATE TABLE catalog_product_entity_backup LIKE catalog_product_entity;

-- Copy data from catalog_product_entity to catalog_product_entity_backup
INSERT INTO catalog_product_entity_backup SELECT * FROM catalog_product_entity;
