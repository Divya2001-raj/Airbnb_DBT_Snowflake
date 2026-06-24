{{config(
    materialized='incremental',
    unique_key='HOST_ID'
)}}

select 
host_id,
is_superhost,
Replace(HOST_NAME, ' ', '_') as HOST_NAME,
host_since,
response_rate,
case 
when response_rate > 95 then 'Very Good'
when response_rate > 80 then 'Good'
when response_rate > 60 then 'Fair'
else 'Poor'
end as RESPONSE_RATE_TAG,
created_at
from {{ref('bronze_hosts')}}
