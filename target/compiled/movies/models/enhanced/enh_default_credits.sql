


  
  
  create or replace view `movies`.`default`.`default_credits`
  
  as (
    with credits as (
	select
		cast,
		crew,
		id
	from `movies`.`default`.`credits`
)

select * from credits
  


)