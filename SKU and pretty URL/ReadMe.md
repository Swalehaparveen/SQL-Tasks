**Task 7 -** Write a query that outputs, the SKU and pretty URL of the product seen on the front end.

**Analysis-** 

1. Joins the *catalog_product_entity* table with *catalog_product_entity_int* to fetch products visible on the website.
2. Joins the catalog_product_entity_varchar table to get the URL keys.
3. Filters products based on visibility (2, 3, or 4), representing products visible on the front end.

**Solution**

SELECT
    p.entity_id,
    cpev.value AS URL
FROM
    catalog_product_entity p
JOIN catalog_product_entity_varchar cpev ON
    (
        p.entity_id = cpev.entity_id AND cpev.attribute_id = 119
    )
JOIN catalog_product_entity_int cpei ON
    (
        p.entity_id = cpei.entity_id AND cpei.attribute_id = 99
    )
WHERE
    cpei.attribute_id = 99 AND cpei.value IN (2, 3, 4);
