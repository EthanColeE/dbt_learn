{{ dbt_utils.date_spine(
    datepart="day",
    start_date="to_date('2016-01-01' as date)",
    end_date="date_add(current_date(),INTERVAL 1 week)"
   )
}}