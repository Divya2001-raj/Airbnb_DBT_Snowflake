{% set configs=[
    {
    "table" : "AIRBNB.Silver.SILVER_BOOKINGS",
    "columns" : "silver_bookings.*",
    "alias" : "silver_bookings"
    },
    {
    "table" : "AIRBNB.Silver.SILVER_LISTINGS",
    "columns" : "silver_listings.HOST_ID,silver_listings.PROPERTY_TYPE, silver_listings.ROOM_TYPE, silver_listings.CITY, silver_listings.COUNTRY, silver_listings.BATHROOMS, silver_listings.BEDROOMS, silver_listings.PRICE_PER_NIGHT, silver_listings.PRICE_TAG,silver_listings.CREATED_AT as created_at_listings",
    "alias" : "silver_listings",
    "join_condition": "silver_bookings.listing_id = silver_listings.listing_id"
    },
    {
    "table" : "AIRBNB.Silver.SILVER_HOSTS",
    "columns" : "silver_hosts.HOST_NAME, silver_hosts.HOST_SINCE, silver_hosts.IS_SUPERHOST, silver_hosts.RESPONSE_RATE,silver_hosts.RESPONSE_RATE_TAG, silver_hosts.CREATED_AT as created_at_hosts",
    "alias" : "silver_hosts",
    "join_condition": "silver_listings.host_id = silver_hosts.host_id"
    }

]%}


select 
    {% for config in configs %}
    {{ config['columns'] }}{% if not loop.last %},{% endif %}
    {% endfor %}
from 
{% for config in configs %}
{% if loop.first %}
    {{config['table']}} as {{config['alias']}}
{% else %}
    left join {{config['table']}} as {{config['alias']}}
    on {{config['join_condition']}} 
    {% endif %}
    {% endfor %}