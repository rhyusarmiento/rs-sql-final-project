USE `sql_project`;
-- -----------------------------------------------------
-- Table `sql_project`.`student`
-- -----------------------------------------------------
CREATE TABLE `sql_project`.`student` (
  `student_id` INT NOT NULL,
  `student_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`student_id`))


-- -----------------------------------------------------
-- Table `sql_project`.`course`
-- -----------------------------------------------------
CREATE TABLE `sql_project`.`course` (
  `course_id` INT NOT NULL,
  `course_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`course_id`))


-- -----------------------------------------------------
-- Table `sql_project`.`professor`
-- -----------------------------------------------------
CREATE TABLE `sql_project`.`professor` (
  `professor_id` INT NOT NULL,
  `professor_name` VARCHAR(45) NOT NULL,
  `professors_course_id` INT NULL,
  PRIMARY KEY (`professor_id`),
  INDEX `professors_course_id_idx` (`professors_course_id` ASC) VISIBLE,
  CONSTRAINT `professors_course_id`
    FOREIGN KEY (`professors_course_id`)
    REFERENCES `sql_project`.`course` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)


-- -----------------------------------------------------
-- Table `sql_project`.`grade`
-- -----------------------------------------------------
CREATE TABLE `sql_project`.`grade` (
  `grade_id` INT NOT NULL AUTO_INCREMENT,
  `grade_percent` DECIMAL(5,2) NOT NULL,
  `grades_student_id` INT NOT NULL,
  `grades_professor_id` INT NOT NULL,
  `grades_course_id` INT NOT NULL,
  UNIQUE INDEX `grade_id_UNIQUE` (`grade_id` ASC) VISIBLE,
  PRIMARY KEY (`grade_id`),
  INDEX `grades_student_id_idx` (`grades_student_id` ASC) VISIBLE,
  INDEX `grades_professor_id_idx` (`grades_professor_id` ASC) VISIBLE,
  INDEX `grades_course_id_idx` (`grades_course_id` ASC) VISIBLE,
  CONSTRAINT `grades_student_id`
    FOREIGN KEY (`grades_student_id`)
    REFERENCES `sql_project`.`student` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `grades_professor_id`
    FOREIGN KEY (`grades_professor_id`)
    REFERENCES `sql_project`.`professor` (`professor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `grades_course_id`
    FOREIGN KEY (`grades_course_id`)
    REFERENCES `sql_project`.`course` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `sql_project`.`students_professors`
-- -----------------------------------------------------
CREATE TABLE `sql_project`.`students_professors` (
  `students_professor_id` INT NOT NULL,
  `professors_student_id` INT NOT NULL,
  INDEX `professors_student_id_idx` (`professors_student_id` ASC) VISIBLE,
  INDEX `students_professor_id_idx` (`students_professor_id` ASC) VISIBLE,
  CONSTRAINT `students_professor_id`
    FOREIGN KEY (`students_professor_id`)
    REFERENCES `sql_project`.`student` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `professors_student_id`
    FOREIGN KEY (`professors_student_id`)
    REFERENCES `sql_project`.`professor` (`professor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)


-- -----------------------------------------------------
-- Table `sql_project`.`students_courses`
-- -----------------------------------------------------
CREATE TABLE `sql_project`.`students_courses` (
  `students_course_id` INT NOT NULL,
  `courses_student_id` INT NOT NULL,
  INDEX `students_course_id_idx` (`students_course_id` ASC) VISIBLE,
  INDEX `courses_student_id_idx` (`courses_student_id` ASC) VISIBLE,
  CONSTRAINT `students_course_id`
    FOREIGN KEY (`students_course_id`)
    REFERENCES `sql_project`.`student` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `courses_student_id`
    FOREIGN KEY (`courses_student_id`)
    REFERENCES `sql_project`.`course` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)


-- deleted
-- -----------------------------------------------------
-- Table `sql_project`.`students_grades`
-- -----------------------------------------------------
-- CREATE TABLE `sql_project`.`students_grades` (
--   `students_grade_id` INT NOT NULL,
--   `grades_student_id` INT NOT NULL,
--   INDEX `students_grade_id_idx` (`students_grade_id` ASC) VISIBLE,
--   INDEX `grades_student_id_idx` (`grades_student_id` ASC) VISIBLE,
--   CONSTRAINT `students_grade_id`
--     FOREIGN KEY (`students_grade_id`)
--     REFERENCES `sql_project`.`student` (`student_id`)
--     ON DELETE NO ACTION
--     ON UPDATE NO ACTION,
--   CONSTRAINT `grades_student_id`
--     FOREIGN KEY (`grades_student_id`)
--     REFERENCES `sql_project`.`grade` (`grade_id`)
--     ON DELETE CASCADE
--     ON UPDATE CASCADE)