with 

organizations as (

	select distinct(organization_id), organization_name from {{ ref('stg_daily_shelter_overnight_service_occupancy_2021') }}
	union
	select distinct(organization_id), organization_name from {{ ref('stg_daily_shelter_overnight_service_occupancy_2022') }}
	union
	select distinct(organization_id), organization_name from {{ ref('stg_daily_shelter_overnight_service_occupancy_2023') }}
	union
	select distinct(organization_id), organization_name from {{ ref('stg_daily_shelter_overnight_service_occupancy_2024') }}
),

final as (

	select  DISTINCT(organization_id),
            organization_name
	from organizations
	order by organization_id ASC
)

select * from final
