with 

source as (

	select * from {{ source('tdsos','daily_shelter_overnight_service_occupancy_2022') }}

),

staged as (

	select *
	from source

)

select * from staged