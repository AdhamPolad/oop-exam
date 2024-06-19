CREATE TABLE quizes(
    id INT AUTO-INCREMENTS PRIMARY KEY,
    title VARCHAR(255) not NULL,
    quiz_text TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

)

CREATE TABLE questions(
    id INT AUTO_INCREMENT PRIMARY KEY,
    quiz_id INT,
    question_text TEXT,
    question_type VARCHAR(255),
    FOREIGN KEY (quiz_id) REFERENCES quizes(id) ON DELETE CASCADE

)

CREATE TABLE choise(
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_id INT,
    is_correct BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (question_id) REFERENCES questions(id) ON DELETE CASCADE
)

CREATE TABLE responses(
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    question_id INT,
    choise_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (question_id) REFERENCES questions(id) ON DELETE CASCADE,
    FOREIGN KEY (choise_id) REFERENCES choise(id) ON DELETE CASCADE
)

CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE NOT NULL,
)