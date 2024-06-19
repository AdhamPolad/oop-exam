CREATE TABLE users(
    id INT AUTO-INCREMENT PRIMARY KEY,
    username VARCHAR(30),
    email VARCHAR(50),
)

CREATE TABLE posts(
    id INT AUTO-INCREMENT PRIMARY KEY,
    user_id INT,
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
)

CREATE TABLE comments(
    id INT AUTO-INCREMENT PRIMARY KEY,
    post_id INT,
    user_id INT,
    content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (post_id) REFERENCES posts(id) on DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) on DELETE CASCADE
)


CREATE TABLE reactions(
    id INT AUTO-INCREMENT PRIMARY KEY,
    user_id INT,
    post_id INT,
    reaction_type VARCHAR(10),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) on DELETE CASCADE,   
    FOREIGN KEY (post_id) REFERENCES posts(id) on DELETE CASCADE
)
