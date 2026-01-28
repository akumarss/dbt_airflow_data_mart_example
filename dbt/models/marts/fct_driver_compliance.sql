select
  driver_id,
  trip_date,
  trips,
  earnings,
  case when trips < 3 then 'AT_RISK' else 'GOOD' end as compliance_status
from {{ ref('int_driver_daily_metrics') }}