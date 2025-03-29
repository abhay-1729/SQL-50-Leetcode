# Write your MySQL query statement below

Select activity_date as day, Count(Distinct user_id) as active_users
From Activity
WHERE activity_date > DATE_SUB('2019-07-27', INTERVAL 30 DAY) 
      AND activity_date <= '2019-07-27'
group by activity_date;