with links as (
	select
		movieId,
		imdbId,
		tmdbId
	from {{ source('default', 'links') }}
)

select * from links