# Write your MySQL query statement below
SELECT machine_id, round(avg(diff),3) processing_time
FROM  (SELECT a.machine_id, a.process_id, (a.timestamp-an.timestamp) diff
		FROM Activity a
		join activity an ON a.machine_id= an.machine_id AND a.process_id= an.process_id
		where a.machine_id =an.machine_id and a.process_id=an.process_id and a.activity_type= 'end' and an.activity_type= 'start') process
GROUP BY machine_id;

