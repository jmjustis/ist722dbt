with review as (
    select * from {{source('yelp','Review')}}
),

user as (
    select * from {{source('yelp','User')}}
),

business as (
    select * from {{source('yelp','Business')}}
)

select
    r.review_id,
    b.business_id,
    u.user_id,
    r.stars,
    r.useful,
    r.funny,
    r.cool


from review r
    join user u on r.user_id = u.user_id
    join business b on b.business_id = r.business_id