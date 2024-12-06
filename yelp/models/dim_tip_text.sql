with tip as (
    select * from {{ source('yelp','Tip')}}
)
select {{ dbt_utils.generate_surrogate_key(['tip.tip_id']) }} as tipkey,
    tip.*
from tip