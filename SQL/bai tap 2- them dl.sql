INSERT INTO `Department` (department_id, department_name)
VALUES 
         (1, 'ke toan' ),
         (2, 'sale' ),
         (3,  'maketing' ),
         (4, 'ki thuat' ),
         (5, 'nhan su' );
         
         
INSERT INTO `Position` (position_id, position_name)
VALUES 
       (1, 'dev' ),
       (2, 'test' ),
       (3, 'scrum_master' ),
       (4, 'pm' );
       
       

INSERT INTO `Account` (account_id, email, full_name, department_id, position_id, create_date)
VALUES   
         (1, 'tramy5596@gmail.com', 'nguyen tra my', 1, 1, '2020-01-03' ),
         (2, 'nguyenduy12@gmail.com', 'nguyen duy anh', 2, 2, '2020-01-01' ),
         (3, 'vananh24@gmail.com', 'nguyen van anh', 3, 3, '2021-10-02' ),
         (4, 'duongnguyen98@gmail.com', 'nguyen thi duong', 4, 4, '2021-02-03' ),
         (5, 'huongnguyen78@gmail.com', 'nguyen thu huong', 5, 4, '2020-05-05' );
         
INSERT INTO `group` (group_id, group_name, creator_id, create_date)
VALUES 
        (1, 'group A', 1, '2022-02-03' ),
        (2, 'group B', 2, '2022-05-02' ),
        (3, 'group C', 3, '2022-11-23' ), 
        (4, 'group D', 4, '2022-12-01' ),
        (5, 'group E', 5, '2022-11-02' );
        
INSERT INTO GroupAccount (group_id, account_id, join_date)
VALUES 
       (1, 1, '2021-01-20' ),
       (2, 2, '2020-02-01' ),
       (3, 3, '2022-03-04' ),
       (4, 4, '2022-04-05'),
       (5, 5, '2022-05-06');
       
INSERT INTO TypeQuestion (type_id, type_name)
VALUES 
     (1, 'Essay'),
     (2, 'multiple-choice');
     
INSERT INTO CategoryQuestion (category_id, category_name)
VALUES
       (1, 'toan'),
       (2, 'van'),
       (3, 'anh'),
       (4,'am nhac'),
       (5, 'lich su');
       
INSERT INTO Question (question_id, content, category_id, type_id, creator_id, create_date)
VALUES
        (1, 'a', 1, 1, 1, '2022-03-02'),
        (2, 'b', 2, 2, 2, '2022-09-08'), 
        (3, 'c', 3, 1, 3, '2022-07-06'),
        (4, 'd', 4, 2, 4, '2022-05-04'),
        (5, 'e', 5, 1, 5, '2022-09-10');
        
        
INSERT INTO Answer (answer_id, content, question_id, is_correct)
VALUES
       (1, 'a', 1, 'true'),
       (2, 'b', 2, 'false');
       
       
INSERT INTO Exam (exam_id, code, title, category_id, duration, creator_id, create_date)
VALUES
      (1, 1, 'a', 1, '01:20:00', 1, '2022-05-06'),
      (2, 2, 'b', 2, '00:45:00', 2, '2022-03-02'),
      (3, 3, 'c', 3, '02:00:00', 3, '2022-02-02'),
      (4, 4, 'd', 4, '00:30:00', 4, '2022-01-05'),
      (5, 5, 'e', 5, '00:50:00', 5, '2022-02-03');
  
  
INSERT INTO Examquestion (exam_id, question_id)
VALUES 
       (1, 1),
       (2, 2),
       (3, 3),
       (4, 4),
       (5, 5);