
  
  
  create or replace view `movies`.`default`.`default_keywords`
  
  as (
    with keywords as (
	select
		id,
		keywords
	from `movies`.`default`.`keywords`
)

select * from keywords
  )
