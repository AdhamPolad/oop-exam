CREATE TABLE software (
    id INT AUTO-INCREMENT PRIMARY KEY,
    title TEXT,
    content TEXT,
    lisence_id INT,
    FOREIGN KEY (lisence_id) REFERENCES lisence(id) ON DELETE CASCADE,
)

CREATE TABLE lisence(
    id INT AUTO-INCREMENT PRIMARY KEY,
    LISENCE_KEY INT,
    description TEXT,
    price decimal(10,2), 
    expirity_date DATE
)

CREATE TABLE users(
    id INT,
    username VARCHAR(100),
    email VARCHAR(100),
)


CREATE TABLE software_users(
    id INT AUTO-INCREMENT PRIMARY KEY,
    software_id INT,
    lisence_id INT,
    user_id INT,
    FOREIGN KEY (software_id) REFERENCES software(id) ON DELETE CASCADE,
    FOREIGN KEY (lisence_id) REFERENCES lisence(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id), REFERENCES users(id) ON DELETE CASCADE
)