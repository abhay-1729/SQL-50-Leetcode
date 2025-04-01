# Write your MySQL query statement below

Select d.name as Department, 
        e1.name as Employee, 
        e1.salary as Salary
From Employee e1 inner join Department d
on e1.departmentID = d.id
where 3 > (
    Select count(distinct (e2.salary))
    from Employee e2
    where e2.Salary> e1.Salary and 
    e1.DepartmentId=e2.DepartmentId
)