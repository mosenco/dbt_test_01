with 
payments as (
    select *
    from {{ ref('stg_stripe_payments') }}
),
orders as (
    select *
    from {{ ref('stg_orders') }}
)


select
    order_id,
    customer_id,
    coalesce(amount,0) as amount 

from payments
left join orders using (order_id)
