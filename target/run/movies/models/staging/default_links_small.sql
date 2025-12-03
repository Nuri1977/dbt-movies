
  
  
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
  )
