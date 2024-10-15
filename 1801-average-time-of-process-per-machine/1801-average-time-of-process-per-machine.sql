/* Write your T-SQL query statement below */
SELECT a.machine_id, ROUND(AVG(a.timestamp - an.timestamp), 3) AS processing_time
FROM Activity a
JOIN Activity an 
    ON a.machine_id = an.machine_id 
    AND a.process_id = an.process_id
    AND a.activity_type = 'end'
    AND an.activity_type = 'start'
GROUP BY a.machine_id;
