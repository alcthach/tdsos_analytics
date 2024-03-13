with 

bed_occupancy as

(
    select  _id,
            occupancy_date,
            organization_id,
            shelter_id,
            program_id,
            capacity_actual_bed,
            capacity_funding_bed,
            occupied_beds,
            unoccupied_beds,
            unavailable_beds
    from {{ref('stg_daily_shelter_overnight_service_occupancy_2021')}}
    where capacity_type like 'Bed Based Capacity'
    
    UNION
    
    select  _id,
            occupancy_date,
            organization_id,
            shelter_id,
            program_id,
            capacity_actual_bed,
            capacity_funding_bed,
            occupied_beds,
            unoccupied_beds,
            unavailable_beds
    from {{ref('stg_daily_shelter_overnight_service_occupancy_2022')}}
    where capacity_type like 'Bed Based Capacity'

    UNION
    
    select  _id,
            occupancy_date,
            organization_id,
            shelter_id,
            program_id,
            capacity_actual_bed,
            capacity_funding_bed,
            occupied_beds,
            unoccupied_beds,
            unavailable_beds
    from {{ref('stg_daily_shelter_overnight_service_occupancy_2023')}}
    where capacity_type like 'Bed Based Capacity'

    UNION

    select  _id,
            occupancy_date,
            organization_id,
            shelter_id,
            program_id,
            capacity_actual_bed,
            capacity_funding_bed,
            occupied_beds,
            unoccupied_beds,
            unavailable_beds
    from {{ref('stg_daily_shelter_overnight_service_occupancy_2024')}}
    where capacity_type like 'Bed Based Capacity'
),

final as 

(
    Select * from bed_occupancy
)

select * from final