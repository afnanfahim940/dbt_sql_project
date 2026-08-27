
select 
    sales_id, 
    store_sk,
    round({{dollars_to_cents('gross_amount')}}, 2) as gross_amount_in_cents,
    round({{dollars_to_cents('unit_price')}}, 2) as unit_price_in_cents,
    round({{calculate_tax('gross_amount', 10) }}, 2) as tax_amount,
    round({{calculate_discount('gross_amount', 15) }}, 2) as discount_amount,
    gross_amount * 0.15 as new_tax_amount

from 
    {{ref('stg_fact_sales')}}