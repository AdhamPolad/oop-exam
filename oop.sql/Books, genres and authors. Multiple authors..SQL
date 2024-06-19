CREATE TABLE books(
    id INT AUTO-INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    genre_id INT,
    book_text TEXT,
    published_date DATE,
    FOREIGN KEY (genre_id) REFERENCES genres(id)

)

CREATE TABLE genres(
    id INT AUTO-INCREMENT PRIMARY KEY,
    name VARCHAR(30)
)

CREATE TABLE authors(
    id INT AUTO-INCREMENT,
    name VARCHAR(30)
)


CREATE TABLE book_authors(
    book_id INT,
    authors_id INT,
    FOREIGN KEY (book_id) REFERENCES books(id) ON DELETE CASCADE
    FOREIGN KEY (authors_id) REFERENCES authors(id) ON DELETE CASCADE
)


-- Insert genres
INSERT INTO genres (name) VALUES ('Science Fiction');
INSERT INTO genres (name) VALUES ('Fantasy');
INSERT INTO genres (name) VALUES ('Non-Fiction');

-- Insert authors
INSERT INTO authors (name) VALUES ('Isaac Asimov');
INSERT INTO authors (name) VALUES ('Arthur C. Clarke');
INSERT INTO authors (name) VALUES ('J.K. Rowling');

-- Insert books
INSERT INTO books (title, published_date, genre_id) VALUES ('Foundation', '1951-06-01', 1);
INSERT INTO books (title, published_date, genre_id) VALUES ('2001: A Space Odyssey', '1968-07-01', 1);
INSERT INTO books (title, published_date, genre_id) VALUES ('Harry Potter and the Sorcerer''s Stone', '1997-06-26', 2);
