with checkin as (
    select * from {{source('yelp','Checkin')}}
),

business as (
    select * from {{source('yelp','Business')}}
)

select
    c.checkin_id,
    b.business_id,
    c.checkin_date


from checkin c
    join business b on b.business_id = c.business_id