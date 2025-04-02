# Write your MySQL query statement below

Select user_id,
    CONCAT(Upper(Left(name,1)), Lower(Right(name, Length(name)-1))) as name
From Users
Order by user_id
 