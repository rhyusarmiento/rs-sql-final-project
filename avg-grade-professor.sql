-- QUERY 1
-- The average grade that is given by each professor
SELECT
AVG(g.grade_percent),
professor_name
FROM grade g
JOIN professor p ON g.grades_professor_id = p.professor_id
WHERE p.professor_id = 1
UNION
SELECT
AVG(g.grade_percent),
professor_name
FROM grade g
JOIN professor p ON g.grades_professor_id = p.professor_id
WHERE p.professor_id = 2
UNION
SELECT
AVG(g.grade_percent),
professor_name
FROM grade g
JOIN professor p ON g.grades_professor_id = p.professor_id
WHERE p.professor_id = 3
UNION
SELECT
AVG(g.grade_percent),
professor_name
FROM grade g
JOIN professor p ON g.grades_professor_id = p.professor_id
WHERE p.professor_id = 4
UNION
SELECT
AVG(g.grade_percent),
professor_name
FROM grade g
JOIN professor p ON g.grades_professor_id = p.professor_id
WHERE p.professor_id = 5