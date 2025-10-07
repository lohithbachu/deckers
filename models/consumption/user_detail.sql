{{ config(materialized="view", unique_key="integration_id") }}
 
select
  *,
  user_id  as integration_id
from {{ source("ebs", "fnd_user") }}