-- QUERY 3
-- Group students by the courses that they are enrolled in
SELECT
c.course_name,
s.student_name
FROM student s
JOIN students_courses sc ON sc.students_course_id = s.student_id
JOIN course c ON sc.courses_student_id = c.course_id
ORDER BY c.course_id