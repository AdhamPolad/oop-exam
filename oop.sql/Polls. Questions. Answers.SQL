CREATE TABLE polls(
    id INT AUTO-INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE questions(
    id INT AUTO-INCREMENT PRIMARY KEY,
    poll_id INT,
    content TEXT,
    question_type VARCHAR(100),
    FOREIGN KEY (poll_id) REFERENCES polls(id) ON DELETE CASCADE
)

CREATE TABLE answers(
    id INT AUTO-INCREMENT PRIMARY KEY,
    question_id INT,
    content TEXT,
    is_correct BOOLEAN DEFAULT NOT NULL,
    FOREIGN KEY (question_id) REFERENCES questions(id) ON DELETE CASCADE
)

CREATE TABLE user_answer(
    id INT AUTO-INCREMENT PRIMARY KEY,
    question_id INT,
    answer_id INT,
    user_id INT,
    FOREIGN KEY (question_id) REFERENCES questions(id) on DELETE CASCADE
)