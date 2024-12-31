
USE quiz_app;

-- User[id(PK), name, email, password, role]
-- Quizzes[id(PK), title, teacher_id(FK), created_at]
-- Questions[id(PK),quizze_id(FK),content]
-- Student Responses[id(PK),quizze_id(FK),student_id(FK),question_id(FK),option_id(FK)]
-- Options[id(PK),question_id(FK),content,is_correct]



-- As a teacher perspective
SELECT 
users.id as ID,
name as Name,
email as Email,
role as Role,
title as Topic,
questions.content as Question,
options.content as Correct_Answer
FROM
users INNER JOIN quizzes
INNER JOIN questions
INNER JOIN options
ON users.id = quizzes.teacher_id
AND questions.quizze_id = quizzes.id
AND questions.id = options.question_id
WHERE users.role = 'teacher'
AND options.is_correct = TRUE;



-- As a student perspective
SELECT
users.id as ID,
name as Name,
email as Email,
role as Role,
title as Topic,
questions.content as Question,
options.content as Option,
is_correct as Correct

FROM
users INNER JOIN student_responses
INNER JOIN quizzes
INNER JOIN questions
INNER JOIN options
ON users.id = student_responses.student_id
AND student_responses.quizze_id = quizzes.id
AND student_responses.question_id = questions.id
AND student_responses.option_id = options.id
WHERE users.role = 'student';