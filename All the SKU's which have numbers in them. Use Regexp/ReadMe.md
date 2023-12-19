**Task 13 -** Write a query to find out all the SKUs that have numbers in them. Use Regex

**Analysis**

1. **REGEXP [0-9]** searches the catalog_product_entity table and retrieves all rows where the SKU column contains at least one numeric digit ([0-9]).
2. This pattern will match SKUs that have any **digit from 0 to 9** in them.



**Solution**

SELECT
    *
FROM
    catalog_product_entity
WHERE
    sku REGEXP '[0-9]';

