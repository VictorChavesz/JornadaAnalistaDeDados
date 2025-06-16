SELECT
    COUNT(oi.product_id) AS QUANTIDADE,
    oi.product_id AS ID_PRODUTO,
    p.product_category_name AS CATEGORIA_PRODUTO
FROM
    order_items oi
JOIN
    products p ON p.product_id = oi.product_id
JOIN
    orders o ON oi.order_id = o.order_id
JOIN
    customers c ON c.customer_id = o.customer_id
WHERE
    o.order_purchase_timestamp BETWEEN '2018-01-01' AND '2018-12-31'
    AND c.customer_state = 'SP'
GROUP BY
    oi.product_id,
    p.product_category_name
ORDER BY
    QUANTIDADE DESC
LIMIT 10;