-- Write your PostgreSQL query statement below
select sign.user_id, ROUND(
        COALESCE(
            AVG(
                CASE
                    WHEN conf.action = 'confirmed' THEN 1.0
                    ELSE 0.0
                END
            ),
            0
        )::numeric,
        2
    ) AS confirmation_rate
from Signups sign
left join Confirmations conf
on sign.user_id = conf.user_id
group by sign.user_id;