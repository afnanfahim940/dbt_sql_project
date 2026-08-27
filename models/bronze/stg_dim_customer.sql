select
    customer_sk,
    CONCAT(first_name, ' ', last_name) AS full_name,
    loyalty_tier
from {{ source('bronze', 'dim_customer') }}