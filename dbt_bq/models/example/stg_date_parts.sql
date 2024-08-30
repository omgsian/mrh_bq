select
    o.order_id,
    c.customer_id,
    c.full_name,
    p.product_id,
    p.product_name,
    o.quantity,
    {{ get_date_parts('Order_Date') }} as date_extract
from
    mrh_dataset.orders as o
inner join
    {{ ref("stg_customers") }} as c
    on o.customer_id = c.customer_id
inner join
    mrh_dataset.products as p
    on o.product_id = p.product_id
