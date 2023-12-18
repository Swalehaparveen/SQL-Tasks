**Task - 9** Write a query that queries the information_schema table to find out all the tables which contain a column named SKU.

**Analysis**

1. We have to selects the *table_schema (database)* and *table_name* from the *information_schema.columns* table where the column_name is equal to 'sku'.
2. It will provide a list of tables across different schemas (databases) that contain a column named 'sku'.



**Solution**

SELECT
    table_schema,
    TABLE_NAME
FROM
    information_schema.columns
WHERE COLUMN_NAME
    = 'sku' AND table_schema = 'seapacm24_stage';
