select
    EmployeeID,
    FirstName,
    LastName,
    Age,
    Department,
    JoinDate
from {{ source('dbo', 'Employees') }}

