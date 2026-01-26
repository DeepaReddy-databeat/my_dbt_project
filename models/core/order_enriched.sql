SELECT
   o.order_id,
   o.order_name,
   o.address,
   o.price,
   s.order_type,
   s.priority,
   s.account_manager,
   s.region
FROM {{ ref('order') }} o
LEFT JOIN {{ ref('order_details') }} s
ON o.order_id = s.order_id
