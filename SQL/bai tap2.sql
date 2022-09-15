DROP TABLE IF EXISTS Department;
CREATE TABLE Department(
department_id 	INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
department_name VARCHAR(50) UNIQUE KEY
);
DROP TABLE IF EXISTS Position;
CREATE TABLE `Position`(
position_id 	INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
position_name 	ENUM('dev', 'test', 'scrum_master', 'pm')
);

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`(
account_id 		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
email 			VARCHAR(50) UNIQUE KEY,
full_name 		VARCHAR(50),
department_id    INT UNSIGNED ,
position_id      INT UNSIGNED,
create_date      DATE,
FOREIGN KEY (department_id) REFERENCES Department (department_id),
FOREIGN KEY (position_id) REFERENCES Position (Position_id)
);

DROP TABLE IF EXISTS `group`;
CREATE TABLE `group`(
group_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
group_name VARCHAR(50),
creator_id INT UNSIGNED,
create_date DATE,
FOREIGN KEY (creator_id) REFERENCES `account`(account_id)
);

DROP TABLE IF EXISTS GroupAccount;
CREATE TABLE GroupAccount (
group_id INT UNSIGNED,
account_id INT UNSIGNED ,
join_date DATE,
PRIMARY KEY (group_id,account_id),
FOREIGN KEY (group_id) REFERENCES `group`(group_id),
FOREIGN KEY (account_id) REFERENCES `account` (account_id)
);

DROP TABLE IF EXISTS TypeQuestion;
CREATE TABLE TypeQuestion(
type_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
type_name VARCHAR(50)
);

DROP TABLE IF EXISTS CategoryQuestion;
CREATE TABLE CategoryQuestion(
category_id INT UNSIGNED AUTO_INCREMENT PRIMARY key,
category_name VARCHAR(50)
);

drop table Question;
CREATE TABLE Question(
question_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
content VARCHAR(100),
category_id INT UNSIGNED,
type_id INT UNSIGNED,
creator_id INT UNSIGNED ,
create_date DATE,
FOREIGN KEY (creator_id) REFERENCES `Account` (account_id)
);

DROP TABLE Answer;
CREATE TABLE Answer(
answer_id                 INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
content                   VARCHAR(100),
question_id               INT UNSIGNED,
is_correct                ENUM('true', 'false'), -- boolean 
FOREIGN KEY (question_id) REFERENCES Question (question_id)
);


DROP TABLE Exam;
CREATE TABLE Exam(
exam_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
`code` INT UNSIGNED,
title VARCHAR(50),
category_id INT UNSIGNED,
duration TIME,
creator_id INT UNSIGNED,
create_date DATE,
FOREIGN KEY (category_id) REFERENCES CategoryQuestion (category_id)
);


DROP TABLE Examquestion;
CREATE TABLE ExamQuestion(
exam_id INT UNSIGNED,
question_id INT UNSIGNED,
FOREIGN KEY (exam_id) REFERENCES Exam (exam_id),
FOREIGN KEY (question_id) REFERENCES Question (question_id),
primary key (exam_id ,question_id)
);

