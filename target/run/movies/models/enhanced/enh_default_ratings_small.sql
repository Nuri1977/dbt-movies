
  
    
        create or replace table `movies`.`default`.`enh_default_ratings_small`
      
      
  using delta
      
      
      
      
      
      
      
      as
      create or replace view `movies`.`default`.`default_ratings_small`
  
  as (
    with ratings_small as (
	select
		userId,
		movieId,
		rating,
		timestamp
	from `movies`.`default`.`ratings_small`
)

select * from ratings_small
  


)
  