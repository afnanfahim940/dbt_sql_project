select
    sales_id,
    round(gross_amount, 2) as gross_amount,
    round( gross_amount * {{ var('tax_rate')}} / 100.0, 2) as tax_amount
from {{ref("stg_fact_sales")}}