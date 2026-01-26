{% snapshot order_snapshot %}

{{ 
    config(
      target_schema='dbo',
      unique_key='order_id',
      strategy='check',
      check_cols=['price', 'address']
    ) 
}}

SELECT
    order_id,
    price,
    address
FROM {{ ref('order') }}

{% endsnapshot %}
