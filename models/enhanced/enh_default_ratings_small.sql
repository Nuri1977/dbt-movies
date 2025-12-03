{{
    config(
        materialized='incremental',
        unique_key = ['UNIQUE_KEY_COLUMNS'],
    )
}}


  
  
  create or replace view `movies`.`default`.`default_ratings_small`
  
  as (
    with ratings_small as (
	select
		userId,
		movieId,
		rating,
		timestamp
	from `movies`.`default`.`ratings_small`
)

select * from ratings_small
  

{% if is_incremental() %}
where INCREMENTAL_COLUMN > (select max(INCREMENTAL_COLUMN) from {{ this }})
{% endif %}
)
