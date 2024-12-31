USE quiz_app;

-- User[id(PK), name, email, password, role]
INSERT INTO users
(id,name,email,password,role)
VALUES
(101, 'Alice Johnson', 'alice.johnson@example.com', 'password123', 'teacher'),
(102, 'Bob Smith', 'bob.smith@example.com', 'securepass456', 'student'),
(103, 'Catherine Lee', 'catherine.lee@example.com', 'mypassword789', 'teacher'),
(104, 'David Brown', 'david.brown@example.com', 'pass12345', 'student'),
(105, 'Emily Davis', 'emily.davis@example.com', 'secure!@#789', 'student'),
(106, 'Frank Miller', 'frank.miller@example.com', 'qwertyuiop', 'teacher'),
(107, 'Grace Wilson', 'grace.wilson@example.com', 'letmein789', 'student'),
(108, 'Henry Moore', 'henry.moore@example.com', 'hunter2', 'teacher'),
(109, 'Isabella Taylor', 'isabella.taylor@example.com', 'password456', 'student'),
(110, 'Jack Anderson', 'jack.anderson@example.com', '1q2w3e4r', 'teacher'),
(111, 'Karen Thomas', 'karen.thomas@example.com', 'passw0rd!', 'student'),
(112, 'Liam Martinez', 'liam.martinez@example.com', 'ilovecoding', 'student'),
(113, 'Mia Garcia', 'mia.garcia@example.com', 'strongpass123', 'student'),
(114, 'Noah Hernandez', 'noah.hernandez@example.com', 'test1234', 'teacher'),
(115, 'Olivia Lopez', 'olivia.lopez@example.com', 'password2023', 'student');



-- Quizzes[id(PK), title, teacher_id(FK), created_at]
INSERT INTO quizzes 
(id, title, teacher_id, created_at)
VALUES
(201, 'Basic Mathematics', 101, '2024-01-01 10:00:00'),
(202, 'Physics Fundamentals', 103, '2024-01-02 11:00:00'),
(203, 'Introduction to Programming', 106, '2024-01-03 12:00:00'),
(204, 'History of Science', 101, '2024-01-04 13:00:00'),
(205, 'Chemistry Basics', 108, '2024-01-05 14:00:00'),
(206, 'Advanced Mathematics', 103, '2024-01-06 15:00:00'),
(207, 'Web Development', 110, '2024-01-07 16:00:00'),
(208, 'Data Structures', 106, '2024-01-08 17:00:00'),
(209, 'World Geography', 101, '2024-01-09 18:00:00'),
(210, 'Artificial Intelligence', 114, '2024-01-10 19:00:00'),
(211, 'Modern History', 108, '2024-01-11 20:00:00'),
(212, 'Quantum Physics', 103, '2024-01-12 21:00:00'),
(213, 'Environmental Science', 110, '2024-01-13 22:00:00'),
(214, 'Mobile App Development', 114, '2024-01-14 23:00:00'),
(215, 'Introduction to Databases', 106, '2024-01-15 09:00:00');


-- Questions[id(PK),quizze_id(FK),content]
INSERT INTO questions 
(id, quizze_id, content)
VALUES
(301, 201, 'What is 2 + 2?'),
(302, 201, 'What is the square root of 16?'),
(303, 202, 'What is Newton\'s second law of motion?'),
(304, 202, 'Define acceleration.'),
(305, 203, 'What is a variable in programming?'),
(306, 203, 'What is the purpose of a loop in programming?'),
(307, 204, 'Who is known as the father of modern science?'),
(308, 204, 'When was the telescope invented?'),
(309, 205, 'What is the chemical formula for water?'),
(310, 205, 'What is the atomic number of carbon?'),
(311, 206, 'What is the derivative of x^2?'),
(312, 206, 'What is the integral of 1/x dx?'),
(313, 207, 'What does HTML stand for?'),
(314, 207, 'What is the purpose of CSS?'),
(315, 208, 'What is a stack in data structures?');



