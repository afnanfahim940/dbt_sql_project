select
    customer_sk,
    gross_amount,

    {{ customer_segment('gross_amount') }} as customer_level

from {{ ref('stg_fact_sales') }}
