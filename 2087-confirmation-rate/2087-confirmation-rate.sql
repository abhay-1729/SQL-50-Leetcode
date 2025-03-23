# Write your MySQL query statement below

Select s.user_id, IFNULL(Round(sum(action="Confirmed")/Count(*),2),0.00) as confirmation_rate
From Signups s
Left join Confirmations c
on s.user_id=c.user_id
group by s.user_id;