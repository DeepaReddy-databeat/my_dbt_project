{{ config(materialized='table') }}
select
    order_name ,
    address,
    sum(price) as total_price
from {{ ref('order') }}
group by order_name,address
