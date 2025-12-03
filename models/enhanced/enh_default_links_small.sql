{{
    config(
        materialized='incremental',
        unique_key = ['UNIQUE_KEY_COLUMNS'],
    )
}}


  
  
  create or replace view `movies`.`default`.`default_links_small`
  
  as (
    with links_small as (
	select
		movieId,
		imdbId,
		tmdbId
	from `movies`.`default`.`links_small`
)

select * from links_small
  

{% if is_incremental() %}
where INCREMENTAL_COLUMN > (select max(INCREMENTAL_COLUMN) from {{ this }})
{% endif %}
)
