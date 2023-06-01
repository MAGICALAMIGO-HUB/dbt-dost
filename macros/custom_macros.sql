{% macro filter_by_country(country) %}
    {% if country %}
        
        
        {% if country == 'Nepal' %}
            SELECT *
            FROM {{ source("sourcename", "USER_INFO") }}
            WHERE COUNTRY = '{{ country }}'
        {% else %}
            -- Handle the scenario when the country does not exist
            SELECT 'No data found for the provided country: {{ country }}' AS message
        {% endif %}
    {% else %}
        -- Handle the scenario when the country is not provided
        SELECT 'Country is required.' AS message
    {% endif %}
{% endmacro %}
