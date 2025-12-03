{{
    config(
        materialized='incremental',
        unique_key = ['UNIQUE_KEY_COLUMNS'],
    )
}}


  
  
  create or replace view `movies`.`default`.`default_credits`
  
  as (
    with credits as (
	select
		cast,
		crew,
		id
	from `movies`.`default`.`credits`
)

select * from credits
  

{% if is_incremental() %}
where INCREMENTAL_COLUMN > (select max(INCREMENTAL_COLUMN) from {{ this }})
{% endif %}
)
