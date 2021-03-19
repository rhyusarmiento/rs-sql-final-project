USE sql_project;


INSERT INTO student(student_name)
VALUES ('Rhyu');

INSERT INTO student(student_name)
VALUES ('Jon');

INSERT INTO student(student_name)
VALUES ('Dave');

-- inter table
INSERT INTO students_courses(students_course_id, courses_student_id)
VALUES (4, 1);

INSERT INTO students_courses(students_course_id, courses_student_id)
VALUES (5, 1);

INSERT INTO students_courses(students_course_id, courses_student_id)
VALUES (1, 2);
-- end

INSERT INTO course(course_name)
VALUES ('Genetics');

INSERT INTO course(course_name)
VALUES ('Calc');

-- inter table
INSERT INTO students_professors(students_professor_id, professors_student_id)
VALUES (4, 2);

INSERT INTO students_professors(students_professor_id, professors_student_id)
VALUES (5, 1);

INSERT INTO students_professors(students_professor_id, professors_student_id)
VALUES (1, 3);
-- end

INSERT INTO professor(professor_name, professors_course_id)
VALUES ('Dr. joe', 1);

INSERT INTO professor(professor_name, professors_course_id)
VALUES ('Dr. Lex', 1);

INSERT INTO professor(professor_name, professors_course_id)
VALUES ('Mr. Neuton', 2);

INSERT INTO grade(grade_letter, grades_course_id, grades_student_id)
VALUES ('A-', 1, 4);

INSERT INTO grade(grade_letter, grades_course_id, grades_student_id)
VALUES ('C+', 1, 5);

INSERT INTO grade(grade_letter, grades_course_id, grades_student_id)
VALUES ('A', 2, 1);