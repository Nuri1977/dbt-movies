with links as (
	select
		movieId,
		imdbId,
		tmdbIdssss
	from {{ source('default', 'links') }}
)

select * from links