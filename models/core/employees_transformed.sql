{{ config(materialized='table') }}

select
    EmployeeID as employee_id,
    FirstName as first_name,
    LastName as last_name,
    Age as age,
    upper(Department)as department,
    datediff(year, JoinDate, getdate()) as years_at_company
from {{ ref('employee') }}
