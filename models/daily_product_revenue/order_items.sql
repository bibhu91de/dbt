
-- Use the `ref` function to select from other models

{{ config(materialized='table') }}

select * from retail.order_items
