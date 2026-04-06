with date_spine as (
    {{ dbt_utils.date_spine(
        datepart="day",
        start_date="cast('2023-08-01' as date)",
        end_date="cast('2024-05-31' as date)"
    ) }}
)

select 
{{ dbt_utils.generate_surrogate_key(['date_day']) }} as date_sk,
cast(date_day as date) as date_day,
dayname(date_day) as day_of_week, 
case when dayname(date_day) in ('Saturday', 'Sunday') then TRUE else FALSE end as is_weekend,
month(date_day) as month_number,
monthname(date_day) as month_name,
quarter(date_day) as quarter,
year(date_day) as year,
'2023/24' as season

from date_spine 