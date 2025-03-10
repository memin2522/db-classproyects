CREATE SCHEMA IF NOT EXISTS `mydb`;
USE `mydb` ;

CREATE TABLE IF NOT EXISTS `mydb`.`teacher` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE IF NOT EXISTS `mydb`.`course` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `teacher_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_course_teacher1`
    FOREIGN KEY (`teacher_id`)
    REFERENCES `mydb`.`teacher` (`id`));
    
CREATE TABLE IF NOT EXISTS `mydb`.`student` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE IF NOT EXISTS `mydb`.`student_course` (
  `student_id` INT NOT NULL,
  `course_id` INT NOT NULL,
  CONSTRAINT `fk_student_course_student1`
    FOREIGN KEY (`student_id`)
    REFERENCES `mydb`.`student` (`id`),
  CONSTRAINT `fk_student_course_course1`
    FOREIGN KEY (`course_id`)
    REFERENCES `mydb`.`course` (`id`));

