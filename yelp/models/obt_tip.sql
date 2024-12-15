with f_tip as (
    select * from {{ ref('fact_tip') }}
),
d_tip as (
    select * from {{ ref('dim_tip_text') }}
),
d_business as (
    select * from {{ ref('dim_business') }}
),
d_user as (
    select * from {{ ref('dim_user') }}
)
select
    d_tip.*,
    d_business.*,
    d_user.*,
    f.compliment_count,
    f.text

from f_business_review as f
    left join d_tip on f.tip_id = d_tip.tip_id
    left join d_business on f.business_id = d_business.business_id
    left join d_user on f.user_id = d_user.user_id