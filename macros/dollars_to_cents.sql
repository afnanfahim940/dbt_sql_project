{% macro dollars_to_cents(column_name) %}
    {{ column_name }} * 100.0
{% endmacro %}

{% macro calculate_tax(column_name, tax_rate) %}
    {{ column_name }} * {{ tax_rate }} /100
{% endmacro %}

{% macro calculate_discount(column_name, discount_rate)%}
    {{column_name}} * {{discount_rate}} /100
{% endmacro %}