{{
    config(
        materialized='incremental',
        unique_key = ['UNIQUE_KEY_COLUMNS'],
    )
}}


  
  
  create or replace view `movies`.`default`.`default_ratings`
  
  as (
    with ratings as (
	select
		userId,
		movieId,
		rating,
		timestamp
	from `movies`.`default`.`ratings`
)

select * from ratings
  

{% if is_incremental() %}
where INCREMENTAL_COLUMN > (select max(INCREMENTAL_COLUMN) from {{ this }})
{% endif %}
)
