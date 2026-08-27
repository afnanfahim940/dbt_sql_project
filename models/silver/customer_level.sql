select
    fs.sales_id,
    round(fs.gross_amount,2) gross_amount,
    sc.channel_name
from {{ ref('stg_fact_sales') }} fs
left join {{ ref('sales_channel') }} sc
    on fs.store_sk = sc.channel_id