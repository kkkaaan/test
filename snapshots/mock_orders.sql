{% snapshot mock_orders %}

{% set new_schema = target.schema + '_snapshot' %}
    
    {{
        config(
            target_database='RAW',
            target_schema = 'DBT_KKANIA_SNAPSHOT',
            unique_key = 'order_id',
            strategy = 'timestamp',
            updated_at = 'updated_at',
        )
    }}

select * from raw.{{target.schema}}.mock_orders
 
 
 {% endsnapshot %}