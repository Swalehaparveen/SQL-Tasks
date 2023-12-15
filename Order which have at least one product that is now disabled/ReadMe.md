**Task 5 -** Write a query to print all the orders that have at least one product that is now disabled

**Analysis:**

*sales_order* table and joins the *catalog_product_item* table to filter out orders that contain at least one product with IsEnabled set to 2 (indicating a disabled product).

**Solution**

SELECT DISTINCT 
    o.entity_id,
    o.increment_id,
    GROUP_CONCAT(od.sku) AS OrderedSKUs,
    cpei.value AS 'is_enabled'
FROM 
    sales_order o
JOIN 
    sales_order_item od ON o.entity_id = od.order_id
JOIN 
    catalog_product_entity p ON od.sku = p.sku
LEFT JOIN catalog_product_entity_int cpei ON (p.entity_id=cpei.entity_id
                                              AND cpei.attribute_id=97)
WHERE 
    cpei.value = 2
GROUP BY o.entity_id;
