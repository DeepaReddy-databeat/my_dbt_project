{% macro generate_database_name(custom_database_name, node) %}
    {% if node is not none %}

        {# Real dbt sources (defined in sources.yml) stay in the raw DB #}
        {% if node.resource_type == 'source' %}
            {{ target.database }}

        {# Any model under models/source/* goes to source_deepa #}
        {% elif node.resource_type == 'model'
              and node.fqn is not none
              and node.fqn | length > 1
              and node.fqn[1] == 'source' %}
            source_deepa

        {# Everything else built by dbt #}
        {% else %}
            Deepa_transformed
        {% endif %}

    {% else %}
        {{ target.database }}
    {% endif %}
{% endmacro %}
