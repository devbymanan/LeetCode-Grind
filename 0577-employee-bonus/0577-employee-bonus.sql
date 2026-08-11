/* Write your T-SQL query statement below */
SELECT e.name, b.bonus 
FROM Employee AS e
LEFT JOIN Bonus AS b
on e.empId=b.empId
where b.bonus < 1000 OR b.bonus IS NULL;
