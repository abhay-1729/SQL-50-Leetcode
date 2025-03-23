# Write your MySQL query statement below

Select p.product_id, IFNULL(Round(Sum(p.price*u.units)/Sum(u.units),2),0)As
average_price
From Prices p
Left Join UnitsSold u
ON p.product_id=u.product_id
AND u.purchase_date>=p.start_date
AND u.purchase_date<=p.end_date
Group By p.product_id;