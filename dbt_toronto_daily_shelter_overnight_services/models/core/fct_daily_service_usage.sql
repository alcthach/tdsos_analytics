with 

service_usage as

(
    select      _id,
                occupancy_date,
                organization_id,
                shelter_id,
                program_id,
                SERVICE_USER_COUNT

    from {{ref('stg_daily_shelter_overnight_service_occupancy_2021')}}
    
    UNION
    
    select  _id,
            occupancy_date,
            organization_id,
            shelter_id,
            program_id,
                SERVICE_USER_COUNT
    from {{ref('stg_daily_shelter_overnight_service_occupancy_2022')}}

    UNION
    
    select  _id,
            occupancy_date,
            organization_id,
            shelter_id,
            program_id,
                SERVICE_USER_COUNT
    from {{ref('stg_daily_shelter_overnight_service_occupancy_2023')}}

    UNION

    select  _id,
            occupancy_date,
            organization_id,
            shelter_id,
            program_id,
                SERVICE_USER_COUNT
    from {{ref('stg_daily_shelter_overnight_service_occupancy_2024')}}
),

final as 

(
    Select * from service_usage
)

select * from final