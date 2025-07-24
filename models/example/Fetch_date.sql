SELECT
    o.Order_ID,
    c.Customer_ID,
    c.Customer_Name,
    p.Product_Name,
    o.Quantity,
    o.Order_Date,
    {{ get_date_parts('o.Order_Date') }}
FROM
    raw.Orders o
JOIN
    {{ ref('stg_customers') }} c ON o.Customer_ID = c.customer_id
JOIN
    raw.Products p ON o.Product_ID = p.Product_ID