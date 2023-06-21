
  
    

  create  table
    "dev"."keeyong"."dim_user__dbt_tmp"
    
    
    
  as (
    WITH um AS (
    SELECT * FROM "dev"."keeyong"."dim_user_metadata"
), uv AS (
    SELECT * FROM "dev"."keeyong"."dim_user_variant"
)
SELECT
   uv.user_id,
   uv.variant_id,
   um.age,
   um.gender
FROM uv
LEFT JOIN um ON uv.user_id = um.user_id
  );
  