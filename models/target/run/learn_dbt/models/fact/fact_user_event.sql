
      insert into "dev"."keeyong"."fact_user_event" ("user_id", "datestamp", "item_id", "clicked", "purchased", "paidamount")
    (
        select "user_id", "datestamp", "item_id", "clicked", "purchased", "paidamount"
        from "fact_user_event__dbt_tmp155321141213"
    )


  