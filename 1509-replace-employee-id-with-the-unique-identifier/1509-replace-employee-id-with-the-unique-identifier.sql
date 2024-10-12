# Write your MySQL query statement below
SELECT unique_id, name
FROM Employees emp
LEFT JOIN EmployeeUNI  empu ON emp.id= empu.id;