{{ config(
    materialized='incremental'
) }}

select
    sales_id,
    customer_sk,
    product_sk,
    gross_amount,
    round(gross_amount * 0.15, 2) as tax_amount
from {{ ref('stg_fact_sales') }}

{% if is_incremental() %}

where sales_id not in (select sales_id
                    from {{this}}
                    )

{% endif %}
