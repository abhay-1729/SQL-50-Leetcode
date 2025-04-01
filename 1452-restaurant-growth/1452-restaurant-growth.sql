# Write your MySQL query statement below

Select visited_on,
        (
            Select sum(amount)
            from Customer
            where visited_on between date_sub(c.visited_on, Interval 6 day)
            And c.visited_on
         ) as amount,
        Round((
            select sum(amount)/7
            from Customer
            where visited_on between date_sub(c.visited_on, interval 6 day)
            and c.visited_on
        ),2) as average_amount
From Customer c
where visited_on >= (
    select date_add(min(visited_on), Interval 6 day)
    from customer
)
group by visited_on
order by visited_on