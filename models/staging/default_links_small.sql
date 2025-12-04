with links_small as (
	select
		movieId,
		imdbId,
		tmdbId
	from {{ source('default', 'links_small') }}
)

select * from links_small

fdfddfdf