with 

organizations as (

	select * from {{ ref('stg_daily_shelter_overnight_service_occupancy_2021') }}

),

final as (

	select  DISTINCT(organization_id),
            organization_name
	from organizations

)

select * from final