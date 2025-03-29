# Write your MySQL query statement below


Select Max(num) as num
From MyNumbers
Where num IN(
    Select num
    From MyNumbers
    Group BY num
    Having Count(num)=1
);