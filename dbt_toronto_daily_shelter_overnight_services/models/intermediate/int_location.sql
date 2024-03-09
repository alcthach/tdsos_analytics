with 

locations as (

	select distinct(location_id), location_name, location_address, location_postal_code, location_city, location_province, occupancy_date from {{ ref('stg_daily_shelter_overnight_service_occupancy_2021') }}
	union
	select distinct(location_id), location_name, location_address, location_postal_code, location_city, location_province, occupancy_date from {{ ref('stg_daily_shelter_overnight_service_occupancy_2022') }}
	union
	select distinct(location_id), location_name, location_address, location_postal_code, location_city, location_province, occupancy_date from {{ ref('stg_daily_shelter_overnight_service_occupancy_2023') }}
	union
	select distinct(location_id), location_name, location_address, location_postal_code, location_city, location_province, occupancy_date from {{ ref('stg_daily_shelter_overnight_service_occupancy_2024') }}
),

final as (

	select  DISTINCT(location_id),
            location_name,
			location_address,
			location_postal_code,
			location_city,
			location_province,
			occupancy_date
	from locations
	order by location_id ASC
)

select * from final
