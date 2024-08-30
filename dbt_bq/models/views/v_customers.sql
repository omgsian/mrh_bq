{{ config(materialized='view') }}

select
    customer_id,
    email as email_address,
    address as billing_address,
    CONCAT(first_name, ' ', last_name) as full_name
from mrh_dataset.customers
