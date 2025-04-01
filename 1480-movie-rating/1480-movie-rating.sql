# Write your MySQL query statement below

(Select name as results
from Users
inner join MovieRating Using(user_id)
Group by user_id
order by count(rating) desc, name
limit 1)

Union all 

(Select title as results
from Movies
inner join MovieRating using(movie_id) 
where month(created_at) ='02' and year(created_at)='2020'
group by title
order by avg(rating) desc, title
limit 1
)

