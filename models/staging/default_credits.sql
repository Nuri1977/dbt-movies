with credits as (
	select
		cast,
		crew,
		id
	from {{ source('default', 'credits') }}
)

select * from credits