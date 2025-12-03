with links_small as (
	select
		movieId,
		imdbId,
		tmdbId
	from `movies`.`default`.`links_small`
)

select * from links_small