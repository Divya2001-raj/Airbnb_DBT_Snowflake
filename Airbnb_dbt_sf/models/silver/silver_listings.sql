{{config(
    materialized='incremental',
    unique_key='LISTING_ID'
)}}

select
HOST_ID as host_id,
LISTING_ID,
PROPERTY_TYPE,
ROOM_TYPE,
CITY,
COUNTRY,
BATHROOMS,
BEDROOMS,
cast(PRICE_PER_NIGHT as int) as PRICE_PER_NIGHT,
{{tag('PRICE_PER_NIGHT')}} AS PRICE_TAG,
created_at
from {{ref('bronze_listings')}}