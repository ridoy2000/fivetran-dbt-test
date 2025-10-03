{{ config(materialized='table') }}

select
    id,
    first_name,
    last_name,
    email,
    registration_date,
    concat(first_name, ' ', last_name) as full_name
from {{ source('fivetran_mysql_test', 'customers') }}