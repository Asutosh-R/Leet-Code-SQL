/* Write your T-SQL query statement below */
SELECT w.id
FROM Weather w
JOIN Weather wn on w.recordDate= DATEADD(DAY,1,wn.recordDate)
WHERE w.temperature > wn.temperature;