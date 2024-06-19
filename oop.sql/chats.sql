CREATE TABLE users(
    id INT AUTO-INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE
)

CREATE TABLE chats(
    id INT AUTO-INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    is_group BOOLEAN NOT NULL DEFAULT FALSE
)

CREATE TABLE chat_members(
    chat_id INT,
    user_id INT,
    joined_at TIMESTAMP DEFAULT CURRENT_STAMP,
    role TEXT,
    PRIMARY KEY(chat_id, user_id),
    FOREIGN KEY(chat_id) REFERENCES chats(id) ON DELETE CASCADE,
    FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE
)

CREATE TABLE messages(
    id INT AUTO_INCREMENT,
    chat_id INT,
    user_id INT,
    text TEXT not NULL,
    timestamp TIMESTAMP default CURRENT_STAMP,
    FOREIGN KEY (chat_id) REFERENCES chats(id) ON DELETE CASCADE
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
)


INSERT INTO users (username, email) VALUES ('alice', 'alice@example.com');
INSERT INTO users (username, email) VALUES ('bob', 'bob@example.com');
INSERT INTO users (username, email) VALUES ('carol', 'carol@example.com');


-- Insert an individual chat
INSERT INTO chats (is_group) VALUES (FALSE);

-- Insert a group chat
INSERT INTO chats (name, is_group) VALUES ('Family Group', TRUE);

INSERT INTO chat_members (chat_id, user_id) VALUES (@individual_chat_id, 1); -- Alice
INSERT INTO chat_members (chat_id, user_id) VALUES (@individual_chat_id, 2); -- Bob

-- Insert members into the group chat
INSERT INTO chat_members (chat_id, user_id, role) VALUES (@group_chat_id, 1, 'admin'); -- Alice
INSERT INTO chat_members (chat_id, user_id, role) VALUES (@group_chat_id, 2, 'member'); -- Bob
INSERT INTO chat_members (chat_id, user_id, role) VALUES (@group_chat_id, 3, 'member'); -- Carol

INSERT INTO messages (chat_id, user_id, content) VALUES (@individual_chat_id, 1, 'Hello Bob!');
INSERT INTO messages (chat_id, user_id, content) VALUES (@individual_chat_id, 2, 'Hi Alice!');

-- Insert messages into the group chat
INSERT INTO messages (chat_id, user_id, content) VALUES (@group_chat_id, 1, 'Welcome to the family group!');
INSERT INTO messages (chat_id, user_id, content) VALUES (@group_chat_id, 3, 'Hello everyone!');