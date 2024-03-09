with 

organizations as (

	select distinct(shelter_id), shelter_group from {{ ref('stg_daily_shelter_overnight_service_occupancy_2021') }}
	union
	select distinct(shelter_id), shelter_group from {{ ref('stg_daily_shelter_overnight_service_occupancy_2022') }}
	union
	select distinct(shelter_id), shelter_group from {{ ref('stg_daily_shelter_overnight_service_occupancy_2023') }}
	union
	select distinct(shelter_id), shelter_group from {{ ref('stg_daily_shelter_overnight_service_occupancy_2024') }}
),

final as (

	select  DISTINCT(shelter_id),
            shelter_group
	from organizations
	order by shelter_id ASC
)

select * from final
