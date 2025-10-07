{{ config(materialized="view", unique_key="integration_id") }}
 
select
  *,
  period_set_name || period_name as integration_id
from {{ source("ebs", "gl_periods") }}