WITH fist_last_posts AS (
SELECT user_id, MIN(post_date) AS first_post, MAX(post_date) AS last_post
FROM posts
WHERE EXTRACT (YEAR FROM post_date) = 2021
GROUP BY user_id
HAVING COUNT(post_id)>1)

SELECT user_id, EXTRACT (DAYS FROM last_post - first_post) AS days_between
FROM fist_last_posts
WHERE EXTRACT (DAYS FROM last_post - first_post) > 0
