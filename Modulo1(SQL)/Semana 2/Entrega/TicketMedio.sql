SELECT
    ROUND(AVG(payment_value)::numeric, 2) AS TICKET_MEDIO,
    c.customer_state AS ESTADO_CLIENTE,
    COUNT(o.order_id) AS QTDE_PEDIDOS
FROM
    order_payments op
JOIN
    orders o ON op.order_id = o.order_id
JOIN
    customers c ON o.customer_id = c.customer_id
GROUP BY
    ESTADO_CLIENTE
ORDER BY
    QTDE_PEDIDOS DESC,
    TICKET_MEDIO DESC;