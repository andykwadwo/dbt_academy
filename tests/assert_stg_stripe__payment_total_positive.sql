select
    order_id,
    SUM(payment_amount) as total_amount
from {{ ref('stg_stripe__payments') }}
group by 1
having SUM(payment_amount) < 0