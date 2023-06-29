{#

-- variables
{% set my_cool_string = 'Wow: cool!' %}
{% set my_second_cool_string = 'this is jinja!' %}
{% set my_cool_number = 100 %}

-- Printing
{{my_cool_string}} {{my_second_cool_string}} I want to write Jinja for {{ my_cool_number }} years!

-- list
{% set my_animals = ['lemur','wolf','panther', 'tardigrade'] %}

-- for loop
{% for animal in my_animals %}
    My Favorite animal is the {{ animal }}
{% endfor %}

-- if statements
{% set temperature = 75 %}

{% if temperature < 65 %}
    Time for a cappuccino!
{% else %}
    Time for a colbd brew!
{% endif %}



{%- set foods = ['carrot','hot dog','cucumber', 'bell pepper'] -%}

{%- for food in foods -%}
    {%- if food == 'hot dog' -%}
        {%- set food_type = 'snack' -%}
    {%- else -%}
        {%- set food_type = 'vegetable' -%}
    {%- endif -%}
The humble {{ food }} is my favorite {{ food_type}}
{% endfor %}

#}

{% set websters_dict = {
    'word':'data',
    'speech_part':'noun',
    'definition':'if you know you know'
}
-%}

{{websters_dict['word']}} ({{websters_dict['speech_part']}}): defined as "{{websters_dict['definition']}}"