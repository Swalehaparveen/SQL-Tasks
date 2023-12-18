**Task - 8** Delete a few product URLs from the URL table. Now write a Query to fetch all the products that do not have an entry in url_rewrite using a join

**Analysis**

1. We have to perform LEFT JOIN between the catalog_product_entity table and the url_rewrite table based on the entity_id (product ID) and entity_type.
2. We have to add a Where clause to fetch only those SKUs where request_path is NULL.



**Solution**

SELECT
    e.sku AS SKU,
    u.request_path AS URL
FROM
    catalog_product_entity AS e
LEFT JOIN url_rewrite AS u
ON
    u.entity_id = e.entity_id AND u.entity_type = 'product' 
WHERE
    u.request_path IS NULL;
