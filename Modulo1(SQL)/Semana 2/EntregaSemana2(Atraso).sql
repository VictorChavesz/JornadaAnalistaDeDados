SELECT
    COUNT(o.order_id) AS QUANTIDADE,
    CASE
        WHEN (o.order_delivered_customer_date - o.order_estimated_delivery_date) > INTERVAL '10 days' THEN '>10 dias'
        WHEN (o.order_delivered_customer_date - o.order_estimated_delivery_date) > INTERVAL '7 days' THEN '8-10 dias'
        WHEN (o.order_delivered_customer_date - o.order_estimated_delivery_date) > INTERVAL '5 days' THEN '6-7 dias'
    END AS FAIXA_ATRASO,
    s.seller_city AS CIDADE_VENDEDOR,
    s.seller_state AS ESTADO_VENDEDOR,
    c.customer_city AS CIDADE_CLIENTE,
    c.customer_state AS ESTADO_CLIENTE
FROM
    orders o
JOIN
    customers c ON o.customer_id = c.customer_id
JOIN
    order_items oi ON oi.order_id = o.order_id
JOIN
    sellers s ON s.seller_id = oi.seller_id
WHERE
    o.order_delivered_customer_date > o.order_estimated_delivery_date + INTERVAL '5 days'
GROUP BY
    CIDADE_CLIENTE,
    ESTADO_CLIENTE,
    CIDADE_VENDEDOR,
    ESTADO_VENDEDOR,
    FAIXA_ATRASO
ORDER BY
    QUANTIDADE DESC,
    FAIXA_ATRASO DESC
LIMIT 50;
