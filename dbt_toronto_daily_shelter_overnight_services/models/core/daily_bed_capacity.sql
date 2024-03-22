with daily_bed_capacity as
(
    select *
    from {{ref('fct_daily_bed_occupancy')}}
),
final as
(
    select  occupancy_date,
            sum(capacity_actual_bed) as total_bed_capacity
    from daily_bed_capacity
    group by occupancy_date
    order by occupancy_date
)
select *
from final