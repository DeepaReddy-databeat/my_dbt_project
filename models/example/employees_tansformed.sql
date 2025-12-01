{{ config(materialized='table') }}

select
    EmployeeID,
    FirstName,
    LastName,
    upper(Department) as Department,
    datediff(year, JoinDate, getdate()) as YearsAtCompany
from {{ ref('employee') }}
