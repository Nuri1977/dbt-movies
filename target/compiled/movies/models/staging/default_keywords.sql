with keywords as (
	select
		id,
		keywords
	from `movies`.`default`.`keywords`
)

select * from keywords