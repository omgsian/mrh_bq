
{{ config(materialized='table') }}

with stg_customers as (
    SELECT
        customer_id, 
        CONCAT(first_name,' ', last_name) AS full_name,
        email AS email_address,
        address AS billing_address
    FROM mrh_dataset.customers
)

SELECT * FROM stg_customers