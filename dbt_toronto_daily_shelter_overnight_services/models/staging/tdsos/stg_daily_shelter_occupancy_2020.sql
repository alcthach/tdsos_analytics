with 

source as (

	select * from {{ source('tdsos','daily_shelter_occupancy_2020') }}

),

staged as (

select 	concat('2020', _id) as _id,
			occupancy_date,
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