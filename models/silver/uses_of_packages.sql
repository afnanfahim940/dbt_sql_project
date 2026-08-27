select
    customer_sk,
    product_sk,

    {{dbt_utils.generate_surrogate_key
                        (
                        ['customer_sk',
                         'product_sk']
                        )
    }} as customer_product_key

from {{ref("stg_fact_sales")}}


