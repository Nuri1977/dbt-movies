with ratings as (
	select
		userId,
		movieId,
		rating,
		timestamp
	from {{ source('default', 'ratings') }}
)

select * from ratings