select *
from {{ source('bronze', 'dim_store') }}