# Write your MySQL query statement below

Select 
    product_id,
    year as first_year,
    quantity,
    price
From Sales
Where(product_id, year) IN(
    Select product_id, MIN(year) As f_year
    From Sales
    group by product_id
);
