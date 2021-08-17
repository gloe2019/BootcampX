SELECT cohorts.name AS name, SUM(completed_at - started_at) as total_duration 
FROM assistance_requests 
JOIN students ON students.id=assistance_requests.student_id  
JOIN cohorts ON cohort_id=cohorts.id 
GROUP BY cohorts.name 
ORDER BY total_duration;
