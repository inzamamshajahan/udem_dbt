with MART_FULLMOON_REVIEWS as (
    select * from {{ ref('mart_fullmoon_reviews')}}
)
SELECT 
is_full_moon,
review_date,
COUNT(*) as reviews
FROM 
MART_FULLMOON_REVIEWS
group by 
is_full_moon,
review_sentiment
ORDER BY 
is_full_moon,
review_sentiment