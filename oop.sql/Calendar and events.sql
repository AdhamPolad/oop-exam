CREATE TABLE users(
    id INT AUTO-INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
)

CREATE TABLE calendar(
    id INT AUTO-INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    created_at DATE,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
)

CREATE TABLE events(
    id INT,
    name VARCHAR(30),
    calendar_id INT,
    description TEXT,
    start_time DATE,
    end_time DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (calendar_id) REFERENCES calendar(id) ON DELETE CASCADE
)

CREATE TABLE event_participants(
    user_id INT,
    event_id INT,
    PRIMARY KEY(user_id, event_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (event_id) REFERENCES events(id) ON DELETE CASCADE
)

