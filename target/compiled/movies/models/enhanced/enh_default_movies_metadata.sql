


  
  
  create or replace view `movies`.`default`.`default_movies_metadata`
  
  as (
    with movies_metadata as (
	select
		adult,
		belongs_to_collection,
		budget,
		genres,
		homepage,
		id,
		imdb_id,
		original_language,
		original_title,
		overview,
		popularity,
		poster_path,
		production_companies,
		production_countries,
		release_date,
		revenue,
		runtime,
		spoken_languages,
		status,
		tagline,
		title,
		video,
		vote_average,
		vote_count
	from `movies`.`default`.`movies_metadata`
)

select * from movies_metadata
  


)