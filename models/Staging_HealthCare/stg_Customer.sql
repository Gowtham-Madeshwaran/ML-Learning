with source as(
    select * from {{ source('HealthCare_Source', 'Customer_Details') }}
),
Customer_CTE as (
    select Customer_ID,
    Customer_Name
    from source
)

select * from Customer_CTE