-- Options[id(PK),question_id(FK),content,is_correct]
INSERT INTO options 
(id, question_id, content, is_correct)
VALUES
-- Options for Question 301 (What is 2 + 2?)
(401, 301, '3', FALSE),
(402, 301, '4', TRUE),
(403, 301, '5', FALSE),
(404, 301, '6', FALSE),
-- Options for Question 302 (What is the square root of 16?)
(405, 302, '3', FALSE),
(406, 302, '4', TRUE),
(407, 302, '5', FALSE),
(408, 302, '6', FALSE),
-- Options for Question 303 (What is Newton\'s second law of motion?)
(409, 303, 'Force = Mass x Acceleration', TRUE),
(410, 303, 'Energy = Mass x Speed', FALSE),
(411, 303, 'Force = Mass x Speed', FALSE),
(412, 303, 'Energy = Force x Distance', FALSE),
-- Options for Question 304 (Define acceleration.)
(413, 304, 'Rate of change of velocity', TRUE),
(414, 304, 'Rate of change of speed', FALSE),
(415, 304, 'Rate of change of force', FALSE),
(416, 304, 'Rate of change of distance', FALSE),
-- Options for Question 305 (What is a variable in programming?)
(417, 305, 'A named storage for data', TRUE),
(418, 305, 'A fixed value', FALSE),
(419, 305, 'An operator', FALSE),
(420, 305, 'A control structure', FALSE),
-- Options for Question 306 (What is the purpose of a loop in programming?)
(421, 306, 'To repeat a set of instructions', TRUE),
(422, 306, 'To store data', FALSE),
(423, 306, 'To define a function', FALSE),
(424, 306, 'To handle errors', FALSE),
-- Options for Question 307 (Who is known as the father of modern science?)
(425, 307, 'Galileo Galilei', TRUE),
(426, 307, 'Isaac Newton', FALSE),
(427, 307, 'Albert Einstein', FALSE),
(428, 307, 'Marie Curie', FALSE),
-- Options for Question 308 (When was the telescope invented?)
(429, 308, '1608', TRUE),
(430, 308, '1508', FALSE),
(431, 308, '1708', FALSE),
(432, 308, '1808', FALSE),
-- Options for Question 309 (What is the chemical formula for water?)
(433, 309, 'H2O', TRUE),
(434, 309, 'CO2', FALSE),
(435, 309, 'O2', FALSE),
(436, 309, 'NaCl', FALSE),
-- Options for Question 310 (What is the atomic number of carbon?)
(437, 310, '6', TRUE),
(438, 310, '12', FALSE),
(439, 310, '8', FALSE),
(440, 310, '14', FALSE),
-- Options for Question 311 (What is the derivative of x^2?)
(441, 311, '2x', TRUE),
(442, 311, 'x^2', FALSE),
(443, 311, 'x', FALSE),
(444, 311, '2', FALSE),
-- Options for Question 312 (What is the integral of 1/x dx?)
(445, 312, 'ln|x| + C', TRUE),
(446, 312, '1/x', FALSE),
(447, 312, 'x^2', FALSE),
(448, 312, 'e^x', FALSE),
-- Options for Question 313 (What does HTML stand for?)
(449, 313, 'HyperText Markup Language', TRUE),
(450, 313, 'HighText Machine Language', FALSE),
(451, 313, 'HyperTransfer Markup Language', FALSE),
(452, 313, 'HyperText Machine Level', FALSE),
-- Options for Question 314 (What is the purpose of CSS?)
(453, 314, 'To style web pages', TRUE),
(454, 314, 'To structure web pages', FALSE),
(455, 314, 'To debug code', FALSE),
(456, 314, 'To define server-side scripts', FALSE),
-- Options for Question 315 (What is a stack in data structures?)
(457, 315, 'A LIFO data structure', TRUE),
(458, 315, 'A FIFO data structure', FALSE),
(459, 315, 'A type of sorting algorithm', FALSE),
(460, 315, 'A database query language', FALSE);


-- Student Responses[id(PK),quizze_id(FK),student_id(FK),question_id(FK),option_id(FK)]
INSERT INTO student_responses 
(id, quizze_id, student_id, question_id, option_id)
VALUES
-- Student 101's responses for Quiz 201
(501, 201, 101, 301, 402),  -- Question 301 (What is 2 + 2?) - Correct option 402 (4)
(502, 201, 101, 302, 406),  -- Question 302 (What is the square root of 16?) - Correct option 406 (4)
-- Student 102's responses for Quiz 202
(503, 202, 102, 303, 409),  -- Question 303 (What is Newton's second law of motion?) - Correct option 409 (Force = Mass x Acceleration)
(504, 202, 102, 304, 413),  -- Question 304 (Define acceleration.) - Correct option 413 (Rate of change of velocity)
-- Student 103's responses for Quiz 203
(505, 203, 103, 305, 417),  -- Question 305 (What is a variable in programming?) - Correct option 417 (A named storage for data)
(506, 203, 103, 306, 421),  -- Question 306 (What is the purpose of a loop in programming?) - Correct option 421 (To repeat a set of instructions)
-- Student 104's responses for Quiz 204
(507, 204, 104, 307, 425),  -- Question 307 (Who is known as the father of modern science?) - Correct option 425 (Galileo Galilei)
(508, 204, 104, 308, 429),  -- Question 308 (When was the telescope invented?) - Correct option 429 (1608)
-- Student 105's responses for Quiz 205
(509, 205, 105, 309, 433),  -- Question 309 (What is the chemical formula for water?) - Correct option 433 (H2O)
(510, 205, 105, 310, 437),  -- Question 310 (What is the atomic number of carbon?) - Correct option 437 (6)
-- Student 106's responses for Quiz 206
(511, 206, 106, 311, 441),  -- Question 311 (What is the derivative of x^2?) - Correct option 441 (2x)
(512, 206, 106, 312, 445),  -- Question 312 (What is the integral of 1/x dx?) - Correct option 445 (ln|x| + C)
-- Student 107's responses for Quiz 207
(513, 207, 107, 313, 449),  -- Question 313 (What does HTML stand for?) - Correct option 449 (HyperText Markup Language)
(514, 207, 107, 314, 453),  -- Question 314 (What is the purpose of CSS?) - Correct option 453 (To style web pages)
-- Student 108's responses for Quiz 208
(515, 208, 108, 315, 457);  -- Question 315 (What is a stack in data structures?) - Correct option 457 (A LIFO data structure)







