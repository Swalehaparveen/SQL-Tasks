SELECT
    c.entity_id AS customer_id,
    c.email AS customer_email,
    COUNT(o.entity_id) AS total_orders
FROM
    customer_entity c
LEFT JOIN sales_order o ON
    c.entity_id = o.customer_id
WHERE
    o.state <> 'canceled' AND c.entity_id IS NOT NULL
GROUP BY
    c.entity_id,
    c.email
ORDER BY
    total_orders
DESC
LIMIT 5;
