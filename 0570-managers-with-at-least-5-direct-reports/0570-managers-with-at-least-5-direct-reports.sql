# Write your MySQL query statement below

Select e1.name
From Employee e1
Inner join Employee e2
ON e1.id=e2.managerId
Group by e2.managerId
Having Count(e2.managerId)>=5;