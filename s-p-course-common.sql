-- Query 5
-- Finding which student and professor have the most courses in common
SELECT
p.professor_name,
c.course_name,
COUNT(sc.students_course_id) AS 'number of students'
FROM professor p
JOIN course c ON p.professors_course_id = c.course_id
JOIN students_courses sc ON sc.courses_student_id = c.course_id
JOIN students_professors sp ON sp.professors_student_id = p.professor_id
WHERE sp.students_professor_id = sc.students_course_id
AND p.professor_id = 1
UNION
SELECT
p.professor_name,
c.course_name,
COUNT(sc.students_course_id) AS 'number of students'
FROM professor p
JOIN course c ON p.professors_course_id = c.course_id
JOIN students_courses sc ON sc.courses_student_id = c.course_id
JOIN students_professors sp ON sp.professors_student_id = p.professor_id
WHERE sp.students_professor_id = sc.students_course_id
AND p.professor_id = 2
UNION
SELECT
p.professor_name,
c.course_name,
COUNT(sc.students_course_id) AS 'number of students'
FROM professor p
JOIN course c ON p.professors_course_id = c.course_id
JOIN students_courses sc ON sc.courses_student_id = c.course_id
JOIN students_professors sp ON sp.professors_student_id = p.professor_id
WHERE sp.students_professor_id = sc.students_course_id
AND p.professor_id = 3
UNION
SELECT
p.professor_name,
c.course_name,
COUNT(sc.students_course_id) AS 'number of students'
FROM professor p
JOIN course c ON p.professors_course_id = c.course_id
JOIN students_courses sc ON sc.courses_student_id = c.course_id
JOIN students_professors sp ON sp.professors_student_id = p.professor_id
WHERE sp.students_professor_id = sc.students_course_id
AND p.professor_id = 4
UNION
SELECT
p.professor_name,
c.course_name,
COUNT(sc.students_course_id) AS 'number of students'
FROM professor p
JOIN course c ON p.professors_course_id = c.course_id
JOIN students_courses sc ON sc.courses_student_id = c.course_id
JOIN students_professors sp ON sp.professors_student_id = p.professor_id
WHERE sp.students_professor_id = sc.students_course_id
AND p.professor_id = 5