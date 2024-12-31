CREATE DATABASE quiz_app;

USE quiz_app;

-- User[id(PK), name, email, password, role]
CREATE TABLE users(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    password VARCHAR(50),
    role VARCHAR(20)
);

-- Quizzes[id(PK), title, teacher_id(FK), created_at]
CREATE TABLE quizzes(
    id INT PRIMARY KEY,
    title VARCHAR(100),
    teacher_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Foreign Key (teacher_id) REFERENCES users(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);


-- Questions[id(PK),quizze_id(FK),content]
CREATE TABLE questions(
    id INT PRIMARY KEY,
    quizze_id INT,
    content TEXT,
    Foreign Key (quizze_id) REFERENCES quizzes(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

-- Options[id(PK),question_id(FK),content,is_correct]
CREATE TABLE options(
    id INT PRIMARY KEY,
    question_id INT,
    content TEXT,
    is_correct BOOLEAN,
    Foreign Key (question_id) REFERENCES questions(id)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
);

-- Student Responses[id(PK),quizze_id(FK),student_id(FK),question_id(FK),option_id(FK)]
CREATE TABLE student_responses (
    id INT PRIMARY KEY,
    quizze_id INT,
    student_id INT,
    question_id INT,
    option_id INT,
    FOREIGN KEY (quizze_id) REFERENCES quizzes(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    FOREIGN KEY (student_id) REFERENCES users(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    FOREIGN KEY (question_id) REFERENCES questions(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    FOREIGN KEY (option_id) REFERENCES options(id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

