
  
    

  create  table
    "dev"."keeyong"."dim_user_variant__dbt_tmp"
    
    
    
  as (
    WITH  __dbt__cte__src_user_variant as (
WITH src_user_variant AS (
    SELECT * FROM raw_data.user_variant
)
SELECT 
    user_id,
    variant_id
FROM
    src_user_variant
),src_user_variant AS (
    SELECT * FROM __dbt__cte__src_user_variant
)
SELECT 
    user_id,
    variant_id
FROM
    src_user_variant
  );
  