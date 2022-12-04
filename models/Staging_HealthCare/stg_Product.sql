with source as(
    select * from {{ source('HealthCare_Source', 'Product_Details') }}
),
Product_CTE as (
    select Product_ID,
    Product_Name
    from source
)

select * from Product_CTE