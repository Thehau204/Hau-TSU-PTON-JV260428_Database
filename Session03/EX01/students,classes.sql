CREATE TABLE classes (
    ClassID VARCHAR(10) PRIMARY KEY,
    ClassName VARCHAR(100) NOT NULL
);
CREATE TABLE students2 (
    StudentID VARCHAR(10) PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    BirthDate DATE,
    Gender ENUM('Nam', 'Nu'),
    ClassID VARCHAR(10),
    FOREIGN KEY (ClassID) REFERENCES classes(ClassID)
);

