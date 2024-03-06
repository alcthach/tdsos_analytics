with 

source as (

	select * from {{ source('tdsos','daily_shelter_occupancy_2019') }}

),

staged as (

	select *
	from source

)

select * from staged