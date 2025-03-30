# Write your MySQL query statement below

Select Distinct employee_id, department_id
From Employee
Where employee_id In (
    Select employee_id
    From Employee
    Group by employee_id
    having count(*)=1
) OR primary_flag='Y'
Order by employee_id