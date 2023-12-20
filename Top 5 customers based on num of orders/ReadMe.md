**Task 16 -** Find the top 5 customers based on number of orders they have placed.

**Analysis**

1. The customer ID, customer email, and the count of orders placed by each customer by joining the **customer_entity** table with the **sales_order** table.
2. The LEFT JOIN ensures that even customers who haven't placed any orders will be included in the result set with a count of 0 orders.
3. The WHERE clause filters out canceled orders and customers with null IDs (in case there are any).
4. The GROUP BY groups the results by customer ID and email, and the ORDER BY clause sorts the customers based on the total number of orders they've placed in descending order.
5.  Finally, the LIMIT 5 restricts the output to the top 5 customers.

**SQL Query**

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
