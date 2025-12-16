select *
from {{ ref('order_transformed') }}
where total_price < 0
