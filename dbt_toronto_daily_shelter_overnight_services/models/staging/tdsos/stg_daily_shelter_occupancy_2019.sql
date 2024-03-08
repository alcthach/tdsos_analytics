with 

source as (

	select * from {{ source('tdsos','daily_shelter_occupancy_2019') }}

),

staged as (

		select 	_id,
			DATE(occupancy_date) as occupancy_date,
			organization_name,
			shelter_name,
			shelter_address,
			shelter_city,
			shelter_province,
			shelter_postal_code,
			facility_name,
			program_name,
			sector,
			occupancy,
			capacity
	from source

)

select * from staged