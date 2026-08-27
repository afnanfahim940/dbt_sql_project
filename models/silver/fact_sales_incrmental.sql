{{ config(
    materialized='incremental'
) }}

select
    sales_id,
    customer_sk,
    product_sk,
    gross_amount
from {{ ref('stg_fact_sales') }}

{% if is_incremental() %}

where sales_id not in (select sales_id
                    from {{this}}
                    )

{% endif %}
