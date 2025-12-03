
  
    
        create or replace table `movies`.`default`.`enh_default_links`
      
      
  using delta
      
      
      
      
      
      
      
      as
      create or replace view `movies`.`default`.`default_links`
  
  as (
    with links as (
	select
		movieId,
		imdbId,
		tmdbId
	from `movies`.`default`.`links`
)

select * from links
  


)
  