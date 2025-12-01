{{ config(materialized='table') }}

select
    EmployeeID as employee_id,
    FirstName as first_name,
    LastName as last_name,
    upper(Department)as department,
    datediff(year, JoinDate, getdate()) as yearsatcompany
from {{ ref('employee') }}
