with credits as (
	select
		cast,
		crewssss,
		id
	from {{ source('default', 'credits') }}
)

select * from credits