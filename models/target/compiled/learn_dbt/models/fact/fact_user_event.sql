
WITH  __dbt__cte__src_user_event as (
WITH src_user_event AS (
    SELECT * FROM raw_data.user_event
)
SELECT
    user_id,
    datestamp,
    item_id,
    clicked,
    purchased,
    paidamount
FROM
    src_user_event
),src_user_event AS (
    SELECT * FROM __dbt__cte__src_user_event
)
SELECT
    user_id,
    datestamp,
    item_id,
    clicked,
    purchased,
    paidamount
FROM
    src_user_event
WHERE datestamp is not NULL

    AND datestamp > (SELECT max(datestamp) from "dev"."keeyong"."fact_user_event")
