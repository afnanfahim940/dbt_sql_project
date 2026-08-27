{% macro customer_tier(amount_column) %}

case
    when {{ amount_column }} >= 1000 then 'High'
    when {{ amount_column }} >= 500 then 'Medium'
    else 'Low'
end

{% endmacro %}
