with f_business_review as (
    select * from {{ ref('fact_business_review') }}
),
d_review as (
    select * from {{ ref('dim_review') }}
),
d_business as (
    select * from {{ ref('dim_business') }}
),
d_user as (
    select * from {{ ref('dim_user') }}
)
select
    d_review.*,
    d_business.*,
    d_user.*,
    f.stars,
    f.useful,
    f.funny,
    f.cool

from f_business_review as f
    left join d_review on f.review_id = d_review.review_id
    left join d_business on f.business_id = d_business.business_id
    left join d_user on f.user_id = d_user.user_id