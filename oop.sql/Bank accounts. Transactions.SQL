CREATE TABLE user(
    id INT AUTO-INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    surname VARCHAR(255),
    father_name VARCHAR(255),
    
)


CREATE TABLE acounts(
    id INT AUTO-INCREMENT PRIMARY KEY,
    user-id INT,
    card-kod INT,
    acount_type VARCHAR(255),
    balance DECIMAL(10,2)
    acount_number VARCHAR(20) NOT NULL UNIQUE,
    FOREIGN KEY user_id REFERENCES users(id) ON DELETE CASCADE
)

Create TABLE cards(
    id INT AUTO-INCREMENT PRIMARY KEY,
    card_id INT,
    cart-code INT,
    user_id INT,
    start_at TIMESTAMP,
    end_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
    FOREIGN KEY (card_code) REFERENCES acounts(card_code) on DELETE CASCADE
)

CREATE TABLE transactions(
    card_id INT,
    user_id INT,
    amount DECIMAL(10,2),
    transaction_at TIMESTAMP,
    FOREIGN KEY (card_id) REFERENCES cards(id)
    FOREIGN KEY (user_id) REFERENCES users(id)
)
