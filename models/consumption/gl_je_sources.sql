{{ config(materialized="view", unique_key="integration_id") }}
 
select
  *,
  je_source_name as integration_id
from {{ source("ebs", "gl_je_sources") }}