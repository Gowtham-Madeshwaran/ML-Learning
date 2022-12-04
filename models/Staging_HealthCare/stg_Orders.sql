with source as(
    select * from {{ source('HealthCare_Source', 'Order_Details') }}
),
Order_CTE as (
    select Order_ID,
    Product_ID,
    Customer_ID
    from source
)

select * from Order_CTE