# Write your MySQL query statement below
Select MAx(e1.salary) as SecondHighestSalary
From Employee e1 Inner Join Employee e2
On e1.salary< e2.salary;