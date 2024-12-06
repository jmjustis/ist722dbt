with business as (
    select * from {{ source('yelp','Business')}}
)
select {{ dbt_utils.generate_surrogate_key(['business.business_id']) }} as businesskey,
    business.*
from business