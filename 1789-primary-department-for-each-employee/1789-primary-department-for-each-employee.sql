/* Write your T-SQL query statement below */
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'

UNION

SELECT DISTINCT employee_id, department_id
FROM Employee
WHERE primary_flag = 'N'
  AND employee_id NOT IN (
      SELECT employee_id
      FROM Employee
      WHERE primary_flag = 'Y'
  );