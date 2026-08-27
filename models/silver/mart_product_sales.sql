{{ config(materialized='table') }}

select
    dc.customer_sk,
    dc.full_name,
    count(fs.sales_id) as total_orders,
    round(sum(fs.gross_amount), 2) as total_sales,
    round(sum(fs.gross_amount)/count(fs.sales_id), 2) as avg_order_value
from {{ ref('stg_fact_sales') }} fs
left join {{ ref('stg_dim_customer') }} dc
    on fs.customer_sk = dc.customer_sk
group by
    dc.customer_sk,
    dc.full_name