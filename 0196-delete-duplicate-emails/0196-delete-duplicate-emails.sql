# Write your MySQL query statement below


Delete p1
From Person p1 Inner Join Person p2
where p1.email=p2.email and
p1.id> p2.id