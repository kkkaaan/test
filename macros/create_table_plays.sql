{% macro create_table_plays() %}
CREATE OR REPLACE PROCEDURE jaffle_shop.create_table_plays() RETURNS VARCHAR
AS $$
CREATE OR REPLACE TABLE jaffle_shop.plays(play varchar);
INSERT INTO jaffle_shop.plays VALUES
('True'),
('False');

$$;
{% endmacro %}