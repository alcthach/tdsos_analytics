with 

source as (

	select * from {{ source('tdsos','daily_shelter_overnight_service_occupancy_2024') }}

),

staged as (

	select	concat('2024', _id) as _id,
			DATE(occupancy_date) as occupancy_date,
			organization_id,
			organization_name,
			shelter_id,
			shelter_group,
			location_id,
			location_name,
			location_address,
			location_postal_code,
			location_city,
			location_province,
			program_id,
			program_name,
			sector,
			program_model,
			overnight_service_type,
			program_area,
			service_user_count,
			capacity_type,
			capacity_actual_bed,
			capacity_funding_bed,
			occupied_beds,
			unoccupied_beds,
			unavailable_beds,
			capacity_actual_room,
			capacity_funding_room,
			occupied_rooms,
			unoccupied_rooms,
			unavailable_rooms,
			occupancy_rate_beds,
			occupancy_rate_rooms
	from source

)

select * from staged