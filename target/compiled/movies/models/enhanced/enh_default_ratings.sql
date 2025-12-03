


  
  
  create or replace view `movies`.`default`.`default_ratings`
  
  as (
    with ratings as (
	select
		userId,
		movieId,
		rating,
		timestamp
	from `movies`.`default`.`ratings`
)

select * from ratings
  


)