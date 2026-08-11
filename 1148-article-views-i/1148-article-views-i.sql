/* Write your T-SQL query statement below */
SELECT DISTINCT a.author_id as id
FROM Views as a
WHERE a.viewer_id = a.author_id
order by a.author_id asc
