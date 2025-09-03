select card_name, (MAX(issued_amount) - MIN(issued_amount)) as difference
from monthly_cards_issued
group by card_name
order by difference desc; -- I always forget this !!!
