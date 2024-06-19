CREATE TABLE teachers(
    id INT AUTO-INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    surname VARCHAR(100),
    classes_id INT,
    FOREIGN KEY (classes_id) REFERENCES classes(id)
)

CREATE TABLE students(
    id INT AUTO-INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    surname VARCHAR(100),
    classes_id INT,
    FOREIGN KEY (classes_id) REFERENCES classes(id)
)
CREATE TABLE classes(
    id INT AUTO-INCREMENT,
    title TEXT UNIQUE,
    PRIMARY KEY(id),
)

CREATE TABLE class_enrollments(
    id INT AUTO-INCREMENT PRIMARY KEY,
    classes_id INT,
    students_id INT,
    FOREIGN KEY (students_id) REFERENCES students(id) ON DELETE CASCADE
    FOREIGN KEY (classes_id) REFERENCES classes(id) ON DELETE CASCADE
)


CREATE TABLE teachers_classes(
    id INT AUTO-INCREMENT PRIMARY KEY,
    teachers_id INT,
    classes_id INT,
    FOREIGN KEY (teachers_id) REFERENCES teachers(id) ON DELETE CASCADE,
    FOREIGN KEY ( classes_id) REFERENCES classes(id) ON DELETE CASCADE
)