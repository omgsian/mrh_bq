SELECT 
    o.Order_ID, 
    c.Customer_ID,
    c.full_name, 
    p.Product_ID,
    p.Product_Name,
    o.Quantity,
    o.Order_Date
FROM
    mrh_dataset.orders as o
JOIN
    {{ ref("stg_customers") }} AS c ON (o.Customer_ID = c.Customer_ID)
JOIN
    mrh_dataset.products p ON o.Product_ID = p.product_id