CREATE DATABASE university_management_system;

USE university_management_system;

-- Departments[department_id(PK),name]
CREATE TABLE departments(
    department_id INT PRIMARY KEY,
    name VARCHAR(60)
);

INSERT INTO departments
(department_id,name)
VALUES
(101, 'Computer Engineering'),
(102, 'Electrical Engineering'),
(103, 'Mechanical Engineering'),
(104, 'Civil Engineering'),
(105, 'Chemical Engineering'),
(106, 'Aerospace Engineering'),
(107, 'Biomedical Engineering'),
(108, 'Environmental Engineering'),
(109, 'Industrial Engineering'),
(110, 'Software Engineering');


-- Teachers[teacher_id(PK),name,designation,email,phone,date_of_joining,dept_id(FK->department_id)]
CREATE TABLE teachers(
    teacher_id INT PRIMARY KEY,
    name VARCHAR(50),
    designation VARCHAR(40),
    email VARCHAR(40),
    phone VARCHAR(15),
    date_of_joining DATE,
    dept_id INT,
    Foreign Key (dept_id) REFERENCES departments(department_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO teachers
(teacher_id,name,designation,email,phone,date_of_joining,dept_id)
VALUES
(201, 'Dr. Alice Johnson', 'Professor', 'alice.johnson@example.com', '01234567890', '2015-08-01', 101),
(202, 'Dr. Bob Smith', 'Associate Professor', 'bob.smith@example.com', '01234567891', '2017-09-15', 102),
(203, 'Dr. Charlie Brown', 'Assistant Professor', 'charlie.brown@example.com', '01234567892', '2019-01-10', 103),
(204, 'Dr. Daisy Miller', 'Lecturer', 'daisy.miller@example.com', '01234567893', '2021-03-12', 101),
(205, 'Dr. Ethan Carter', 'Professor', 'ethan.carter@example.com', '01234567894', '2014-07-01', 102),
(206, 'Dr. Fiona Green', 'Associate Professor', 'fiona.green@example.com', '01234567895', '2016-05-20', 103),
(207, 'Dr. George White', 'Lecturer', 'george.white@example.com', '01234567896', '2022-11-01', 104),
(208, 'Dr. Hannah Black', 'Assistant Professor', 'hannah.black@example.com', '01234567897', '2020-06-15', 101),
(209, 'Dr. Ian Gray', 'Professor', 'ian.gray@example.com', '01234567898', '2013-12-10', 105),
(210, 'Dr. Jane Adams', 'Lecturer', 'jane.adams@example.com', '01234567899', '2021-08-25', 102),
(211, 'Dr. Kyle Cooper', 'Assistant Professor', 'kyle.cooper@example.com', '01234567900', '2018-10-05', 104),
(212, 'Dr. Laura Davis', 'Associate Professor', 'laura.davis@example.com', '01234567901', '2016-02-28', 105),
(213, 'Dr. Michael Scott', 'Professor', 'michael.scott@example.com', '01234567902', '2012-09-12', 101),
(214, 'Dr. Nora Brooks', 'Lecturer', 'nora.brooks@example.com', '01234567903', '2023-04-01', 104),
(215, 'Dr. Oliver Reed', 'Assistant Professor', 'oliver.reed@example.com', '01234567904', '2019-12-22', 102),
(216, 'Dr. Patricia Gray', 'Lecturer', 'patricia.gray@example.com', '01234567905', '2022-01-19', 106),
(217, 'Dr. Quentin Turner', 'Professor', 'quentin.turner@example.com', '01234567906', '2014-06-14', 107),
(218, 'Dr. Rachel Evans', 'Associate Professor', 'rachel.evans@example.com', '01234567907', '2017-09-30', 108),
(219, 'Dr. Samuel Wright', 'Assistant Professor', 'samuel.wright@example.com', '01234567908', '2018-03-21', 109),
(220, 'Dr. Tina Bell', 'Professor', 'tina.bell@example.com', '01234567909', '2016-11-01', 110),
(221, 'Dr. Ursula King', 'Lecturer', 'ursula.king@example.com', '01234567910', '2020-02-12', 106),
(222, 'Dr. Vincent Lopez', 'Assistant Professor', 'vincent.lopez@example.com', '01234567911', '2021-07-09', 107),
(223, 'Dr. William Adams', 'Associate Professor', 'william.adams@example.com', '01234567912', '2015-05-17', 108),
(224, 'Dr. Xander Moore', 'Lecturer', 'xander.moore@example.com', '01234567913', '2020-11-11', 109),
(225, 'Dr. Yvonne Hill', 'Professor', 'yvonne.hill@example.com', '01234567914', '2013-10-22', 110);


-- Cources[course_id(PK),name,credits,semester,teach_id(FK->teacher_id)]
CREATE TABLE cources(
    course_id INT PRIMARY KEY,
    name VARCHAR(60),
    credits FLOAT,
    semester VARCHAR(50),
    teach_id INT,
    Foreign Key (teach_id) REFERENCES teachers(teacher_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO cources
(course_id,name,credits,semester,teach_id)
VALUES
(301, 'Data Structures', 3.5, '1st Year 1st Semester', 201),
(302, 'Algorithms', 3.0, '1st Year 1st Semester', 202),
(303, 'Database Management Systems', 4.0, '1st Year 2nd Semester', 203),
(304, 'Operating Systems', 4.5, '1st Year 2nd Semester', 204),
(305, 'Computer Networks', 3.0, '2nd Year 1st Semester', 205),
(306, 'Software Engineering', 3.5, '2nd Year 1st Semester', 206),
(307, 'Discrete Mathematics', 3.0, '2nd Year 2nd Semester', 207),
(308, 'Compiler Design', 3.5, '2nd Year 2nd Semester', 208),
(309, 'Computer Architecture', 3.0, '3rd Year 1st Semester', 209),
(310, 'Web Development', 3.0, '3rd Year 1st Semester', 210),
(311, 'Artificial Intelligence', 3.5, '3rd Year 2nd Semester', 211),
(312, 'Machine Learning', 4.0, '3rd Year 2nd Semester', 212),
(313, 'Mobile Application Development', 3.0, '4th Year 1st Semester', 213),
(314, 'Cloud Computing', 3.5, '4th Year 1st Semester', 214),
(315, 'Cyber Security', 3.0, '4th Year 2nd Semester', 215),
(316, 'Data Science', 3.5, '4th Year 2nd Semester', 216),
(317, 'Digital Signal Processing', 3.0, '5th Year 1st Semester', 217),
(318, 'Computer Graphics', 3.0, '5th Year 1st Semester', 218),
(319, 'Network Security', 3.0, '5th Year 2nd Semester', 219),
(320, 'Database Security', 3.5, '5th Year 2nd Semester', 220),
(321, 'Embedded Systems', 3.0, '6th Year 1st Semester', 221),
(322, 'Cloud Networking', 3.5, '6th Year 1st Semester', 222),
(323, 'Parallel Computing', 3.0, '6th Year 2nd Semester', 223),
(324, 'Human-Computer Interaction', 3.0, '6th Year 2nd Semester', 224),
(325, 'Big Data', 3.5, '7th Year 1st Semester', 225),
(326, 'Data Visualization', 3.5, '2nd Year 1st Semester', 206),
(327, 'Cloud Security', 3.0, '3rd Year 1st Semester', 205),
(328, 'Natural Language Processing', 3.5, '3rd Year 2nd Semester', 211),
(329, 'IoT (Internet of Things)', 3.0, '4th Year 1st Semester', 213),
(330, 'Blockchain Technology', 3.5, '4th Year 1st Semester', 212),
(331, 'Advanced Machine Learning', 4.0, '5th Year 1st Semester', 212),
(332, 'Robotics', 3.5, '5th Year 2nd Semester', 218),
(333, 'Augmented Reality', 3.0, '6th Year 1st Semester', 217),
(334, 'Virtual Reality', 3.0, '6th Year 2nd Semester', 219),
(335, 'Bioinformatics', 3.5, '7th Year 1st Semester', 220);


-- SELECT 
-- teachers.name as Teacher,
-- departments.name as Department,
-- cources.name as Course,
-- cources.semester as semester
-- FROM
-- teachers INNER JOIN cources INNER JOIN departments
-- ON teachers.teacher_id = cources.teach_id
-- AND teachers.dept_id = departments.department_id;


-- Students[student_id(PK),name,phone,email,enrollment_date,dept_id(FK->department_id)]
CREATE TABLE students(
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(50),
    enrollment_date DATE,
    dept_id INT,
    Foreign Key (dept_id) REFERENCES departments(department_id)
);

INSERT INTO students
(student_id,name,phone,email,enrollment_date,dept_id)
VALUES
(401, 'John Doe', '017XXXXXXXX', 'john.doe@example.com', '2020-01-01', 101),
(402, 'Jane Smith', '017XXXXXXXX', 'jane.smith@example.com', '2020-01-02', 102),
(403, 'Mark Johnson', '017XXXXXXXX', 'mark.johnson@example.com', '2020-02-15', 103),
(404, 'Emily Davis', '017XXXXXXXX', 'emily.davis@example.com', '2020-03-10', 104),
(405, 'Michael Brown', '017XXXXXXXX', 'michael.brown@example.com', '2020-04-05', 105),
(406, 'Sarah Wilson', '017XXXXXXXX', 'sarah.wilson@example.com', '2020-05-20', 106),
(407, 'David Moore', '017XXXXXXXX', 'david.moore@example.com', '2020-06-18', 107),
(408, 'Sophia Taylor', '017XXXXXXXX', 'sophia.taylor@example.com', '2020-07-25', 108),
(409, 'Daniel Harris', '017XXXXXXXX', 'daniel.harris@example.com', '2020-08-30', 109),
(410, 'Olivia Clark', '017XXXXXXXX', 'olivia.clark@example.com', '2020-09-10', 110),
(411, 'James Lewis', '017XXXXXXXX', 'james.lewis@example.com', '2020-01-18', 101),
(412, 'Isabella Walker', '017XXXXXXXX', 'isabella.walker@example.com', '2020-02-22', 102),
(413, 'Benjamin Hall', '017XXXXXXXX', 'benjamin.hall@example.com', '2020-03-05', 103),
(414, 'Mia Allen', '017XXXXXXXX', 'mia.allen@example.com', '2020-04-12', 104),
(415, 'Ethan Young', '017XXXXXXXX', 'ethan.young@example.com', '2020-05-15', 105),
(416, 'Charlotte King', '017XXXXXXXX', 'charlotte.king@example.com', '2020-06-22', 106),
(417, 'Henry Scott', '017XXXXXXXX', 'henry.scott@example.com', '2020-07-05', 107),
(418, 'Amelia Green', '017XXXXXXXX', 'amelia.green@example.com', '2020-08-12', 108),
(419, 'Alexander Adams', '017XXXXXXXX', 'alexander.adams@example.com', '2020-09-20', 109),
(420, 'Victoria Baker', '017XXXXXXXX', 'victoria.baker@example.com', '2020-10-15', 110),
(421, 'Liam Nelson', '017XXXXXXXX', 'liam.nelson@example.com', '2020-11-01', 101),
(422, 'Ava Carter', '017XXXXXXXX', 'ava.carter@example.com', '2020-12-03', 102),
(423, 'William Mitchell', '017XXXXXXXX', 'william.mitchell@example.com', '2021-01-10', 103),
(424, 'Harper Perez', '017XXXXXXXX', 'harper.perez@example.com', '2021-02-19', 104),
(425, 'Daniel Roberts', '017XXXXXXXX', 'daniel.roberts@example.com', '2021-03-22', 105),
(426, 'Sophia Evans', '017XXXXXXXX', 'sophia.evans@example.com', '2021-04-25', 106),
(427, 'Jackson Murphy', '017XXXXXXXX', 'jackson.murphy@example.com', '2021-05-07', 107),
(428, 'Mason Cooper', '017XXXXXXXX', 'mason.cooper@example.com', '2021-06-01', 108),
(429, 'Ella Reed', '017XXXXXXXX', 'ella.reed@example.com', '2021-07-14', 109),
(430, 'Lucas Stewart', '017XXXXXXXX', 'lucas.stewart@example.com', '2021-08-27', 110),
(431, 'Madison Morris', '017XXXXXXXX', 'madison.morris@example.com', '2021-09-06', 101),
(432, 'Sebastian Peterson', '017XXXXXXXX', 'sebastian.peterson@example.com', '2021-10-21', 102),
(433, 'Chloe Rogers', '017XXXXXXXX', 'chloe.rogers@example.com', '2021-11-15', 103),
(434, 'Jack Reed', '017XXXXXXXX', 'jack.reed@example.com', '2021-12-10', 104),
(435, 'Ella Ward', '017XXXXXXXX', 'ella.ward@example.com', '2022-01-05', 105),
(436, 'Lucas Flores', '017XXXXXXXX', 'lucas.flores@example.com', '2022-02-17', 106),
(437, 'Archer Evans', '017XXXXXXXX', 'archer.evans@example.com', '2022-03-19', 107),
(438, 'Grace Lee', '017XXXXXXXX', 'grace.lee@example.com', '2022-04-25', 108),
(439, 'Owen Harris', '017XXXXXXXX', 'owen.harris@example.com', '2022-05-10', 109),
(440, 'Lily Nelson', '017XXXXXXXX', 'lily.nelson@example.com', '2022-06-20', 110),
(441, 'Harper Hill', '017XXXXXXXX', 'harper.hill@example.com', '2022-07-12', 101),
(442, 'Mason Carter', '017XXXXXXXX', 'mason.carter@example.com', '2022-08-19', 102),
(443, 'Lila Torres', '017XXXXXXXX', 'lila.torres@example.com', '2022-09-13', 103),
(444, 'James Parker', '017XXXXXXXX', 'james.parker@example.com', '2022-10-06', 104),
(445, 'Peyton Taylor', '017XXXXXXXX', 'peyton.taylor@example.com', '2022-11-21', 105),
(446, 'Leah Collins', '017XXXXXXXX', 'leah.collins@example.com', '2022-12-18', 106),
(447, 'Benjamin Ward', '017XXXXXXXX', 'benjamin.ward@example.com', '2023-01-25', 107),
(448, 'Mia Baker', '017XXXXXXXX', 'mia.baker@example.com', '2023-02-14', 108),
(449, 'Evan Campbell', '017XXXXXXXX', 'evan.campbell@example.com', '2023-03-04', 109),
(450, 'Charlotte Edwards', '017XXXXXXXX', 'charlotte.edwards@example.com', '2023-04-12', 110);


-- SELECT 
-- departments.name,
-- COUNT(students.name)
-- FROM
-- departments INNER JOIN students
-- ON departments.department_id = students.dept_id
-- GROUP BY departments.name;


-- students_couces[stud_id(FK->student_id),cours_id(FK->course_id)]
CREATE TABLE students_couces(
    stud_id INT,
    cours_id INT,
    Foreign Key (stud_id) REFERENCES students(student_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    Foreign Key (cours_id) REFERENCES cources(course_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO students_couces
(stud_id,cours_id)
VALUES
(401, 301),
(402, 302),
(403, 303),
(404, 304),
(405, 305),
(406, 306),
(407, 307),
(408, 308),
(409, 309),
(410, 310),
(411, 311),
(412, 312),
(413, 313),
(414, 314),
(415, 315),
(416, 316),
(417, 317),
(418, 318),
(419, 319),
(420, 320),
(421, 321),
(422, 322),
(423, 323),
(424, 324),
(425, 325),
(426, 326),
(427, 327),
(428, 328),
(429, 329),
(430, 330);

-- SELECT 
-- students.student_id as ID,
-- students.name as name,
-- cources.name as Course
-- FROM
-- students INNER JOIN students_couces INNER JOIN cources
-- ON cources.course_id = students_couces.cours_id
-- AND students.student_id = students_couces.stud_id;


-- attendances[attendance_id(PK),date,status(P/A),stud_id(FK->student_id),cours_id(FK->course_id)]
CREATE TABLE attendances(
    attendance_id INT PRIMARY KEY,
    date DATE,
    status VARCHAR(1),
    stud_id INT,
    cours_id INT,
    Foreign Key (stud_id) REFERENCES students(student_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    Foreign Key (cours_id) REFERENCES cources(course_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO attendances 
(attendance_id, date, status, stud_id, cours_id)
VALUES
(1, '2024-01-15', 'P', 401, 301),
(2, '2024-01-15', 'A', 402, 302),
(3, '2024-01-16', 'P', 403, 303),
(4, '2024-01-16', 'P', 404, 304),
(5, '2024-01-17', 'A', 405, 305),
(6, '2024-01-17', 'P', 406, 306),
(7, '2024-01-18', 'P', 407, 307),
(8, '2024-01-18', 'A', 408, 308),
(9, '2024-01-19', 'P', 409, 309),
(10, '2024-01-19', 'A', 410, 310),
(11, '2024-01-20', 'P', 411, 311),
(12, '2024-01-20', 'A', 412, 312),
(13, '2024-01-21', 'P', 413, 313),
(14, '2024-01-21', 'A', 414, 314),
(15, '2024-01-22', 'P', 415, 315),
(16, '2024-01-22', 'A', 416, 316),
(17, '2024-01-23', 'P', 417, 317),
(18, '2024-01-23', 'A', 418, 318),
(19, '2024-01-24', 'P', 419, 319),
(20, '2024-01-24', 'A', 420, 320),
(21, '2024-01-25', 'P', 421, 321),
(22, '2024-01-25', 'A', 422, 322),
(23, '2024-01-26', 'P', 423, 323),
(24, '2024-01-26', 'A', 424, 324),
(25, '2024-01-27', 'P', 425, 325),
(26, '2024-01-27', 'A', 426, 326),
(27, '2024-01-28', 'P', 427, 327),
(28, '2024-01-28', 'A', 428, 328),
(29, '2024-01-29', 'P', 429, 329),
(30, '2024-01-29', 'A', 430, 330),
(31, '2024-01-30', 'P', 401, 301),
(32, '2024-01-30', 'A', 402, 302),
(33, '2024-02-01', 'P', 403, 303),
(34, '2024-02-01', 'A', 404, 304),
(35, '2024-02-02', 'P', 405, 305),
(36, '2024-02-02', 'A', 406, 306),
(37, '2024-02-03', 'P', 407, 307),
(38, '2024-02-03', 'A', 408, 308),
(39, '2024-02-04', 'P', 409, 309),
(40, '2024-02-04', 'A', 410, 310),
(41, '2024-02-05', 'P', 411, 311),
(42, '2024-02-05', 'A', 412, 312),
(43, '2024-02-06', 'P', 413, 313),
(44, '2024-02-06', 'A', 414, 314),
(45, '2024-02-07', 'P', 415, 315),
(46, '2024-02-07', 'A', 416, 316),
(47, '2024-02-08', 'P', 417, 317),
(48, '2024-02-08', 'A', 418, 318),
(49, '2024-02-09', 'P', 419, 319),
(50, '2024-02-09', 'A', 420, 320),
(51, '2024-02-10', 'P', 421, 321),
(52, '2024-02-10', 'A', 422, 322),
(53, '2024-02-11', 'P', 423, 323),
(54, '2024-02-11', 'A', 424, 324),
(55, '2024-02-12', 'P', 425, 325),
(56, '2024-02-12', 'A', 426, 326),
(57, '2024-02-13', 'P', 427, 327),
(58, '2024-02-13', 'A', 428, 328),
(59, '2024-02-14', 'P', 429, 329),
(60, '2024-02-14', 'A', 430, 330),
(61, '2024-02-15', 'P', 401, 301),
(62, '2024-02-15', 'A', 402, 302),
(63, '2024-02-16', 'P', 403, 303),
(64, '2024-02-16', 'A', 404, 304),
(65, '2024-02-17', 'P', 405, 305),
(66, '2024-02-17', 'A', 406, 306),
(67, '2024-02-18', 'P', 407, 307),
(68, '2024-02-18', 'A', 408, 308),
(69, '2024-02-19', 'P', 409, 309),
(70, '2024-02-19', 'A', 410, 310),
(71, '2024-02-20', 'P', 411, 311),
(72, '2024-02-20', 'A', 412, 312),
(73, '2024-02-21', 'P', 413, 313),
(74, '2024-02-21', 'A', 414, 314),
(75, '2024-02-22', 'P', 415, 315),
(76, '2024-02-22', 'A', 416, 316),
(77, '2024-02-23', 'P', 417, 317),
(78, '2024-02-23', 'A', 418, 318),
(79, '2024-02-24', 'P', 419, 319),
(80, '2024-02-24', 'A', 420, 320),
(81, '2024-02-25', 'P', 421, 321),
(82, '2024-02-25', 'A', 422, 322),
(83, '2024-02-26', 'P', 423, 323),
(84, '2024-02-26', 'A', 424, 324),
(85, '2024-02-27', 'P', 425, 325),
(86, '2024-02-27', 'A', 426, 326),
(87, '2024-02-28', 'P', 427, 327),
(88, '2024-02-28', 'A', 428, 328),
(89, '2024-02-29', 'P', 429, 329),
(90, '2024-02-29', 'A', 430, 330),
(91, '2024-03-01', 'P', 401, 301),
(92, '2024-03-01', 'A', 402, 302),
(93, '2024-03-02', 'P', 403, 303),
(94, '2024-03-02', 'A', 404, 304),
(95, '2024-03-03', 'P', 405, 305),
(96, '2024-03-03', 'A', 406, 306),
(97, '2024-03-04', 'P', 407, 307),
(98, '2024-03-04', 'A', 408, 308),
(99, '2024-03-05', 'P', 409, 309),
(100, '2024-03-05', 'A', 410, 310);

-- Courses and Attendance Relation
-- SELECT
-- cources.name,
-- COUNT(attendances.cours_id)
-- FROM
-- cources INNER JOIN attendances
-- ON cources.course_id = attendances.cours_id
-- GROUP BY cources.name;

-- Students and Attendance Relation
-- SELECT
-- students.student_id,
-- students.name,
-- COUNT(attendances.status)
-- FROM
-- attendances INNER JOIN students
-- ON students.student_id = attendances.stud_id
-- WHERE attendances.status='P'
-- GROUP BY students.name
-- ORDER BY students.student_id;


-- Results[stud_id(FK->student_id),cour_id(FK->course_id),mark,grade,exam_date]
CREATE TABLE results(
    stud_id INT,
    cour_id INT,
    mark FLOAT,
    grade VARCHAR(2),
    exam_date DATE,
    Foreign Key (stud_id) REFERENCES students(student_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    Foreign Key (cour_id) REFERENCES cources(course_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO results 
(stud_id, cour_id, mark, grade, exam_date)
VALUES
(401, 301, 85, 'A', '2024-06-01'),
(402, 302, 78, 'B', '2024-06-01'),
(403, 303, 92, 'A+', '2024-06-02'),
(404, 304, 76, 'B+', '2024-06-02'),
(405, 305, 88, 'A', '2024-06-03'),
(406, 306, 79, 'B', '2024-06-03'),
(407, 307, 90, 'A+', '2024-06-04'),
(408, 308, 82, 'A-', '2024-06-04'),
(409, 309, 75, 'B+', '2024-06-05'),
(410, 310, 85, 'A', '2024-06-05'),
(411, 311, 89, 'A+', '2024-06-06'),
(412, 312, 77, 'B', '2024-06-06'),
(413, 313, 80, 'A-', '2024-06-07'),
(414, 314, 74, 'B+', '2024-06-07'),
(415, 315, 93, 'A+', '2024-06-08'),
(416, 316, 81, 'A-', '2024-06-08'),
(417, 317, 84, 'A', '2024-06-09'),
(418, 318, 70, 'B', '2024-06-09'),
(419, 319, 78, 'B+', '2024-06-10'),
(420, 320, 91, 'A+', '2024-06-10'),
(421, 321, 86, 'A', '2024-06-11'),
(422, 322, 80, 'A-', '2024-06-11'),
(423, 323, 88, 'A', '2024-06-12'),
(424, 324, 92, 'A+', '2024-06-12'),
(425, 325, 73, 'B+', '2024-06-13'),
(426, 326, 79, 'B', '2024-06-13'),
(427, 327, 86, 'A', '2024-06-14'),
(428, 328, 95, 'A+', '2024-06-14'),
(429, 329, 77, 'B+', '2024-06-15'),
(430, 330, 83, 'A-', '2024-06-15'),
(401, 301, 81, 'A-', '2024-06-16'),
(402, 302, 75, 'B', '2024-06-16'),
(403, 303, 89, 'A+', '2024-06-17'),
(404, 304, 79, 'B+', '2024-06-17'),
(405, 305, 92, 'A+', '2024-06-18'),
(406, 306, 72, 'B', '2024-06-18'),
(407, 307, 85, 'A', '2024-06-19'),
(408, 308, 78, 'B', '2024-06-19'),
(409, 309, 80, 'A-', '2024-06-20'),
(410, 310, 94, 'A+', '2024-06-20'),
(411, 311, 71, 'B', '2024-06-21'),
(412, 312, 88, 'A', '2024-06-21'),
(413, 313, 91, 'A+', '2024-06-22'),
(414, 314, 83, 'A-', '2024-06-22'),
(415, 315, 77, 'B+', '2024-06-23'),
(416, 316, 89, 'A+', '2024-06-23'),
(417, 317, 90, 'A+', '2024-06-24'),
(418, 318, 85, 'A', '2024-06-24'),
(419, 319, 84, 'A', '2024-06-25'),
(420, 320, 79, 'B', '2024-06-25'),
(421, 321, 95, 'A+', '2024-06-26'),
(422, 322, 82, 'A-', '2024-06-26'),
(423, 323, 76, 'B+', '2024-06-27'),
(424, 324, 92, 'A+', '2024-06-27'),
(425, 325, 79, 'B', '2024-06-28'),
(426, 326, 85, 'A', '2024-06-28'),
(427, 327, 91, 'A+', '2024-06-29'),
(428, 328, 76, 'B+', '2024-06-29'),
(429, 329, 83, 'A-', '2024-06-30'),
(430, 330, 80, 'A-', '2024-06-30'),
(401, 301, 88, 'A', '2024-07-01'),
(402, 302, 80, 'A-', '2024-07-01'),
(403, 303, 93, 'A+', '2024-07-02'),
(404, 304, 72, 'B', '2024-07-02'),
(405, 305, 87, 'A', '2024-07-03'),
(406, 306, 79, 'B', '2024-07-03'),
(407, 307, 91, 'A+', '2024-07-04'),
(408, 308, 82, 'A-', '2024-07-04');


-- Student total mark in each courses
-- SELECT
-- students.student_id,
-- students.name,
-- cources.name,
-- SUM(results.mark)
-- FROM students INNER JOIN results INNER JOIN cources
-- ON students.student_id = results.stud_id
-- AND cources.course_id = results.cour_id
-- GROUP BY students.name
-- ORDER BY students.student_id;



-- Departments[department_id(PK),name]
--Teachers[teacher_id(PK),name,designation,email,phone,date_of_joining,dept_id(FK->department_id)]
-- Cources[course_id(PK),name,credits,semester,teach_id(FK->teacher_id)]
-- Students[student_id(PK),name,phone,email,enrollment_date,dept_id(FK->department_id)]
-- students_couces[stud_id(FK->student_id),cours_id(FK->course_id)]
-- attendances[attendance_id(PK),date,status(P/A),stud_id(FK->student_id),cours_id(FK->course_id)]
-- Results[stud_id(FK->student_id),cour_id(FK->course_id),mark,grade,exam_date]

-- Final Result

-- SELECT
-- students.student_id as ID,
-- students.name as Student,
-- departments.name as Student_Dept,
-- cources.semester as Semester,
-- cources.name as Course,
-- attendances.status as Attendance,
-- attendances.date as Date,
-- results.mark as Mark,
-- results.grade as Grade,
-- teachers.name as Course_Teacher


-- FROM
-- cources INNER JOIN students_couces INNER JOIN results INNER JOIN attendances
-- INNER JOIN students INNER JOIN departments INNER JOIN teachers

-- ON students.student_id = students_couces.stud_id
-- AND cources.course_id = students_couces.cours_id
-- AND students.dept_id = departments.department_id
-- AND students.student_id = results.stud_id
-- AND teachers.teacher_id = cources.teach_id
-- AND students.student_id = attendances.stud_id

-- GROUP BY students.name
-- ORDER BY students.student_id;
