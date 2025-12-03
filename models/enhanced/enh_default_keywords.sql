{{
    config(
        materialized='incremental',
        unique_key = ['UNIQUE_KEY_COLUMNS'],
    )
}}


  
  
  create or replace view `movies`.`default`.`default_keywords`
  
  as (
    with keywords as (
	select
		id,
		keywords
	from `movies`.`default`.`keywords`
)

select * from keywords
  

{% if is_incremental() %}
where INCREMENTAL_COLUMN > (select max(INCREMENTAL_COLUMN) from {{ this }})
{% endif %}
)
