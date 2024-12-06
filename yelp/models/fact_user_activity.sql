with user as (
    select * from {{source('yelp','User')}}
)

select
    u.user_id,
    u.review_count,
    u.useful,
    u.funny,
    u.cool,
    u.yelping_since

from user u