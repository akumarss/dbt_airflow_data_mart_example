select
  trip_id,
  driver_id,
  status,
  fare_amount,
  date(trip_start_time) as trip_date
from {{ source('raw','trips') }}