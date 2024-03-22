with daily_room_capacity as
(
    select *
    from {{ref('fct_daily_room_occupancy')}}
),
final as
(
    select occupancy_date, 
        sum(capacity_actual_room) as total_room_capacity
    from daily_room_capacity
    group by occupancy_date
    order by occupancy_date
)
select *
from final