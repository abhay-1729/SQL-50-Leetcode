# Write your MySQL query statement below

Select 
    Case 
        when 
            id= (Select Max(id) From Seat) And Mod(id, 2)= 1
            then id
        when 
            mod(id, 2)=1
            then id+1
        Else
            id-1
    End as id, student
From Seat
Order By id