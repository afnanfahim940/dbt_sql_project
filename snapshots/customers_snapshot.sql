{% snapshot customers_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='customer_sk',
        strategy='check',
        check_cols=['full_name', 'loyalty_tier']
    )
}}

select *
from {{ ref('stg_dim_customer') }}

{% endsnapshot %}