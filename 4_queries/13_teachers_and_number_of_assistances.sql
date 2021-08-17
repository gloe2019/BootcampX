SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort, count(assistance_requests) as total_assistances 
FROM assistance_requests 
JOIN teachers ON teacher_id=teachers.id 
JOIN students ON student_id=students.id 
JOIN cohorts ON students.cohort_id=cohorts.id 
WHERE cohorts.name='JUL02' 
GROUP BY teachers.name, cohorts.name 
ORDER BY teacher;
