class teachers:
    def __init__(self, name, surname,class_id = None):
        self.name = name
        self.surname = surname
        self.class_id = class_id
    
    def get_name(self):
        return f"teacher is {self.name} {self.surname}"

class Students(teachers):
    def __init__(self):
        super().__init__(name, surname, class_id)
        self.classes = classes
    
    def class_enroll:
        return f"{self.name} {self.surname} is enrolled in class {self.class_id}"
    

class classes:
    def __init__(self, title ):
        self.title = title
        self.students = students
        self.teachers = teachers
    def add_student(self, student):
        if student not in self.students:
            self.students.append(student)
    def add_teacher(self, teacher):
        if teacher not in self.teachers:
            self.teachers.append(teacher)
    def get_title(self):
        return f'{self.title}'

