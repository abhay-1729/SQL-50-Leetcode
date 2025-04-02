# Write your MySQL query statement below

 Select sell_date, 
        Count(Distinct product) as num_sold,
        Group_concat(
            Distinct product
            order by product
            SEPARATOR ','
        ) AS products
From Activities
Group by sell_date
Order by sell_date, product