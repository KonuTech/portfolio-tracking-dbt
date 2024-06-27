WITH
    current_from_snapshot as (
        SELECT * FROM {{ ref('SNSH_ABC_BANK_POSITION') }}
WHERE DBT_VALID_TO is null
    )
SELECT *
FROM current_from_snapshot
