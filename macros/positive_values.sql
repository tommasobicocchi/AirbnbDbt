{{ % test positive_values( model, col ) % }}
    SELECT *
    FROM {{ ref( model ) }}
    WHERE {{ col }} < 1
{{ % endtest % }}