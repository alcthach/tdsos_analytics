with 

room_occupancy as

(
    select  _id,
            occupancy_date,
            organization_id,
            shelter_id,
            program_id,
            capacity_actual_room,
            capacity_funding_room,
            occupied_rooms,
            unoccupied_rooms,
            unavailable_rooms
    from {{ref('stg_daily_shelter_overnight_service_occupancy_2021')}}
    where capacity_type like 'Room Based Capacity'
    
    UNION
    
    select  _id,
            occupancy_date,
            organization_id,
            shelter_id,
            program_id,
            capacity_actual_room,
            capacity_funding_room,
            occupied_rooms,
            unoccupied_rooms,
            unavailable_rooms
    from {{ref('stg_daily_shelter_overnight_service_occupancy_2022')}}
    where capacity_type like 'Room Based Capacity'

    UNION
    
    select  _id,
            occupancy_date,
            organization_id,
            shelter_id,
            program_id,
            capacity_actual_room,
            capacity_funding_room,
            occupied_rooms,
            unoccupied_rooms,
            unavailable_rooms
    from {{ref('stg_daily_shelter_overnight_service_occupancy_2023')}}
    where capacity_type like 'Room Based Capacity'

    UNION

    select  _id,
            occupancy_date,
            organization_id,
            shelter_id,
            program_id,
            capacity_actual_room,
            capacity_funding_room,
            occupied_rooms,
            unoccupied_rooms,
            unavailable_rooms
    from {{ref('stg_daily_shelter_overnight_service_occupancy_2024')}}
    where capacity_type like 'Room Based Capacity'
),

final as 

(
    Select * from room_occupancy
)

select * from final