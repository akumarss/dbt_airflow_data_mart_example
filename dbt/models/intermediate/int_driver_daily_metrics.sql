select
  driver_id,
  trip_date,
  count(*) as trips,
  sum(fare_amount) as earnings
from {{ ref('stg_trips') }}
group by 1,2