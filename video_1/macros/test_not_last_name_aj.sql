{% test not_last_name_aj(model, column_name) %}

    select *
    from {{ model }}
    where {{ column_name }} like '%aj'

{% endtest %}