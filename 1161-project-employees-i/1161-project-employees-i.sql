# Write your MySQL query statement below

Select p.project_id, Round(AVG(e.experience_years),2)As average_years
From  Project p
Left Join Employee e
On p.employee_id=e.employee_id
Group By p.project_id;