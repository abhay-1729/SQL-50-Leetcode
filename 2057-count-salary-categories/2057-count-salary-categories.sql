# Write your MySQL query statement below

Select 
    "Low Salary" as category,
    Count(income) as accounts_count
From Accounts
Where income< 20000
Union
Select 
    "Average Salary" as category,
    Count(income) as accounts_count
From Accounts
Where income>= 20000 AND income <= 50000
Union
Select 
    "High Salary" as category,
    Count(income) as accounts_count
From Accounts
Where income>50000