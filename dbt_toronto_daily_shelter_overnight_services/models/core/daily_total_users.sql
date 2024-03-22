with daily_users as
(
    select *
    from {{ref('fct_daily_service_usage')}}
),
final as
(
    select  occupancy_date,
            sum(service_user_count) as total_users
    from daily_users
    group by occupancy_date
    order by occupancy_date
)
select * 
from final