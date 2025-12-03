with credits as (
	select
		cast,
		crew,
		id
	from `movies`.`default`.`credits`
)

select * from credits