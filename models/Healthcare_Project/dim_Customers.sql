{{
    config(
        materialized='table'
    )
}}

with Customer as (
    select * from {{ ref('stg_Customer') }}
),
Orders as (
 select * from {{ ref('stg_Orders') }}
),

Product as (
    select * from {{ ref('stg_Product') }}
),

final as (
select
 Orders.Product_ID,
 Orders.Customer_ID,
 Product.Product_Name,
 Customer.Customer_Name
 from Orders
 left join Product on Orders.Product_ID= Product.Product_ID
 left join Customer on Orders.Customer_ID=Customer.Customer_ID

)

select * from final