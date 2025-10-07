{{ config(materialized="view", unique_key="integration_id") }}
 
select
  *,
  je_batch_id as integration_id
from {{ source("ebs", "gl_je_batches") }}