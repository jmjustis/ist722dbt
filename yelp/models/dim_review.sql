with review as (
    select * from {{ source('yelp','Review')}}
)
select {{ dbt_utils.generate_surrogate_key(['review.review_id']) }} as reviewkey,
    review.*
from review