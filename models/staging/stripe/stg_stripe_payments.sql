select
    orderid as order_id,
    sum(amount) as amount

from `dbt-tutorial`.stripe.payment
group by orderid