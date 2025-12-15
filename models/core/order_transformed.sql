{{ config(materialized='table') }}

select
    order_name ,
    address,
    sum(price) as price
from {{ ref('order') }}
group by order_name,address
