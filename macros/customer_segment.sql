{% macro customer_segment(amount_column) %}

case
    when {{ amount_column }} >= 2000 then 'VIP'
    when {{ amount_column }} >= 1000 then 'Premium'
    else 'Regular'
end

{% endmacro %}