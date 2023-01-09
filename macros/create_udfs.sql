{% macro create_udfs() %}

{% do run_query(create_table_plays()) %}

{% endmacro %}