select
    OrderId as order_id,
    OrderName as order_name,
    Address as address,
    cast(Price  as float) as price
from {{ source('dbo', 'Orders') }}
