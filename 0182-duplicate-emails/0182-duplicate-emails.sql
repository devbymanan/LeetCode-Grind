/* Write your T-SQL query statement below */
Select DISTINCT a.email as Email
FROM Person as a
Join Person as b
on a.email=b.email
where a.id != b.id