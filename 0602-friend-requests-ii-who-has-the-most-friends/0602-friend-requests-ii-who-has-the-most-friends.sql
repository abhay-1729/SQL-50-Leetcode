# Write your MySQL query statement below


Select id, count(*) as num
From(
    Select requester_id as id from RequestAccepted

    Union all 

    Select accepter_id from RequestAccepted
) as friend_count
group by id
order by num desc
limit 1;