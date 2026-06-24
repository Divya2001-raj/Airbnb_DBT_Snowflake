{{config(
    materialized='ephemeral'
)}}

with hosts as (
    select
        HOST_ID,
        HOST_NAME,
        HOST_SINCE,
        IS_SUPERHOST,
        RESPONSE_RATE_TAG,
        created_at_hosts
        from 
        {{ref('obt')}}
)
select * from hosts