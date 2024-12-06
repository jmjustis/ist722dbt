with tip as (
    select * from {{source('yelp','Tip')}}
),

user as (
    select * from {{source('yelp','User')}}
),

business as (
    select * from {{source('yelp','Business')}}
)

select
    t.tip_id,
    b.business_id,
    u.user_id,
    t.date,
    t.compliment_count,
    t.text


from tip t
    join user u on t.user_id = u.user_id
    join business b on b.business_id = t.business_id