select 
    sales_id,
    {%for column in ['gross_amount', 'discount_amount'] %}
    Round({{column}} / 100.0, 2) as {{column}}_dollars
    {%if not loop.last %}, {%endif%}
    {%endfor%}
from {{ref("stg_fact_sales")}}