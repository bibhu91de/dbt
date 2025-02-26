{{ config(materialized='table') }}


SELECT order_date,
    order_item_product_id,
    order_status,
    sum(order_item_quantity) AS product_quantity,
    round(sum(order_item_subtotal), 2) AS product_revenue
FROM {{ ref('order_details') }}
GROUP BY
    order_date,
    order_item_product_id,
    order_status