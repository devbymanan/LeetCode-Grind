/* Write your T-SQL query statement below */
SELECT e.name as Employee
FROM Employee as e
JOIN Employee as m
on m.id=e.managerId
WHERE e.salary > m.salary