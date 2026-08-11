# Write your MySQL query statement below
SELECT a.actor_id , a.director_id
FROM ActorDirector as a
GROUP BY a.actor_id, a.director_id
having count(*)>=3 