with links as (
	select
		movieId,
		imdbId,
		tmdbId
	from `movies`.`default`.`links`
)

select * from links