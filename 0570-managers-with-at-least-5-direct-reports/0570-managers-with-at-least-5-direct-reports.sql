# Write your MySQL query statement below
SELECT e.name
FROM Employee e
JOIN Employee en on e.id= en.managerId
GROUP BY e.id 
HAVING COUNT(en.managerId) >= 5