# Write your MySQL query statement below
Select e.employee_id, 
    e.name, 
    Count(e2.employee_id) as reports_count, 
    Round(AVG(e2.age)) as average_age
From Employees e
Inner Join Employees e2
on e.employee_id=e2.reports_to
group by e.employee_id, e.name
order by employee_id