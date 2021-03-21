-- QUERY 2
-- The top grades for each student
SELECT
MAX(g.grade_percent),
s.student_name
FROM grade g
JOIN student s ON g.grades_student_id = s.student_id
WHERE s.student_id = 1
UNION
SELECT
MAX(g.grade_percent),
s.student_name
FROM grade g
JOIN student s ON g.grades_student_id = s.student_id
WHERE s.student_id = 4
UNION
SELECT
MAX(g.grade_percent),
s.student_name
FROM grade g
JOIN student s ON g.grades_student_id = s.student_id
WHERE s.student_id = 5
UNION
SELECT
MAX(g.grade_percent),
s.student_name
FROM grade g
JOIN student s ON g.grades_student_id = s.student_id
WHERE s.student_id = 6
UNION
SELECT
MAX(g.grade_percent),
s.student_name
FROM grade g
JOIN student s ON g.grades_student_id = s.student_id
WHERE s.student_id = 7
UNION
SELECT
MAX(g.grade_percent),
s.student_name
FROM grade g
JOIN student s ON g.grades_student_id = s.student_id
WHERE s.student_id = 8
UNION
SELECT
MAX(g.grade_percent),
s.student_name
FROM grade g
JOIN student s ON g.grades_student_id = s.student_id
WHERE s.student_id = 9
UNION
SELECT
MAX(g.grade_percent),
s.student_name
FROM grade g
JOIN student s ON g.grades_student_id = s.student_id
WHERE s.student_id = 10