select
    ds.store_name,
    count(fs.sales_id) total_orders,
    round(sum(fs.gross_amount), 2) total_sales,
    round(avg(fs.quantity * fs.unit_price), 2) avg_revenue

from {{ ref('stg_fact_sales') }} fs 
left join {{ref('stg_dim_store')}} ds
on fs.store_sk = ds.store_sk
group by ds.store_name