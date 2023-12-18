SELECT
    table_schema,
    TABLE_NAME
FROM
    information_schema.columns
WHERE COLUMN_NAME
    = 'sku' AND table_schema = 'seapacm24_stage';
