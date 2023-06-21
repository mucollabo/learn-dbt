WITH  __dbt__cte__src_user_metadata as (
WITH src_user_metadata AS (
    SELECT * FROM raw_data.user_metadata
)
SELECT 
    user_id,
    age, 
    gender,
    updated_at 
FROM
    src_user_metadata
),src_user_metadata AS (
    SELECT * FROM __dbt__cte__src_user_metadata
)
SELECT
    user_id,
    age,
    gender,
    updated_at
FROM
    src_user_metadata