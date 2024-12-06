with user as (
    select * from {{ source('yelp','User')}}
)
select {{ dbt_utils.generate_surrogate_key(['user.user_id']) }} as userkey,
    user.*
from user