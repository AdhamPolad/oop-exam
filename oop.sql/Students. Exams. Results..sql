CREATE TABLE students(
    id INT AUTO-INCREMENT NOT NULL,
    name VARCHAR(100),
    surname VARCHAR(100),
    father_name VARCHAR(100),
    email VARCHAR(100)
)

CREATE TABLE exams(
    id INT AUTO-INCREMENT PRIMARY KEY,
    title TEXT,
    subjet_id INT,
    exam_date DATE
    FOREIGN KEY (subject_id) REFERENCES subject(id) ON DELETE CASCADE
)

CREATE TABLE subject(
id INT AUTO-INCREMENT PRIMARY KEY,
name VARCHAR(100)
)


CREATE TABLE results(
    id INT AUTO-INCREMENT PRIMARY KEY,
    student_id INT,
    exam_id INT,
    mark INT
    FOREIGN KEY (student_id) REFERENCES students(id) on DELETE CASCADE,
    FOREIGN KEY (exam_id) REFERENCES exams(id) ON DELETE CASCADE
)

INSERT INTO students (name, surname, father_name,email) VALUES ("ADHAM", "POLADZADEH", "FUAD", "EDHEMPOLAD")

INSERT INTO subject (name) VALUES ("OOP")

