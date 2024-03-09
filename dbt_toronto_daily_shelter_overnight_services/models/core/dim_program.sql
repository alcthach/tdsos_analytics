with 

organizations as (

	select distinct(program_id), program_name, sector, program_model, overnight_service_type, program_area, capacity_type from {{ ref('stg_daily_shelter_overnight_service_occupancy_2021') }}
	union
	select distinct(program_id), program_name, sector, program_model, overnight_service_type, program_area, capacity_type from {{ ref('stg_daily_shelter_overnight_service_occupancy_2022') }}
	union
	select distinct(program_id), program_name, sector, program_model, overnight_service_type, program_area, capacity_type from {{ ref('stg_daily_shelter_overnight_service_occupancy_2023') }}
	union
	select distinct(program_id), program_name, sector, program_model, overnight_service_type, program_area, capacity_type from {{ ref('stg_daily_shelter_overnight_service_occupancy_2024') }}
),

final as (

	select	DISTINCT(program_id),
            program_name, 
			sector, 
			program_model, 
			overnight_service_type, 
			program_area,
			capacity_type
	from organizations
	order by program_id ASC
)

select * from final
