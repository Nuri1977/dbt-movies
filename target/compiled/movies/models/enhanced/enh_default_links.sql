


  
  
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
  


)