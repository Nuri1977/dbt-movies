with keywords as (
	select
		id,
		keywords
	from {{ source('default', 'keywords') }}
)

select * from keywords