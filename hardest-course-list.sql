-- QUERY 4
-- report of courses and their average grades, sorted by the most challenging course (course with the lowest average grade) to the easiest course
SELECT
c.course_name,
AVG(g.grade_percent)
FROM grade g
JOIN course c ON g.grades_course_id = c.course_id
GROUP BY c.course_id
ORDER BY AVG(g.grade_percent)