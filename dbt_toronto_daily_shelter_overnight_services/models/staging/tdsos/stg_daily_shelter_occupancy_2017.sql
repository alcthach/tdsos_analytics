with 

source as (

	select * from {{ source('tdsos','daily_shelter_occupancy_2017') }}

),

staged as (

	select *
	from source

)

select * from staged