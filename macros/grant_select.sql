{% macro grant_select(schema = target.schema) %}
    
    {% set query %}
        grant usage on schema {{ schema }}.
        grant select on all tables in schema {{ schema }},
        grant select on all views in schema {{ schema }}
    {% endset %}
        
    {{ log('Granting select on all tables and views in schema ' ~ schema, info=True )}}
    {% do run_query(query) %}
    {{ log ('Priveleges Granted!', info = True)}}

{% endmacro %}