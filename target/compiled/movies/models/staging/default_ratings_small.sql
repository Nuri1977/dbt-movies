with ratings_small as (
	select
		userId,
		movieId,
		rating,
		timestamp
	from `movies`.`default`.`ratings_small`
)

select * from ratings_small