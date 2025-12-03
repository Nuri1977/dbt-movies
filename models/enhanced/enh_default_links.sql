{{
    config(
        materialized='incremental',
        unique_key = ['UNIQUE_KEY_COLUMNS'],
    )
}}


  
  
  create or replace view `movies`.`default`.`default_links`
  
  as (
    with links as (
	select
		movieId,
		imdbId,
		tmdbId
	from `movies`.`default`.`links`
)

select * from links
  

{% if is_incremental() %}
where INCREMENTAL_COLUMN > (select max(INCREMENTAL_COLUMN) from {{ this }})
{% endif %}
)
