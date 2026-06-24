{{config(
    materialized='ephemeral'
)}}

with listings as (
    select
        LISTING_ID,
        property_type,
        room_type,  
        city,
        country,        
        created_at_listings,
        price_tag
        from 
        {{ref('obt')}}
)
select * from listings