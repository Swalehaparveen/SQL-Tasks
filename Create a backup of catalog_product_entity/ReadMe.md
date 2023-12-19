
**Task 13 -** Before doing operations on the catalog_product_entity table you need to backup the table. How will you copy the table into another table named catalog_product_entity_backup?

**Analysis**

1. To copy the *catalog_product_entity* table to a new table named *catalog_product_entity_backup*.
2. We can use the *CREATE TABLE* and *INSERT INTO SELECT* SQL commands.

**SQL Query**

-- Create a backup table with the same structure as catalog_product_entity
CREATE TABLE catalog_product_entity_backup LIKE catalog_product_entity;



-- Copy data from catalog_product_entity to catalog_product_entity_backup
INSERT INTO catalog_product_entity_backup SELECT * FROM catalog_product_entity;
