CREATE TABLE hotel(
    id INT,
    name VARCHAR(100),
    address VARCHAR(100),
    hotel_type VARCHAR(100)
)

CREATE TABLE rooms(
    id INT AUTO-INCREMENT PRIMARY KEY,
    hotel_id INT,
    room_count INT,
    price DECIMAL(10,2)
    FOREIGN KEY (hotel_id) REFERENCES hotel(id) on DELETE CASCADE
)

CREATE TABLE bookings(
    id INT AUTO-INCREMENT PRIMARY KEY,
    guest_name VARCHAR(100),
    room_id  INT,
    total_price DECIMAL(10,2),
    chek_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    FOREIGN KEY(room_id) REFERENCES rooms(id) ON DELETE CASCADE
)

