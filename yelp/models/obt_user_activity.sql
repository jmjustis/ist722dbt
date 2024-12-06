with f_user_activity as (
    select * from {{ ref('fact_user_activity') }}
),
d_user as (
    select * from {{ ref('dim_user') }}
)
select
    d_user.*,
    f.review_count,
    f.useful,
    f.funny,
    f.cool,
    f.yelping_since

from f_user_activity as f
    left join d_user on f.user_id = d_user.user_id