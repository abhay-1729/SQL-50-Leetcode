# Write your MySQL query statement below

Select *,
    if(x+y>z AND x+z>y AND y+z>x, "Yes", "No") As triangle
From Triangle;