{{ config(materialized='table') }}

select
    order_name ,
    address,
    cast(sum(price) as float) as price
from {{ ref('order') }}
group by order_name,address
