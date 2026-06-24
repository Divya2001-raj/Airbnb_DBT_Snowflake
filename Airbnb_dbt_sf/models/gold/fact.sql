{% set configs=[
    {
    "table" : "AIRBNB.Gold.obt",
    "columns" : "gold_obt.booking_id,gold_obt.listing_id,gold_obt.HOST_ID,gold_obt.TOTAL_BOOKING_AMOUNT,gold_obt.cleaning_fee,gold_obt.service_fee,gold_obt.bedrooms,gold_obt.bathrooms,gold_obt.price_per_night,gold_obt.response_rate,gold_obt.created_at",
    "alias" : "gold_obt"
    },
    {
    "table" : "AIRBNB.Gold.dim_listings",
    "columns" : "",
    "alias" : "dim_listings",
    "join_condition": "gold_obt.listing_id = dim_listings.listing_id"
    },
    {
    "table" : "AIRBNB.Gold.dim_hosts",
    "columns" : "",
    "alias" : "dim_hosts",
    "join_condition": "gold_obt.HOST_ID = dim_hosts.host_id"
    }

]%}


select 
{{configs[0]['columns']}}
from 
{% for config in configs %}
{% if loop.first %}
    {{config['table']}} as {{config['alias']}}
{% else %}
    left join {{config['table']}} as {{config['alias']}}
    on {{config['join_condition']}} 
    {% endif %}
    {% endfor %}