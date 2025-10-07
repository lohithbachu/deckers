{{ config(materialized="view", unique_key="integration_id") }}
 
select
  *,
  ledger_id || code_combination_id || currency_code || period_name || actual_flag || budget_version_id || encumbrance_type_id ||translated_flag as integration_id
from {{ source("ebs", "gl_balances") }}