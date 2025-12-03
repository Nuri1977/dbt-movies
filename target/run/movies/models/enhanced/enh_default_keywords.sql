
  
    
        create or replace table `movies`.`default`.`enh_default_keywords`
      
      
  using delta
      
      
      
      
      
      
      
      as
      create or replace view `movies`.`default`.`default_keywords`
  
  as (
    with keywords as (
	select
		id,
		keywords
	from `movies`.`default`.`keywords`
)

select * from keywords
  


)
  