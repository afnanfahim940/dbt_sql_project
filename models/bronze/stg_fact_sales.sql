select *
from {{ source('bronze', 'fact_sales') }}