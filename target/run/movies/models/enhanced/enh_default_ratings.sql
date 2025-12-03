
  
    
        create or replace table `movies`.`default`.`enh_default_ratings`
      
      
  using delta
      
      
      
      
      
      
      
      as
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
  